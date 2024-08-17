cd %~dp0
call "dockovpn/Build.bat"

cd %~dp0
call "dockcloak/Build.bat"

cd %~dp0
docker-compose up -d

if not exist openvpn_conf/clients (
  docker-compose cp autodownload.sh dockovpn:/opt/Dockovpn/autodownload.sh
  docker-compose exec dockovpn bash chmod +x autodownload.sh
  docker-compose exec dockovpn bash autodownload.sh
  
  copy /y openvpn_conf\client.ovpn client.ovpn
)