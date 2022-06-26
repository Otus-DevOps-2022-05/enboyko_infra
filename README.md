# enboyko_infra
enboyko Infra repository

1. Command for the one-line connection (NOT with an alias):
ssh -i ~/.ssh/id_rsa -A admin@51.250.75.175 ssh -tt admin@10.128.0.20

2. Configuration of ~/.ssh/config for the connection with an alias with the command ssh someinternalhost :
Host bastion
        HostName 51.250.75.175
        User admin
Host someinternalhost
        HostName 10.128.0.20
        User admin
        ProxyJump bastion

3. Configuration of bastion and someinternalhost:
bastion_IP = 51.250.75.175
someinternalhost_IP = 10.128.0.20

VPN does work
