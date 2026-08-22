# For COMP1521 at UNSW

1521() {
  case "$1" in
    mipsy)
      shift
      "$HOME/mipsy/target/debug/mipsy" "$@"
      ;;
    *)
      print -u2 'Usage: 1521 <command> [args...]'
      return 1
      ;;
  esac
}