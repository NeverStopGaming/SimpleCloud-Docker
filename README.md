# SimpleCloud-Docker
kann sein das es nicht mehr funktioniert xD

## Usage

### run

1. run `apt install docker.io docker-compose git curl`

2. run `mkdir /home/simplecloud` to create the folder

3. run `cd /home/simplecloud` to go into the folder

4. run `curl -o /home/simplecloud/simplecloud.zip https://github.com/theSimpleCloud/SimpleCloud/releases/download/v2.4.1/SimpleCloud-v2.4.1.zip` to download SimpleCloud

5. run `./start.sh` for the first time to install the cloud

6. run `cd /home/ && git clone https://github.com/NeverStopGaming/SimpleCloud-Docker`

7. then you need to change the im in the `launcher.json` and in `storage/wrappers/InternalWrapper.json` to `10.22.0.3`

8. run `docker-compose up -d` in /home/simplecloud
