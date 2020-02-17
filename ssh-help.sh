# Copy python.tar.gz in to “ansible-node” remotely.
scp -o CheckHostIP=no -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i $HOME/.ssh/id_rsa -P 22 $HOME/python.tar.gz ec2-user@10.0.0.11:$HOME

# Copy setup-python.sh in to “ansible-node” remotely.
scp -o CheckHostIP=no -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i $HOME/.ssh/id_rsa -P 22 $HOME/setup-python.sh ec2-user@10.0.0.11:$HOME

# Extract python.tar.gz into ansible-node remotely using ssh.
ssh -o CheckHostIP=no -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i $HOME/.ssh/id_rsa ec2-user@10.0.0.11 . $HOME/setup-python.sh

# Checking python version remotely using ssh.
ssh -o CheckHostIP=no -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i $HOME/.ssh/id_rsa ec2-user@10.0.0.11 python -V

# downloading oracle jdk.
curl -JL -b "oraclelicense=a" https://download.oracle.com/otn/java/jdk/8u221-b11/230deb18db3e4014bb8e3e8324f81b43/jre-8u221-linux-x64.tar.gz?AuthParam=1567421871_fb2f3fff5a0da2ba2d1a38aeda898a29 -o jdk.tar.gz

# downloading oracle jre.
curl -JL -b "oraclelicense=a" https://download.oracle.com/otn/java/jdk/8u221-b11/230deb18db3e4014bb8e3e8324f81b43/jre-8u221-linux-x64.tar.gz?AuthParam=1567421871_fb2f3fff5a0da2ba2d1a38aeda898a29 -o jre.tar.gz

# hitting a service.
for i in {1..10}; do curl google.com; echo "\n"; done
