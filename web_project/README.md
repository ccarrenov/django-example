# web_shopping

## example shopping page

### Install Database Script

```shell
1- Execute 01_create_database.sql from /script/postgresql with admin user.
2- Execute 02_schema.sql from /script/postgresql with web_shopping_adm in web_shopping_bd database.
```

### Install Lib

**Linux**

Execute file requirements.txt from requirements/linux/requirements.txt with the next command:

```shell
pip install -r requirements.txt
```
**Windows**
Execute file requirements.txt from requirements/windows/requirements.txt with the next command:

```shell
pip install -r requirements.txt
```

### Database Config

Create/Add file .env in the folder web_shopping/webshopping with the next data.

```shell
NAME_DB=web_shopping_bd
USER_DB=web_shopping_adm
PASSWORD_DB=OXfl0XSA454J28I2r3yU31I1kH
HOST_DB=localhost
PORT_DB=5432
```

**Note:** Modify environment with custom data.

### Email Config (Outlook)

Create/Add in file .env in the folder web_shopping/webshopping with the next data.

```shell
USER_MAIL=web_shopping@outlook.com
PASSWORD_MAIL=123456
SMTP_HOST_MAIL=m.outlook.com
SMTP_PORT_MAIL=587
```

**Note:** Modify environment with custom data.