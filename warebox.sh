#vim: set syntax=sh

if [ "$1" == "new" ]; then
    if [ "$2" ]; then # new box name
        if [ "$3" ]; then # base box name

            echo 'create new vbox called ' $2 'based on' $3
            VBoxManage clonevm $3 --mode machine --name $2 --register

            echo 'ssh port forwarding set to 2200'
            VBoxManage modifyvm $2 --natpf1 "ssh,tcp,,2200,,22"

        else
            echo 'missing the name of the base virtualbox for cloning process'
        fi
    else
        echo 'missing the name of the new virtualbox'
    fi
fi

if [ "$1" ]; then # virtualbox name
    if [ "$2" == "boot" ]; then #
        VBoxManage startvm $1 --type headless
    elif [ "$2" == "off" ]; then
        VBoxManage controlvm $1 poweroff
    elif [ "$2" == "ssh" ]; then
        # - ssh user
        if [ "$3" ]; then
            port=$(VBoxManage showvminfo $1 --details | grep 'SSH\|ssh' | cut -d ',' -f 4 | cut -d '=' -f 2 | sed 's/\ //')
            if [ -z "$port" ]; then
                port=2200
            echo "[warebox] trying accessing $1 machine trought $3@127.0.0.1:$port"
            ssh $3@127.0.0.1 -p $port
        else
            echo '[warebox] missing ssh user'
        fi
    elif [ "$2" == "config" ]; then
        if [ "$3" == "ssh" ]; then
            VBoxManage showvminfo $1 --details | grep 'SSH\|ssh' | cut -d ' ' -f 6- | sed 's/ \= /\=/g'
        else
            echo 'unknow configuration name :('
            VBoxManage showvminfo $1 --details
        fi
    fi
fi
exit 0
