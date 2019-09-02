# Copy python.tar.gz in to “ansible-node” remotely.
scp -o CheckHostIP=no -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i $HOME/.ssh/id_rsa -P 22 $HOME/python.tar.gz ec2-user@10.0.0.11:$HOME

# Copy setup-python.sh in to “ansible-node” remotely.
scp -o CheckHostIP=no -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i $HOME/.ssh/id_rsa -P 22 $HOME/setup-python.sh ec2-user@10.0.0.11:$HOME

# Extract python.tar.gz into ansible-node remotely using ssh.
ssh -o CheckHostIP=no -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i $HOME/.ssh/id_rsa ec2-user@10.0.0.11 . $HOME/setup-python.sh

# Checking python version remotely using ssh.
ssh -o CheckHostIP=no -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i $HOME/.ssh/id_rsa ec2-user@10.0.0.11 python -V
