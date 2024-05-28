# MySQL backup cronjob
1. update config in ```backup.cfg```

2. update details in ```backup.sh```

3. install crontab
    ```
    crontab -e
    ```
    ```
    0 0 * * * sh /path/to/backup.sh
    ```