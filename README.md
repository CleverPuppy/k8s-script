# Scripts Using By Setup A K8S Cluster

在一台新的ubuntu 16 或者 ubuntu 18的机器上快速搭建K8S集群

> 使用kubeadm

## init.sh 或 init_16.sh

（ubuntu18 使用 init.sh, ubuntu16 使用 init_16.sh）

init脚本主要完成的工作：
1. 改用tuna ubuntu国内镜像
2. 安装openssh并加入到开机启动

## perquisite.sh

主要完成的工作:
1. 禁用swap分区
2. 设置iptables能够检测桥接的流量
3. [X]TODO 检查端口
4. 使用tuna-docker镜像安装docker-ce,更改docker容器镜像，使用阿里云容器加速服务
5. 使用阿里云镜像安装kubeadm, kubelet和kubectl

**说明:**

更换33行为阿里云容器加速服务的私有地址

## kubeadm.sh

该脚本在主节点上运行，然后根据提示使用```kubeadm join```

安装完成之后，还需要安装网络插件，Flannel : https://github.com/flannel-io/flannel

```
# For Kubernetes v1.17+ 
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
```