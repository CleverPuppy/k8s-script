# Error Lists

1. Failed to create pod sandbox: open /run/systemd/resolve/resolv.conf: no such file or directory

    >https://github.com/ivanfioravanti/kubernetes-the-hard-way-on-azure/issues/30

    ```
    ln -s /run/resolvconf/ /run/systemd/resolve
    ```
