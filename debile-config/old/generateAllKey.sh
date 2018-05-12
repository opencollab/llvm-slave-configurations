for i in $(seq -f "%02g" 01 16)
do
  HOST="blade"$i".debile"
  echo "=== $HOST ==="
  /usr/share/python-debile/debile-generate-slave-keys $HOST
  MD5=$(md5sum $HOST.tar.gz|awk '{print $1}')
  echo "md5=$MD5" > $HOST.tar.gz.md5
done

