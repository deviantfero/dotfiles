#===  FUNCTION  ================================================================
#         NAME:  usage
#  DESCRIPTION:  Display usage information.
#===============================================================================
LOCAL_PATH=/usr/local/bin

function usage ()
{
  echo "Usage :  $0 [options] [--]

    Options:
    -h|help       Display this message
    -a|all        Install all scripts in current directory
    -s|single     Install single script"
}

# function install_all() {
# }

function install_single() {
  if [[ ! -z $file ]]; then
    echo $file;
    sudo chmod +x $file;
    while [[ -z $exec_name ]]; do
      echo -n "Name the shortcut: ";
      read exec_name;
    done
    sudo ln -s "$(realpath $file)" $LOCAL_PATH/$exec_name;
  fi
}

while getopts "s:ha" opt; do
  case $opt in
  a|all)
    install_all
    exit 0;
    ;;
  s|single)
    file=$OPTARG;
    install_single;
    exit 0;
    ;;
  h|help)  
    usage; 
    exit 0
    ;;
  *)  
    echo -e "\n  Option does not exist : $OPTARG\n"
    usage; 
    exit 1   
    ;;

  esac    # --- end of case ---
done
