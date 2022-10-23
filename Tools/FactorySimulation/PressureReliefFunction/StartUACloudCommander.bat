docker run -itd -v c:/docker/Shared:/Shared -v c:/docker/Logs/uacommander.munich.corp.contoso:/Logs -e APP_NAME="uacommander.munich.corp.contoso" -e MQTT_BROKERNAME="ENTER_IOT_HUB_HOSTNAME_HERE" -e MQTT_CLIENTNAME="ENTER_UACOMMANDER_DEVICE_NAME_HERE" -e MQTT_USERNAME="ENTER_IOT_HUB_HOSTNAME_HERE/ENTER_UACOMMANDER_DEVICE_NAME_HERE/?api-version=2018-06-30" -e MQTT_PASSWORD="ENTER_UACOMMANDER_DEVICE_KEY_HERE" -e MQTT_TOPIC="$iothub/methods/POST/#" -e MQTT_RESPONSE_TOPIC="$iothub/methods/res" -e CREATE_SAS_PASSWORD="1" -e LOG_FILE_PATH="/Logs/uacommander.munich.corp.contoso" -e CERT_STORE_PATH="/Shared/CertificateStores/UA Applications" --name uacommander.munich.corp.contoso -h uacommander.munich.corp.contoso --network munich.corp.contoso --restart always ghcr.io/barnstee/ua-cloudcommander:main
