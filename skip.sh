skip () {
  if [ "$#" = 0 ]; then
    echo "Usage: skip n-lines-to-skip [file ...]"
    return 1
  fi
  n_lines_to_skip="$1"
  n_lines_to_skip=$((n_lines_to_skip+1))
  shift

  tail "+$n_lines_to_skip" "$@"
}
