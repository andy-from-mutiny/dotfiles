source "$(dirname -- $(dirname -- $0))/lib/color-printer.bash"

usage="Usage: nd sign <message> [--help print this message]
  Sign a message with the default gpg key"
usage() { nd::echo_yellow "${usage}" 2>&1 ; exit 1; }

main() {
  case "${1:---help}" in
    --help) usage ;;
    *) echo "$1" | gpg --sign --armor - ;;
  esac
}

main "$@"

