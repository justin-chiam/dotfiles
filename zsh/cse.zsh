# Written for MacOS

: "${CSE_ZID:=z5555555}"
: "${CSE_MOUNT:=$HOME/cse}"

__cse_host() {
  local login_suffix="${CSE_ZID[-1]}"
  printf '%s@login%s.cse.unsw.edu.au\n' "$CSE_ZID" "$login_suffix"
}

__cse_relative_path() {
  if [[ "$PWD" == "$CSE_MOUNT" ]]; then
    printf '.\n'
  elif [[ "$PWD" == "$CSE_MOUNT"/* ]]; then
    printf './%s\n' "${PWD#$CSE_MOUNT/}"
  fi
}

csemount() {
  mkdir -p -- "$CSE_MOUNT"
  sshfs -o idmap=user,follow_symlinks,noappledouble,noapplexattr,defer_permissions,local,volname=cse -C "$(__cse_host):" "$CSE_MOUNT"
}

cseumount() {
  local was_in_mount=false

  if [[ "$PWD" == "$CSE_MOUNT" || "$PWD" == "$CSE_MOUNT"/* ]]; then
    was_in_mount=true
    cd -- "$HOME" || return
  fi

  command umount -f -- "$CSE_MOUNT" || diskutil unmount force "$CSE_MOUNT"
  local unmount_status=$?

  if [[ $unmount_status -eq 0 && "$was_in_mount" == true ]]; then
    cd -- "$CSE_MOUNT" || return
  fi

  return "$unmount_status"
}

cse() {
  local host="$(__cse_host)"
  local remote_dir="$(__cse_relative_path)"

  if [[ $# -eq 0 ]]; then
    if [[ -z "$remote_dir" ]]; then
      ssh "$host"
    else
      ssh -t "$host" "cd ${(q)remote_dir}; exec \$SHELL -l"
    fi
  else
    if [[ -z "$remote_dir" ]]; then
      ssh -qt "$host" "$@"
    else
      local escaped_args="${(j: :)${(@q)argv}}"
      ssh -qt "$host" "cd ${(q)remote_dir} && $escaped_args"
    fi
  fi
}
