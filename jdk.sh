curl -JL https://github.com/frekele/oracle-java/releases/download/8u212-b10/jdk-8u212-linux-x64.tar.gz -o $HOME/jdk.tar.gz && \
tar -xzf $HOME/jdk.tar.gz -C $HOME                                                                                         && \
rm  -rf  $HOME/jdk.tar.gz                                                                                                  && \
mv       $HOME/jdk* $HOME/jreroot                                                                                          && \
echo "export     PATH=$PATH:$HOME/jdkroot/bin" >> $HOME/.bashrc                                                            && \
echo "export JDK_HOME=$PATH:$HOME/jdkroot/bin" >> $HOME/.bashrc                                                            && \
echo "export JRE_HOME=$PATH:$HOME/jdkroot/jre" >> $HOME/.bashrc                                                            && \
find     $HOME/jdkroot -maxdepth 2 -name "*.txt"  -type f -delete                                                          && \
find     $HOME/jdkroot -maxdepth 2 -name "*.html" -type f -delete                                                          && \
exec $BASH

rm -rf $HOME/jreroot/man
rm -rf $HOME/jreroot/{COPYRIGHT,LICENSE,README,release}
