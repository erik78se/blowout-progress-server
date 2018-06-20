# blowout-progress-server
Progress server using the borderlandblowout (api-server)

It will start an example web server at http://localhost:5001/ showing status of the api-server

You need to have a running api-server first. For testing, start it at the same server or configure the snap after install

Here is the api-server: https://github.com/erik78se/borderlandblowout


# Building and installing the snap package
```
snapcraft
snap install blowout-progress-server
```


# Configure API endpoint
Create config:
```
echo "export API_ENDPOINT=http://192.168.1.1:9999/api/info" > /var/snap/blowout-progress-server/common/server-config 
```
Restart server
```
sudo snap stop blowout-progress-server
sudo snap start blowout-progress-server
```

# Debug
```
sudo journalctl -xe
```
