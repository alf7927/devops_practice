 #!/bin/sh
 set -e
 set -x
 export playbook=${1:-set_play_book_name}
 SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
 ansible-playbook -vv -i $SCRIPT_DIR/../inventory/ec2.py --user=ubuntu --private-key=$HOME/.ssh/DEVOPS_Practiace.pem $playbook