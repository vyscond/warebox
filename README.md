# Warebox

## About

A small set of alias from VirtualBox commandlines 

## Installation
    
    git clone https://github.com/vyscond/warebox.git
    cd warebox
    sudo make install

## Usage

### Clone vm

    warebox new [new_vm_name] [base_existing_vm_name]

### Start/boot/run a  vm

    warebox [vm_name] boot

### Shutdown/poweroff vm

    warebox [vm_name] off

### Connect ssh

    warebox [vm_name] ssh [vm_user]

#### check config about ssh

    warebox [vbox_name] config ssh 
