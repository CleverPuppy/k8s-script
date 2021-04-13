# upgrade kubelet and kubectl

1. Example Upgrade to v1.21.0-00

    ```
    sudo apt-get update && \
    sudo apt-get install -y --allow-change-held-packages kubelet=1.21.0-00 kubectl=1.21.0-00
    ```

2. Restart kubelet

    ```
    sudo systemctl daemon-reload
    sudo systemctl restart kubelet
    ```