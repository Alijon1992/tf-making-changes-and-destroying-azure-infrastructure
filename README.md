Hello dear friends!

Note: You can find some raw materials in "master" branch.

## In this session, we will make a change to our configuration and then validate and apply the change.
   We'll also do some cleanup to avoid extra charges by running a destroy command.
   
  # It is definitely easier than manually making changes or deleting all the resources we had deployed. This truly is a time saver and really shows how vital a tool Terraform is when managing infrastructure.

The things you'll need for this demo are as follows:

1) You'll need to have Terraform CLI installed.

2) You'll need to have the Azure CLI installed.

3) You'll need to have the main.tf file, which you will make change and then redeploy. 

4) And finally, you'll need to pull down the azure_resource_block.txt file, which has additional resource blocks that we're going to add to the main configuration.

## So let's take a look at the objectives for this demo.

-First up, we're going to download the azure_resource_block.txt file from the GitHub repo. Then we're going to add the resource blocks from the file to the main.tf file.

-We're going to validate the changes being made.

-We're then going to apply the changes to our infrastructure.

-Once we have confirmed a successful deployment we'll start cleaning things up and getting things ready for the next session.
We'll do a dry run of the infrastructure deletion and then we'll destroy our infrastructure.

***So let's hop on over to our terminal and we'll get started.

The first thing we're going to do is we're going to download the azure_resource_block.txt file that has our configuration that we're going to add to our main configuration.

Or we're going to paste the URL from our github repo and we're going to go ahead and clone that.

![Screenshot 2023-03-18 at 2 42 50 PM](https://user-images.githubusercontent.com/121365233/226129779-df8e5264-927f-49cf-ba67-93d8ecd71c27.png)

<img width="1033" alt="Screenshot 2023-03-18 at 2 45 09 PM" src="https://user-images.githubusercontent.com/121365233/226130034-2172c513-7a7b-44f0-9c3b-f40cd8c8a82f.png">

Or as an alternative you can run <git clone> + <target repo url>. Before that better to create new directory using <mkdir> <name>, then using <cd> command change your working directory.

<img width="936" alt="Screenshot 2023-03-18 at 2 56 11 PM" src="https://user-images.githubusercontent.com/121365233/226130377-77c51671-8e6b-4303-b2ad-95bff001899a.png">

Do an ls (inside the working directory) to confirm there's our azure_resource_block.txt file.

<img width="523" alt="Screenshot 2023-03-18 at 2 58 31 PM" src="https://user-images.githubusercontent.com/121365233/226130455-5221bcf9-9c10-4de9-b867-cfa3a549599f.png">

Let's take a look at azure_resource_block.txt file real quick (using <vim> command). So first we want to create a subnet to our virtual network.
We're going to copy first resource block. Then quit out of this.

<img width="740" alt="Screenshot 2023-03-18 at 3 03 05 PM" src="https://user-images.githubusercontent.com/121365233/226131178-c2c88328-6fbc-4944-ad16-2fe84a2f0072.png">

<img width="825" alt="Screenshot 2023-03-18 at 3 09 05 PM" src="https://user-images.githubusercontent.com/121365233/226131252-75b99595-25ce-4418-b301-dbeb87e8059b.png">

***Note: To laeve or save & quit press <esc> <:> <wq>

Then we're going to vim into our main.tf file and paste the sunbet block. Additionally you should change resource group names as well. You can use pre-existing resource group or provide new one by adding a resource block. Finally, save and quit. You can tags now or later if you wish.

<img width="928" alt="Screenshot 2023-03-18 at 3 20 10 PM" src="https://user-images.githubusercontent.com/121365233/226133585-34439b72-4cc7-4154-950c-5581ca589be0.png">

-Now let`s initialize our terraform using terraform init.

-let's do a terraform fmt to make sure that our configuration is formatted correctly.

-And then let's validate it by doing a terraform validate.

So now we'll do a terraform apply to apply our configuration. Type yes to confirm.

<img width="1127" alt="Screenshot 2023-03-18 at 3 37 23 PM" src="https://user-images.githubusercontent.com/121365233/226133803-1b5992e2-1a8d-4176-a48c-bccb71a3a874.png">

<img width="580" alt="Screenshot 2023-03-18 at 3 38 41 PM" src="https://user-images.githubusercontent.com/121365233/226133810-7acf3c14-e7ad-41e6-b2a9-600a0d3f111f.png">

Our resource has been added.

- Before deleting, if you want to push your changes back to your repository using git and github actions, follow me.

-First, initialize your git actions using <git init> command. 

-git add . -->to add all changes.

-git commit -m 'updates' --> to commit and insert notes.

*** You may face this issue:

To https://github.com/Alijon1992/tf-making-changes-and-destroying-azure-infrastructure.git
 ! [rejected]        main -> main (fetch first)
error: failed to push some refs to 'https://github.com/Alijon1992/tf-making-changes-and-destroying-azure-infrastructure.git'
hint: Updates were rejected because the remote contains work that you do
hint: not have locally. This is usually caused by another repository pushing
hint: to the same ref. You may want to first integrate the remote changes
hint: (e.g., 'git pull ...') before pushing again.

++Here is the solution:

This error message indicates that the remote repository you are trying to push to contains changes that are not present in your local repository. This can occur when changes have been made to the remote repository by someone else, or by you on a different machine or branch, since you last synced your local repository.

To resolve this issue, you will need to first pull the changes from the remote repository to your local repository before pushing your changes. You can do this by running the following command in your local repository:

+++So, first git pull --> then git push again.

-git push --> to push your changes back to repository.

First, let's go to go ahead and do a dry run of the destroy.

By doing a terraform destroy. Confirm by typing yes.




