self_args () {
  declare -F | grep -Po ' fn_\K\w+'
}

fn_help () {
  local a=$(self_args)
  echo ${a/help/}
}

(( !$# )) && fn_help && exit 1
for arg
  do type "fn_$arg" &> /dev/null && "fn_$arg"
done
