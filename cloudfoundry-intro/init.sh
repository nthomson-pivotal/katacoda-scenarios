echo "Preparing environment..."

echo 'Enter passphrase:'

read passvar

echo "Got: $passvar"

while [ ! -f /usr/bin/cf ]
do
  sleep 2
done

echo "Environment ready!"