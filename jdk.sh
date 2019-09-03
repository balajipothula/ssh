curl -JL https://github.com/frekele/oracle-java/releases/download/8u212-b10/jdk-8u212-linux-x64.tar.gz -o $HOME/jdk.tar.gz && \
tar -xzf $HOME/jdk.tar.gz -C $HOME                                                                                         && \
rm  -rf  $HOME/jdk.tar.gz                                                                                                  && \
mv       $HOME/jdk* $HOME/jreroot                                                                                          && \
echo "export  PATH=$PATH:$HOME/jdkroot/bin" >> $HOME/.bashrc                                                            && \
echo "export   JDK_HOME=$HOME/jdkroot/bin" >> $HOME/.bashrc                                                            && \
echo "export   JRE_HOME=$HOME/jdkroot/jre" >> $HOME/.bashrc                                                            && \
find     $HOME/jdkroot -maxdepth 2 -name "*.txt"  -type f -delete                                                          && \
find     $HOME/jdkroot -maxdepth 2 -name "*.html" -type f -delete                                                          && \
exec $BASH

rm -rf $HOME/jreroot/man
rm -rf $HOME/jreroot/{COPYRIGHT,LICENSE,README,release}


curl -JL https://www-us.apache.org/dist/cassandra/3.0.18/apache-cassandra-3.0.18-bin.tar.gz -o cassandra.tar.gz
tar -xzf $HOME/cassandra.tar.gz -C $HOME
rm  -rf  $HOME/cassandra.tar.gz
mv       $HOME/apache-cassandra-* $HOME/cassandra
rm  -rf  $HOME/cassandra/{doc,javadoc}
rm  -rf  $HOME//cassandra/lib/licenses
find     $HOME/cassandra -name "*.bat"  -type f -delete
find     $HOME/cassandra -name "*.ps1"  -type f -delete

echo "export  PATH=$PATH:$HOME/cassandra/bin" >> $HOME/.bashrc

