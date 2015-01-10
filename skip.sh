skip () {
  local usage="Usage: skip n-lines-to-skip [file ...]"
  if [ "$#" = 0 ]; then
    echo "$usage"
    return 1
  fi
  case "$1" in
    -h|--help) echo "$usage"; return;;
  esac

  local n_lines_to_skip="$1"
  local start_with_line=$((n_lines_to_skip+1))
  shift

  tail "+$start_with_line" "$@"
}
