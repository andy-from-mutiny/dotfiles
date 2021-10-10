source "$(dirname -- $(dirname -- $0))/lib/color-printer.bash"

usage="Usage: nd nuke <branch> [--help print this message]
  Delete the local and remote copy of the given git branch"
usage() { nd::echo_yellow "${usage}" 2>&1; }

main() {
  local branch
  case "${1:---help}" in
    --help) usage; exit ;;
    *) branch="$1" ;;
  esac
  if [[ -z "${branch}" ]]; then
    usage
    exit 1
  fi
  git branch -D "${branch}" > /dev/null
  git push origin ":${branch}" > /dev/null
}

main "$@"

