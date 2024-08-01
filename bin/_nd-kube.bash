source "$(dirname -- $(dirname -- $0))/lib/color-printer.bash"

usage="Usage: nd kube <command> [...args]"
print_usage() {
  nd::echo_yellow "${usage}"
  nd::echo_yellow "Commands:"
  nd::echo_purple "  nd kube help \tprint this message"
  nd::echo_purple "  nd kube pod  \talias for kubectl get pods <> --namespace=mutiny"
  nd::echo_purple "  nd kube shell\talias for kubectl exec --stdin --tty <> --namespace mutiny -- bin/entrypoint.sh rails_c"
  nd::echo_purple "  nd kube top  \talias for kubectl top pod <> --console --namespace mutiny"
  nd::echo_purple "  nd kube log  \talias for kubectl logs <> -f --namespace mutiny"
}

main() {
  local cmd
  case "${1:-help}" in
    help) print_usage;;
    pod)
      shift
      kubectl get pods $@ --namespace mutiny
      ;;
    shell)
      shift
      kubectl exec --stdin --tty $@ --namespace mutiny -- bin/entrypoint.sh rails_c
      ;;
    top)
      shift
      kubectl top pod $@ --containers --namespace mutiny
      ;;
    log)
      shift
      kubectl logs $@ -f --namespace mutiny
      ;;
    *)
      nd::echo_error "ERROR: unknown command \`$1'"
      ;;
  esac
}

main "$@"

