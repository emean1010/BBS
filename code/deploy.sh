# 系统设置
apt update
apt install -y nginx tomcat9 mysql-server openjdk-11-jdk redis-server ufw
rm -r /var/lib/tomcat9/webapps/ROOT

vi /usr/share/tomcat9/bin/catalina.sh
# if [ -z "$UMASK" ]; then
# UMASK="0027"
# fi
# 修改为：
# if [ -z "$UMASK" ]; then
# UMASK="0022"
# fi

cd /var/lib/tomcat9/webapps/
mkdir static
cd static
mkdir css images js
cd ..

cp /root/static/css/* static/css/
cp /root/static/images/* static/images/
cp /root/static/js/* static/js/
cp /home/emean/static/css/* static/css/
cp /home/emean/static/images/* static/images/
cp /home/emean/static/js/* static/js/
chmod 777 static/css/*
chmod 777 static/images/*
chmod 777 static/js/*

# 修改 /etc/mysql/mysql.cnf
[mysqld]
lower_case_table_names=1
sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION'

sudo mysql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password by 'emean1010';
# 本地连接数据库连接
# 主机 localhost
# 端口 3306
# 用户名 root
# 密码 emean1010
# 使用 SSH 隧道
# 运行 schema.sql 初始化数据库

# 上传 .war 包 到 /var/lib/tomcat9/webapps/ROOT.war

rm /etc/nginx/sites-enabled/default
# 上次 .nginx 文件 到 /etc/nginx/sites-enabled/ssm.nginx
service nginx restart

ufw allow 22
ufw allow 80
ufw allow 443
ufw allow 465
ufw default deny incoming
ufw default allow outgoing
ufw status verbose
ufw -f enable