# start services
function start_srv {
    local install_lock=/tmp/service_conf.lock
    [ -f $install_lock ] && return
    echo
    echo "restart..."
    service mysqld restart
    if [ $SERVER == "nginx" ]; then
        service nginxd start
    elif [ $SERVER == "na" -o $SERVER_ID == 4 ]; then
        service httpd start
        service nginxd start
    else
        service httpd start
    fi
    service pureftpd start
    ###
    /sbin/iptables -I INPUT -p tcp -m tcp --dport 20000:20500 -m state --state NEW -j ACCEPT
    /sbin/iptables -I INPUT -p tcp --dport 80 -j ACCEPT
    /sbin/iptables -I INPUT -p tcp --dport 21 -j ACCEPT
    if is_debian_based; then
        mkdir -p /etc/sysconfig
        iptables-save > /etc/sysconfig/iptables
    else
        service iptables save
    fi
    touch $install_lock
}

