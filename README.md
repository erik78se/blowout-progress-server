# blowout-progress-server
Progress server using the blowout-api-server


# Building the snap
```
snapcraft
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
