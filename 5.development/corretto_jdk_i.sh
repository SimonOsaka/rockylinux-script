echo '----------------------'
echo '-- import...'
echo '----------------------'
sudo rpm --import https://yum.corretto.aws/corretto.key 
sudo curl -L -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo

echo '----------------------'
echo '-- install...'
echo '----------------------'
sudo yum install -y java-17-amazon-corretto-devel

echo '----------------------'
echo '-- validate...'
echo '----------------------'
java -version
