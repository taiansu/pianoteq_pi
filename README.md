# Setup a Raspberry pi with Pianoteq 6

## Step 1:
  Flash a SD card with newest Raspbian Buster with desktop version

## Step 2:
  On Raspberry pi:
  1. put sd card in
  2. plug in keyboard, mouse and monitor
  3. plug the power cord
  4. connect to wifi
  5. find the ip, which we will use it when back to host
  6. enable ssh conect

## Step 3:
  On host:
  1. ssh-copy-id to put your ssh key into raspberry pi
  2. clone this project to your computer
  3. download a pianoteq linux version, put the .7z file into **library** folder of this project
  4. change the $your_raspberry_ip_here variable in **inventory** file with the value your observed on step 2.5
  5. install ansible if you don't have it via command: `brew install ansible`
  6. run following command:

  ```shell
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

