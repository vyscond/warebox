```
      +------------------------------- +
     /                                /|
    /                                / |
   /                                /  |
  /                                /   |
 /                                /    +
/                                /   / |
+-------------------------------+   /  +
|                               |  /   /
|           Warebox             | /   /
|                               |/   /
+-------------|x|---------------+   /
|                               |  /
|                               | /
|                               |/
+-------------------------------+

```
# Warebox

Simple alias to humans manage their virtualbox. It aims to provide the same workflow from [vagrant](http://www.vagrantup.com) but without cloud-based storage or ruby dependecy.

# Installation
    
    git clone https://github.com/vyscond/warebox.git
    cd warebox
    sudo make install

# Usage

create clone vm

    warebox new [new_vm_name] [base_existing_vm_name]

start vm

    warebox up [vm_name]

shutdown vm

    warebox down [vm_name]

connect ssh

    warebox ssh [vm_name]

check config about ssh

    warebox config ssh [vbox_name]
