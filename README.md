# Setup a Raspberry pi with Pianoteq 6

## Step 1:
  Flash a SD card with newest [Raspbian OS with desktop version](https://www.raspberrypi.com/software/)

## Step 2:
  On Raspberry pi:
  1. put sd card in
  2. plug in keyboard, mouse and monitor
  3. plug the power cord
  4. follow the instructions to setup the OS, including connect to wifi
  5. Once the OS is ready, open the terminal and run the following command to get the IP, which we will use it when back to host

      ```bash
      ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d: -f2 | awk '{ print $2}'
      ```
  6. Type commands underneath to enable ssh

      ```bash
      sudo systemctl enable ssh && sudo systemctl start ssh
      ```

## Step 3:
  On host:
  1. ssh-copy-id to put your ssh key into raspberry pi via `ssh-copy-id -i ~/.ssh/id_rsa.pub pi@the_ip_addr_above`, enter the password you set in step 2
  2. clone this project to your computer
  3. download a pianoteq linux version, put the .7z file into **library** folder of this project
  4. install ansible if you don't have it via command: `brew install ansible`
  5. run following two command:

  ```shell
  $ export PI_IP={{the_ip_addr_at_step_2.5_above}}
  $ ansible-playbook -i inventory playbook.yml
  ```

  Then wait for the device reboot

  Note: Some step (especially for the first time while updating the system) might take 10 mins+, so be patient.

## Step 4:
  On Raspberry pi:
  1. activate your pianoteq with your serial number
  2. Connect the speaker/headphone, MIDI controller keyboard
  3. Config input, output and MIDI settings in the Pianoteq setting menu.

  And time to make some noise with fun.

