function os_name(){
    os_name=$(uname -s)

    if [[ "$os_name" == "Linux" ]]; then
        echo "Linux"
    elif [[ "$os_name" == "Darwin" ]]; then
        echo "macOS"
    elif [[ "$os_name" == "FreeBSD" ]]; then
        echo "FreeBSD"
    else
        echo "unknown"
    fi
}