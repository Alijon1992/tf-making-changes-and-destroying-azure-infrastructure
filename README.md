# tf-making-changes-and-destroying-azure-infrastructure

In this lesson, we'll modify our configuration, validate it, and finally put it into use.
We'll also use the destroy command to do some cleanup.
Let's look at the actions we're going to take to make this happen.
You can find the items you'll need in this example connected to this lesson.
Installation of Terraform and the Amazon CLI are prerequisites.
You must download and rename the main aws.tf Terraform configuration file to main.tf in your working directory.
Also, confirm that your AWS sandbox is operational.
Let's now look at our goals for this demonstration.
The following are our goals.
Initially, we'll modify the AMI in the main.tf file from an Ubuntu AMI to an Amazon Linux AMI.
Afterwards, we'll execute the terraform plan command to verify the modifications being performed.
Terraform apply will then be used to apply the modifications to your infrastructure.
We will perform a dry run of the infrastructure deletion using a terraform plan and the destroy flag once we have verified that our adjustments have been performed and we are comfortable with everything.
Finally, we'll run a terraform destruct command to demolish our infrastructure.
So let's jump over here to our terminal and start working.
Well, here we are in our terminal.
We will first open our main.tf file in vim.
We'll scroll down to our resource block, where our AMI is located.
We'll proceed with our adjustment now that I've given you the AMI to use in the lesson description.
Save, then exit.
After that, we'll execute a terraforming plan.
This will demonstrate all the adjustments being performed.
There have been some additions and removals, as you can see.
In order to implement our adjustments, we'll clean our screen now and then run a terraform apply.

We'll enter "yes" to indicate that we want to carry out these tasks.
We'll let it a few minutes to run where it's initially destroying the infrastructure.
Our application has now been approved.
We're going to perform a terraform show to confirm that our adjustments were made once I go ahead and clear my screen.
Our AMI has changed, as is seen here.
We can also observe that our instance state is active.
I'll once more clear my screen.
And now, we're going to conduct some cleanup to set us up for our next lesson.
We're going to create another terraform plan as our first step.
Nevertheless, we're going to utilise the -destroy option this time.
You can see that we are dismantling all of our infrastructure here.
Imagine how painful it would be to do all of this by hand.

Now that we've done a terraform destroy, all of our infrastructure should be destroyed.
We're going to key in "yes" to affirm that we wish to eliminate all resources.
Our infrastructure has been successfully dismantled, and we are now prepared for the next lesson.
So how simple is it to use Terraform to alter and remove our infrastructure?
Compared to manually making adjustments or deleting the resources, it is undoubtedly simpler.

This truly is a time-saver
and really shows how vital a tool Terraform is
when managing infrastructure.
In the next lesson,
I will show you how to use variables
to better customize your configurations.
I'll see you guys there.

This is a huge time-saver and demonstrates the importance of Terraform as a tool for managing infrastructure.
I'll demonstrate how to use variables to more effectively personalise your setups in the following session.
I'll run into you all there.
