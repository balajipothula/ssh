curl -JL https://github.com/frekele/oracle-java/releases/download/8u212-b10/jre-8u212-linux-x64.tar.gz -o $HOME/jre.tar.gz && \
tar -xzf $HOME/jre.tar.gz -C $HOME                                                                                         && \
rm  -rf  $HOME/jre.tar.gz                                                                                                  && \
mv       $HOME/jre* $HOME/jreroot                                                                                          && \
echo "export PATH=$PATH:$HOME/jreroot/bin" >> $HOME/.bashrc                                                                && \
echo "export JRE_HOME=$PATH:$HOME/jreroot/bin" >> $HOME/.bashrc                                                            && \
find     $HOME/jreroot -maxdepth 2 -name "*.txt"  -type f -delete                                                          && \
find     $HOME/jreroot -maxdepth 2 -name "*.html" -type f -delete                                                          && \
exec $BASH

rm -rf $HOME/jreroot/man
rm -rf $HOME/jreroot/{COPYRIGHT,LICENSE,README,release}
