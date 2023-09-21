#!/bin/bash 


read -p "Enter 'apply' or 'destroy': " action

case "$action" in
    apply)
        printf "Input : %s \n " $action
        terraform apply -auto-approve
        ;;
    destroy)
        printf "Input : %s \n " $action
        terraform destroy -auto-approve
        ;;
    *)
        echo "Invalid action. Please enter 'apply' or 'destroy'."
        ;;
esac