echo "Preparing environment..."

read -sp 'Enter passphrase: ' passvar

echo "Got: $passvar"

while [ ! -f /usr/bin/cf ]
do
  sleep 2
done

echo "Environment ready!"