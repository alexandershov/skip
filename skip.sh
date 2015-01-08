skip () {
  if [ "$#" = 0 ]; then
    echo "Usage: skip n-lines-to-skip [file ...]"
    return 1
  fi
  local n_lines_to_skip="$1"
  local start_with_line=$((n_lines_to_skip+1))
  shift

  tail "+$start_with_line" "$@"
}
