# Error Lists

1. Failed to create pod sandbox: open /run/systemd/resolve/resolv.conf: no such file or directory

    >https://github.com/ivanfioravanti/kubernetes-the-hard-way-on-azure/issues/30

    ```
    ln -s /run/resolvconf/ /run/systemd/resolve
    ```

2. Failed to start docker.service **But dockerd can run**

    >https://docs.docker.com/engine/install/linux-postinstall/#configure-docker-to-start-on-boot
    
    - First change service profile to dockerd (must using absolute path ,eq /var/bin/dockerd)

        ```
        sudo systemctl edit docker.service
        ```

    - then add remote access

        1. set hosts array in the ```/etc/docker/daemon.json```

            ```
            {
                "hosts": ["unix:///var/run/docker.sock", "tcp://127.0.0.1:2375"]
            }
            ```

        2. restart docker

        3. check port

            ```
            sudo netstat -lntp | grep dockerd
            ```