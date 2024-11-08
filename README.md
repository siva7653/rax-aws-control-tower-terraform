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
## name of workflow ---create_Cus.yaml
    •	Ensure that the AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, and AWS_SESSION_TOKEN are properly configured in the GitHub repository’s secrets.
    •	The policy_name variable (-var="policy_name=rax_varaible_name") can be customized based on your requirements.
    •	The terraform apply and terraform destroy commands are commented out for safety.
    •	When you're ready to apply or destroy resources, remove the # at the beginning of those lines.
    •   Review 'variables.tfvars' file for the following variables:
        #- control_names, organizational_unit_ids (e.g., ["test-ou-aid12v"]),
        #- policy_ids, and target_id.
        
    -----Run from Local VScode commands--------------
    cd /root/Rax-Mainline
    terraform plan -var-file="./root/Rax-Mainline/variables.tfvars" -state="./Rax-Mainline/terraform.tfstate"
    #terraform apply -var-file="./Rax-Mainline/variables.tfvars" -state="./Rax-Mainline/terraform.tfstate"
    #terraform destroy -var-file="./Rax-Mainline/variables.tfvars" -state="./Rax-Mainline/terraform.tfstate"

## attach scp's in Rax-POC Environment
cd /root
terraform plan -var-file="./Rax-POC/variables.tfvars" -state="./Rax-POC/terraform.tfstate"
terraform apply -var-file="./Rax-POC/variables.tfvars" -state="./Rax-POC/terraform.tfstate"
terraform destroy -var-file="./Rax-POC/variables.tfvars" -state="./Rax-POC/terraform.tfstate"

## attach scp's in Rax-Sandbox Environment
cd /root
terraform plan -var-file="./Rax-Sandbox/variables.tfvars" -state="./Rax-Sandbox/terraform.tfstate"
terraform apply -var-file="./Rax-Sandbox/variables.tfvars" -state="./Rax-Sandbox/terraform.tfstate"
terraform destroy -var-file="./Rax-Sandbox/variables.tfvars" -state="./Rax-Sandbox/terraform.tfstate"

## attach scp's in Security Environment
cd /root
terraform plan -var-file="./Security/variables.tfvars" -state="./Security/terraform.tfstate"
terraform apply -var-file="./Security/variables.tfvars" -state="./Security/terraform.tfstate"
terraform destroy -var-file="./Security/variables.tfvars" -state="./Security/terraform.tfstate"

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

Control tower controlls behaviour like:

     1. Proactive:   Proactive controls prevent non-compliant resources from being created or modified in the first place. (Blocks creation or modification of non-compliant resources)
        Behavior:    These controls ensure compliance by blocking non-compliant configurations upfront. (Before resource creation)
    
    2. Detective:   Detective controls monitor resources after they are created to detect policy violations or non-compliant configurations. (Monitors and alerts if non-compliance is detected)
        Behavior:    They alert you or generate reports if something goes wrong, but they do not stop the non-compliant action. (After resource creation)
    
    3. Preventive:  Preventive controls restrict certain actions from being performed by enforcing specific permissions or policies, thereby preventing violations of security or compliance rules.(Prevents users from performing specific actions or risky operations)
        Behavior:   Preventive controls impose restrictions that stop users from making changes that violate policies. (Action-level)
