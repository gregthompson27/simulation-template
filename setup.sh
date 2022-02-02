
# change all instances of 'taco-shop' in this file to whatever the name of the new repo is
if ! test -e simulations; then
    mkdir simulations
fi

printf "adding this new project to your simulations folder"

if ! test -e taco-shop; then
    printf "\nFAILURE: The project could not be accessed on GitHub. Please run the script again."
else
    mv ./taco-shop ./simulations
    cd simulations/taco-shop
    rm -rf .git* .master
    rm -rf README.md
    cd ../..
fi