# v2ray WebSocket + TCP + TLS Docker
## Languages / 語言
- <a href=https://github.com/nickchen120235/v2ray_ws_tcp_tls_docker#before-building>English</a>
- <a href=https://github.com/nickchen120235/v2ray_ws_tcp_tls_docker#%E5%9C%A8%E5%BB%BA%E7%AB%8B%E6%98%A0%E5%83%8F%E6%AA%94%E4%B9%8B%E5%89%8D>中文</a>
---
### Before building
- Open port **443** on your host machine
- Set correct *ServerName* in **virtualhost.conf**
- Copy the following files to the current directory
```
- config.json for v2ray
- fullchain.pem for Let's Encrypt or equivalent certificate file
- privkey.pem for Let's Encrypt or equivalent private key file
```
### Build the image
```
docker build --no-cache -t v2ray .
```
### Start the container
```
docker run -d -p 443:443 --name v2ray v2ray
```
---
### 在建立映像檔之前
- 在主機上打開 **443** port
- 在 **virtualhost.conf** 的 *ServerName* 設定正確的域名
- 複製下列檔案到本地資料夾
```
- config.json v2ray 的設定檔
- Let's Encrypt 的 fullchain.pem 或可以使用的憑證檔
- Let's Encrypt 的 privkey.pem 或可以使用的憑證密鑰檔
```
### 建立映像檔
```
docker build --no-cache -t v2ray .
```
### 啟動容器
```
docker run -d -p 443:443 --name v2ray v2ray
```
