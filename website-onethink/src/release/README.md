建立数据库用户
建立数据库
安装onethink(可访问/install.php)
    检查目录权限
    输入信息
    (Application/Common/Conf/config.php与Application/User/Conf/config.php会被改写，内有DB等信息，需要保证安全)
    (也可手动输入各个config文件，并将sql/init_xxx.sql导入)
更新DB
    将sql目录下除init之外的sql按顺序导入，如
        mysql -uxxx -p div3_onethink < update-newmodels-20150820-152923.sql
升级发布
    程序更新
        将tar.gz(wwwroot等)解压
        ./deploy.sh
    DB更新
        mysql -uxxx -p div3_onethink < update-xxxx.sql
