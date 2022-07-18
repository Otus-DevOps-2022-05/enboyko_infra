# enboyko_infra
enboyko Infra repository


# HOMEWORK #3:

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


# HOMEWORK #4:

There's config.yaml for cloud instance configuration.

Below is the command for the instance creation and aplllications start:

$ ./startup.sh

testapp_IP = 51.250.8.189
testapp_port = 9292


# HOMEWORK #5:

1. Установил и настроил packer
2. Создал сервисный аккаунт для Packer в Yandex.Cloud
3. Делегировал права сервисному аккаунту для Packer
4. Создал Service account key file
5. Создал файл-шаблон - образ Packer
6. Создал в Yandex Cloud виртуальную машину из ранее созданного образа Packer
7. Установил приложение и проверил его работу
8. Параметризировал шаблон Packer, изменив опции Builder'а
9. (Задание со *) Автоматизировал создание ВМ с помощью скрипта create-reddit-vm.sh


# HOMEWORK #6:

1. Установил Terraform на локальный хост
2. Создал файл .gitignore
3. Создал сервисный аккаунт для Terraform
4. Создал главный конфигурационный файл Terraform'а main.tf
5. Добавил провижинеров в main.tf, а также добавил необходимые файлы для деплоя приложения на будущем инстансе
6. Задал input- и output- переменные в соответствующих файлах
7. Задеплоил виртуальную машину с приложением с помощью Terraform и образа, созданного в ДЗ №5
8. Подменил для Git настоящий файл terraform.tfvars файлом terraform.tfvars.example c вымышленными значениями
9. Отформатировал все конфигурационные файлы, использовав команду terraform fmt


# HOMEWORK #7:

1. Создал ресурсы сети yandex_vpc_network и подсети yandex_vpc_network для конфигурирования будущих ВМ
2. Настроил неявную зависимость одного ресурса от другого
3. Пересоздал ресурсы с учетом неявной зависимости.
4. Создал два новых шаблона для Packer'а : db.json и app.json
5. С помощью шаблона db.json собрал образ VM, содержащий установленную MongoDB
6. С помощью шаблона app.json собрал образ VM с установленными Ruby
7. Разбил конфиг main.tf на 3 конфига: app.tf, db.tf и vpc.tf. Разбил остальную конфигурацию по файлам  и создал ресурсы (инстансы)
8. Видоизменил конфигурацию, разбив на модули db и app. Создал ресурсы
9. Добавил модули prod и stage. Создал ресурсы
10. Отформатировал все конфигурационные файлы, использовав команду terraform fmt
11. Подменил для Git настоящие файлы terraform.tfvars файлами terraform.tfvars.example c вымышленными значениями. Также подменил key.json

