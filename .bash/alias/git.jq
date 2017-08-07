{ name: (. | split(" ") | .[0] | split(".") | .[1]), value: (. | split(" ") | .[1:] | join(" ")) } |
select(.value | test("^!") | not) |
(
  "alias \"g\(.name)\"=\"git \(.value)\"",
  "__git_wrap_git_\(.name)()",
  "{",
  "  COMP_WORDS=(git \(.value) \"${COMP_WORDS[@]:1}\")",
  "  (( COMP_CWORD = ${#COMP_WORDS[@]} - 1 ))",
  "  COMP_LINE=\"git \(.value)${COMP_LINE:\(.name | length + 1)}\"",
  "  (( COMP_POINT = ${#COMP_LINE} ))",
  "  __git_func_wrap __git_main",
  "}",
  "complete -o bashdefault -o default -o nospace -F \"__git_wrap_git_\(.name)\" \"g\(.name)\""
)
