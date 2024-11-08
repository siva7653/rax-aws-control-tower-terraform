----------------------
## Commands:
---------------------------

## create_Config rules (for create new custom config rules)
## name of workflow ---create_Custom_Rule.yaml
    •	Ensure that the AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, and AWS_SESSION_TOKEN are properly configured in the GitHub repository’s secrets.
    •	The policy_name variable (-var="policy_name=rax_varaible_name") can be customized based on your requirements.
    •	The terraform apply and terraform destroy commands are commented out for safety.
    •	When you're ready to apply or destroy resources, remove the # at the beginning of those lines.

    -----Run from Local VScode commands--------------
    cd /root/create_Config
    terraform init
    terraform plan -state="./root/create_SCP/terraform.tfstate" -var="policy_name=rax_varaible_name"
    #terraform apply -auto-approve -state="./root/create_SCP/terraform.tfstate" -var="policy_name=rax_varaible_name"
    #terraform destroy -auto-approve -state="./root/create_SCP/terraform.tfstate"

## create_SCP (for create new custom scp's)
## name of workflow ---create_Custom_SCP.yaml
    •	Ensure that the AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, and AWS_SESSION_TOKEN are properly configured in the GitHub repository’s secrets.
    •	The policy_name variable (-var="policy_name=rax_varaible_name") can be customized based on your requirements.
    •	The terraform apply and terraform destroy commands are commented out for safety.
    •	When you're ready to apply or destroy resources, remove the # at the beginning of those lines.
    
    -----Run from Local VScode commands--------------
    cd /root/create_SCP
    terraform init
    terraform plan -state="./root/create_Config/terraform.tfstate" -var="policy_name=rax_varaible_name"
    #terraform apply -auto-approve -state="./root/create_Config/terraform.tfstate" -var="rax_varaible_name"
    #terraform destroy -auto-approve -state="./root/create_Config/terraform.tfstate"
    
## attach scp's in Rax-Mainline Environment
## name of workflow ---attach_SCP_to_OU.yaml
    •	Ensure that the AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, and AWS_SESSION_TOKEN are properly configured in the GitHub repository’s secrets.
    •	The policy_name variable (-var="policy_name=rax_varaible_name") can be customized based on your requirements.
    •	The terraform apply and terraform destroy commands are commented out for safety.
    •	When you're ready to apply or destroy resources, remove the # at the beginning of those lines.
    •   Review 'variables.tfvars' file for the following variables:
        #- control_names, organizational_unit_ids (e.g., ["test-ou-aid12v"]),
        #- policy_ids, and target_id.
    •   Depending on the OU you want to manage, uncomment the respective section. 
            For example, if you want to apply controls to Rax-Mainline, uncomment the lines under Attach Controls and SCP to Rax-Mainline OU.
        
    -----Run from Local VScode commands--------------
    cd /root/Rax-Mainline
    terraform plan -var-file="./root/Rax-Mainline/variables.tfvars" -state="./Rax-Mainline/terraform.tfstate"
    #terraform apply -var-file="./root/Rax-Mainline/variables.tfvars" -state="./root/Rax-Mainline/terraform.tfstate"
    #terraform destroy -var-file="./root/Rax-Mainline/variables.tfvars" -state="./root/Rax-Mainline/terraform.tfstate"

## attach scp's in Rax-POC Environment
## name of workflow ---attach_SCP_to_OU.yaml
    •	Ensure that the AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, and AWS_SESSION_TOKEN are properly configured in the GitHub repository’s secrets.
    •	The policy_name variable (-var="policy_name=rax_varaible_name") can be customized based on your requirements.
    •	The terraform apply and terraform destroy commands are commented out for safety.
    •	When you're ready to apply or destroy resources, remove the # at the beginning of those lines.
    •   Review 'variables.tfvars' file for the following variables:
        #- control_names, organizational_unit_ids (e.g., ["test-ou-aid12v"]),
        #- policy_ids, and target_id.
    •   Depending on the OU you want to manage, uncomment the respective section. 
            For example, if you want to apply controls to Rax-POC, uncomment the lines under Attach Controls and SCP to Rax-POC OU.
        
    -----Run from Local VScode commands--------------

    cd /root/Rax-POC
    terraform plan -var-file="./root/Rax-POC/variables.tfvars" -state="./root/Rax-POC/terraform.tfstate"
    terraform apply -var-file="./root/Rax-POC/variables.tfvars" -state="./root/Rax-POC/terraform.tfstate"
    terraform destroy -var-file="./root/Rax-POC/variables.tfvars" -state="./root/Rax-POC/terraform.tfstate"

## attach scp's in Rax-Sandbox Environment
## name of workflow ---attach_SCP_to_OU.yaml
    •	Ensure that the AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, and AWS_SESSION_TOKEN are properly configured in the GitHub repository’s secrets.
    •	The policy_name variable (-var="policy_name=rax_varaible_name") can be customized based on your requirements.
    •	The terraform apply and terraform destroy commands are commented out for safety.
    •	When you're ready to apply or destroy resources, remove the # at the beginning of those lines.
    •   Review 'variables.tfvars' file for the following variables:
        #- control_names, organizational_unit_ids (e.g., ["test-ou-aid12v"]),
        #- policy_ids, and target_id.
    •   Depending on the OU you want to manage, uncomment the respective section. 
            For example, if you want to apply controls to Rax-Sandbox, uncomment the lines under Attach Controls and SCP to Rax-Sandbox OU.
        
    -----Run from Local VScode commands--------------

    cd /root/Rax-Sandbox
    terraform plan -var-file="./root/Rax-Sandbox/variables.tfvars" -state="./root/Rax-Sandbox/terraform.tfstate"
    terraform apply -var-file="./root/Rax-Sandbox/variables.tfvars" -state="./root/Rax-Sandbox/terraform.tfstate"
    terraform destroy -var-file="./root/Rax-Sandbox/variables.tfvars" -state="./root/Rax-Sandbox/terraform.tfstate"

## attach scp's in Security Environment
## name of workflow ---attach_SCP_to_OU.yaml
    •	Ensure that the AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, and AWS_SESSION_TOKEN are properly configured in the GitHub repository’s secrets.
    •	The policy_name variable (-var="policy_name=rax_varaible_name") can be customized based on your requirements.
    •	The terraform apply and terraform destroy commands are commented out for safety.
    •	When you're ready to apply or destroy resources, remove the # at the beginning of those lines.
    •   Review 'variables.tfvars' file for the following variables:
        #- control_names, organizational_unit_ids (e.g., ["test-ou-aid12v"]),
        #- policy_ids, and target_id.
    •   Depending on the OU you want to manage, uncomment the respective section. 
            For example, if you want to apply controls to Security, uncomment the lines under Attach Controls and SCP to Security OU.
        
    -----Run from Local VScode commands--------------

    cd /root
    terraform plan -var-file="./root/Security/variables.tfvars" -state="./root/Security/terraform.tfstate"
    terraform apply -var-file="./root/Security/variables.tfvars" -state="./root/Security/terraform.tfstate"
    terraform destroy -var-file="./root/Security/variables.tfvars" -state="./root/Security/terraform.tfstate"

--------------------------------
## List of OU's
--------------------------------
## Existing OU's
![alt text](<List of Existing OU.png>)
## New/ Proposed OU's
![alt text](<List of New OU.png>)

## List of controls in controltower
    https://docs.aws.amazon.com/controltower/latest/controlreference/control-metadata-tables.html
    https://docs.aws.amazon.com/controltower/latest/controlreference/all-global-identifiers.html

