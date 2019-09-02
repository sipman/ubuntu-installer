COMPLETED=()
WD=$(pwd)

not_in_array() {
    for INST in "${COMPLETED[@]}"; do
        if [[ $INST = "$1" ]]; then
            return 1
        fi
    done
    return 0
}

require() {
    if not_in_array $1; then
        echo "$1: install required"
        source $1
    fi
    echo "$1: installed"
    COMPLETED+=($1)
}

inst_apt() {
    sudo apt-get install -y $(grep -vE "^\s*#" deps/apt.txt  | tr "\n" " ")
}

inst_snap() {
    sudo snap install $(grep -vE "^\s*#" deps/snap.txt  | tr "\n" " ")
}

inst_scripts() {
    cd scripts
    for filename in ./*.sh; do
        base="$(basename $filename)"
        if not_in_array $base; then
            echo "$base: install required"
            cd $WD
            cd scripts
            source $filename
            cd $WD
        fi
    done
    cd ..
}

echo "  _____           _        _ _ "
echo " |_   _|         | |      | | |"
echo "   | |  _ __  ___| |_ __ _| | |"
echo "   | | | '_ \/ __| __/ _\` | | |"
echo "  _| |_| | | \__ \ || (_| | | |"
echo " |_____|_| |_|___/\__\__,_|_|_|"
echo ""
echo "   Installs your dependencies"
echo ""
echo " What to run?:"
echo "   [0] everything"
echo "   [1] apt dependencies"
echo "   [2] snap dependencies"
echo "   [3] scripts"
echo "   [4] bashrc"
echo "   [5] specific script"
echo ""
printf "Enter number: "
read scale
if ! [ "$scale" -eq "$scale" ] 2> /dev/null
then
    echo "Sorry integers only"
    exit
fi

if [[ $scale = 0 ]]; then
    inst_apt
    inst_snap
    inst_scripts
elif [[ $scale = 1 ]]; then
    inst_apt
elif [[ $scale = 2 ]]; then
    inst_snap
elif [[ $scale = 3 ]]; then
    inst_scripts
elif [[ $scale = 4 ]]; then
    echo "not ready yet"
elif [[ $scale = 5 ]]; then
    printf "Enter script name: "
    cd scripts
    read script
    source $script
else
    echo "wtf?"
fi
