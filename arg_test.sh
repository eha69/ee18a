#/bin/bash
usage() {                                      # Function: Print a help message.
  echo "Usage: $0 [ -n NAME ] [ -t TIMES ]" 1>&2
}
exit_abnormal() {                              # Function: Exit with error.
  usage
  exit 1
}
name_echo() {
	echo "$NAME"
}
times_echo() {
	echo "$TIMES"
}
while getopts ":n:t:" options; do              # Loop: Get the next option;
                                               # use silent error checking;
                                               # options n and t take arguments.
  case "${options}" in                         #
    n)                                         # If the option is n,
      NAME=${OPTARG}                           # set $NAME to specified value.
      name_echo
      ;;
    t)
      TIMES=${OPTARG}                          # Set $TIMES to specified value.
      times_echo
      ;;
*)
	 exit_abnormal                            # Exit abnormally.
      ;;
esac
done

