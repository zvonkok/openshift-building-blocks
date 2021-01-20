
# - Set up a few users (using httpd as auth provider)
# - Logon to as individuals user in different tabs
#- Start Kubernetes Jobs that can execute an ML modeling that use GPUs
# - Jobs have a PVC that creates a PV that gets mounted into the
# container and serves as the source and destination for for the
# Modeling Job
# - Show Jobs are in Kubernetes Job Queue. Since number of Jobs (that
# need GPUs) submitted M will exceed the number of available GPUs N,
# only N jobs will be running at a time and M-N Jobs will be shown
# Pending
# - Add Kubernetes Priorities to the Jobs so that we can show that the
# higher priority Jobs are scheduled first. We can optionally show
# preemption also (but the the preempted will have to restart as there
# is no Job quiesce and save state kind of support readily available)
# - Add Resource quotas to the various tenants so that we can show that
# they can't schedule more than their allocations
# - Show that a GPU job is scheduled to a GPU node with Taints and
# Tolerations; Maybe show affinity/anti-affinity

# What is missing?

# - A NGC container that can be run as a Job. We need something that
# runs to completion. Zvonko is going to try something, but, if u have
# something that could help.
# - Scheduling a Job that can effectively use multiple GPUs on same node
# (I am talking about the actual Model training being able to actually
# use the multiple GPUs) on Kube.
# - Multiple GPUs (across nodes using RDMA etc is out of scope for this demo)
# - Launching a Kube Job from inside a JH notebook. This is something
# that Vasek (from the ODH team) is trying. Lets see if he is successful
# with that.





# Creating the EBS Storage Class

                           


                           
#//