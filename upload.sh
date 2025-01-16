#!/bin/bash
KEY_PATH="~/.ssh/id_rsa" 
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color
echo -e "${GREEN}Стартуем!${NC}"

excludes=(
  /.vscode
  /frizar_front/node_modules
  /frizar_front/.next
  /db_data
)

Path_From=./
Path_To=root@217.114.10.29:/root

exclude_str="rsync -avz -e 'ssh -i $KEY_PATH' $Path_From $Path_To"

for exclude in "${excludes[@]}"; do
    exclude_str+=" --exclude=$exclude "
done
eval $exclude_str

echo -e "${GREEN}Конец!${NC}"
