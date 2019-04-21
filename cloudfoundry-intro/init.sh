echo "Installing CF CLI..."

while [ ! -f /usr/bin/cf ]
do
  sleep 2
done