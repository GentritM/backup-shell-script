# backup-shell-script

#### A shell script which which accepts two arguments while being executed the first one the dir or file to be backed up and the second one the destination where the folder will be backed up and it will save the file or content on a folder which will contain the date as its name

    ##Running

     ~ chmod 755 ./pbackup.sh
     ~ ./pbackup.sh (first argument) (second argument)

    ##example

    ./pbackup.sh file.sh /home/master
    file.sh is a file
    it will be backed up at /home/master/(a directory named with current date format)
    backup ok

    file.sh will be transferred to /home/master and it will be stored in a directory which will
    contain the name of the date that the backup was made example (2019-07-21)

