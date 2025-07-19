# EaglerCux
> [!IMPORTANT]
> Follow the step by step to use EaglerCux v2
> Make sure to run "restart.sh" instead of "start.sh" for future starts after the first!!!

## Watch Zepr's video on EaglerCux v2 to learn how to setup your server!

## Setup
1. Enable GDrive Access
2. Navigate to the EaglerCux folder, for the video enter this: ```cd drive/MyDrive/eaglercux```
3. Run the unZIP script: ```unzip eaglercux-2-main.zip```
4. Navigate into the folder: ```cd eaglercux-2-main```
5. To finish the setup, run EaglerCux: ```bash eaglercux.sh```

## Installing Java
```bash
sudo apt update -y & sudo apt full-upgrade -y & sudo apt autoremove -y & sudo apt auto-clean -y
```
```bash
sdk install java 17.0.9-amzn
```
> write "y" without " and MAKE SURE TO WRITE y

## Make 4 command line tabs
* Server - > First Tab
* Velocity - > Second Tab
* Limbo - > Third Tab
* EaglerCux - > Fourth Tab

## Commands to start the server
```bash
cd server
chmod +x server.sh
./server.sh
```
## Commands to start the Velocity proxy
```bash
cd velocity
chmod +x velocity.sh
./velocity.sh
```
## Commands to start Limbo/nLogin (Verify your players)
```bash
cd limbo
chmod +x limbo.sh
./limbo.sh
```
## Commands to start EaglerCux
```bash
cd EaglerCux
python main.py
```

## Misc Information

#### Watch Zepr's video on it

#### How to be an operator/admin in the server?

1.) Go to the Server/Backend - > First tab

2.) then type "op username" without "" and change the username to yours

> Based on EagColab by: [ATypicalPotato]([https://www.youtube.com/@ismaeltechI](https://www.youtube.com/@ATypicalPotato))
