# ASCII Art
ascii_art="
   _____           _       _  __   __    _____ _             _ _           
  / ____|         (_)     | | \ \ / /   / ____| |           | (_)          
 | (___   ___ _ __ _ _ __ | |_ \ V /   | (___ | |_ _   _  __| |_  ___  ___ 
  \___ \ / __| '__| | '_ \| __| > <     \___ \| __| | | |/ _` | |/ _ \/ __|
  ____) | (__| |  | | |_) | |_ / . \    ____) | |_| |_| | (_| | | (_) \__ \
 |_____/ \___|_|  |_| .__/ \__/_/ \_\  |_____/ \__|\__,_|\__,_|_|\___/|___/
                    | |                                                    
                    |_|                                                                                    
"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

# Clear the screen
clear
# Check if the script is run as root
if [ "$EUID" -ne 0 ]; then
  echo -e "${RED}Please run this script as root.${NC}"
  exit 1
fi

echo -e "${CYAN}$ascii_art${NC}"


echo "* Installing Dependencies"

# Update package list and install dependencies
sudo apt update
sudo apt install -y curl software-properties-common
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install nodejs -y 
sudo apt install git -y

echo_message "* Installed Dependencies"

echo "* Command made by ScriptX Studios"

# Create directory, clone repository, and install files

git clone https://github.com/dragonlabsdev/v3panel && mv v3panel panel && cd panel && apt install zip -y && unzip panel.zip && cd panel && npm install && npm run seed && npm run createUser && npm i -g pm2 

echo "* Installed Files"

echo "* Panel has been successfully installed!"
