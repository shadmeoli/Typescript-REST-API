R='\033[0;31m'
G='\033[0;32m'
Y='\033[1;32m'
B='\033[0;34m'

eslint --ext .js,.ts, src
eslint "src/**/*.{js,ts}"

echo -e "${B} Running possible fixes ++++++++++++ ${B}"
eslint --fix
echo -e "${G} Github staging complete +++++++++ ${G}" 

# ? asking fot automatic push to github after linting
read -p "Would you like to also push the code to github?(Y/n)" yesno
case $yesno in
    [Yy]* ) 
        git init
        git add --all
        read -p " Enter commit name: " commit_name
        git commit -m "${commit_name}"
        read -p "Enter branch name: " branch_name
        git branch -M "${branch_name}"
        git push origin "${branch_name}}"
    ;;
    [Nn]* ) 
        echo "You answered no, exiting"
        exit
    ;;
    * ) echo "Answer either yes or no!";;
esac

echo -e "${B} Updates pushed ++++++++++++ ${B}"