for i in $(seq -f "%02g" 01 16)
do
  HOST="blade"$i".debile"
  IP="10.0.0.1"$i
  echo "=== $HOST: $IP ==="
  /usr/share/python-debile/debile-generate-pgp-keys-no-ssl $HOST $IP
  MD5=$(md5sum $HOST.tar.gz|awk '{print $1}')
  echo "md5=$MD5" > $HOST.tar.gz.md5
done

