系统概述
========

lanmp一键安装包是wdlinux官网2010年底开始推出的web应用环境的快速简易安装包.

执行一个脚本，整个环境就安装完成就可使用，快速,方便易用,安全稳定

lanmp一键安装包是用shell脚本编写,且是开源的,你也可以根据业务需求,做相应的调整,来安装自己所需要的环境.

lanmp表示的是Linux,apache,nginx,mysql,php的简称,目前支持三种环境安装,即是lamp,lnmp,lnamp

同时会默认安装zend,eAccelerator,pureftpd等相应加速,优化等软件,还有FTP软件


可选安装如下三个其一,也可都安装,然后通过wdcp后台可切换使用不同的环境

1. lamp(linux+apache+php+mysql) 有Linux下WEB应用的黄金组合之称

2. lnmp(linux+nginx+php+mysql) 新流行的一个应用组合,对静态的处理更好

3. lnamp(linux+nginx+apache+php+mysql),即是nginx+apache组合环境的应用，

也即是nginx前端处理静态，图片等，apche处理后台php脚本程序。


nginx在处理静态文件上有着非常好的性能和稳定性，且节省资源，但在处理php的应用上相对不稳定，

而apache在处理php的应用上是非常稳定的，也因此，目前比较流行的一个n+a的组合应用应运而生.

使用一键安装包,方便,简单,快速.如自己一个个安装,麻烦,还费时,也可能会有些莫名其妙的问题难以

解决,当然,一键包的安装也可能会有问题的,但问题会更少,至少不会有输入错误等错误的出现.


运行环境
========

由于目前的Linux系统版本及分支较多,目前只支持用得最多的几个版本.

如wdOS,wdlinux_base,CentOS,RedHat,Ubuntu

具体如下

* wdOS,wdlinux_base是本站的定制版本,具体可看 http://www.wdlinux.cn/wdos

* CentOS 5.x系列,CentOS 6.X系列,包括32位,64位

* RedHat 5.x系列,RedHat 6.x系列,包括32位,64位

* Ubuntu 12.04,包括32位,64位

以上几个版本均有测试可用,其它版本暂未测试,如你有兴趣参与这个测试,欢迎与我们联系,谢谢


功能介绍
========

1. 安装简单,执行一个脚本,就安装完全部,省去一个个安装,麻烦,还出错

2. 配置快速,稳定,省去一个个配置,麻烦还可能会出差,不稳定

3. 可自由选择安装lamp,lnmp,lnamp三个同不的环境,或是安装所有环境

4. 可选安装集成wdcp服务器/虚拟主机管理系统,可方便在线管理服务器,网站,FTP,mysql数据库

5. 开源 你可以根据业务需求做相应的调整,来安装自己所需要的环境或升级到相应的版本


安装说明
========

安装
------

下载安装(ssh登录服务器,执行如下操作即可,需要用到root用户权限来安装)

源码编译安装

    wget http://dl.wdlinux.cn:5180/lanmp_laster.tar.gz

    tar zxvf lanmp_laster.tar.gz

    sh in.sh

(默认会安装wdcp,如果只要web环境,而不想安装wdcp,这里改为 sh lanmp.sh即可) 

4个可选安装

* 1,2,3 是安装独立的环境,不可自由切换nginx,apache,nginx+apache应用环境

* 4 是安装所有,即可在后台里自由切换nginx,apache,nginx+apache的应用环境

卸载(注意备份数据,否则后果自负)
-------------------------------

    sh in.sh uninstall

就可以

