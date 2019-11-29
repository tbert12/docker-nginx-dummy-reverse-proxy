if [ -z "$PROXY_TO" ]
then
      echo "\$PROXY_TO is not defined. Using default: google.com.ar"
      
fi 

PROXY_TO=`echo $PROXY_TO | sed 's|https://||' | sed 's|http://||'`

HTTPS_PROXY=https://${PROXY_TO}
HTTP_PROXY=http://${PROXY_TO}

echo "Configure proxy to: "
echo $HTTPS_PROXY
echo $HTTP_PROXY

sed 's|HTTP_PROXY|'${HTTP_PROXY}'|' default.conf.tmpl | sed 's|HTTPS_PROXY|'${HTTPS_PROXY}'|' > /etc/nginx/conf.d/default.conf 

cat /etc/nginx/conf.d/default.conf

service nginx restart

tail -f /var/log/nginx/access.log
