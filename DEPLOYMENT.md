# 部署指南 (Deployment Guide)

## 📋 前置需求

### 軟體需求
- **JDK**: Java 8 或更高版本
- **應用伺服器**: Apache Tomcat 9.0+ 或任何 Java EE 相容伺服器
- **依賴套件**:
  - JavaMail API (`javax.mail.jar`)
  - Servlet API (通常由伺服器提供)

### 系統需求
- **記憶體**: 至少 512MB RAM（建議 1GB+）
- **儲存空間**: 至少 100MB
- **網路**: 如需郵件功能，需要可訪問 SMTP 伺服器

## 🚀 部署步驟

### 1. 準備專案檔案

```bash
# 確保專案結構完整
curtis-software-studio-website/
├── assets/
├── WEB-INF/
│   ├── classes/          # 編譯後的 Java 類別
│   ├── lib/              # 依賴 JAR 檔
│   ├── jspf/
│   └── web.xml
├── *.jsp
├── robots.txt
└── sitemap.xml
```

### 2. 編譯 Java 原始碼

```bash
# 進入專案目錄
cd curtis-software-studio-website

# 創建 classes 目錄（如果不存在）
mkdir -p WEB-INF/classes

# 編譯 Servlet
javac -cp "WEB-INF/lib/*:$CATALINA_HOME/lib/servlet-api.jar" \
  -d WEB-INF/classes \
  WEB-INF/src/com/curtissoftware/ContactServlet.java
```

### 3. 下載並配置依賴套件

```bash
# 創建 lib 目錄
mkdir -p WEB-INF/lib

# 下載 JavaMail API
# 從 Maven Central 下載:
# https://repo1.maven.org/maven2/com/sun/mail/javax.mail/1.6.2/javax.mail-1.6.2.jar

# 或使用 wget/curl
wget -P WEB-INF/lib/ \
  https://repo1.maven.org/maven2/com/sun/mail/javax.mail/1.6.2/javax.mail-1.6.2.jar
```

### 4. 配置郵件設定（可選）

編輯 `WEB-INF/web.xml`，取消註解並配置 SMTP 參數：

```xml
<context-param>
  <param-name>smtp.host</param-name>
  <param-value>smtp.gmail.com</param-value>
</context-param>

<context-param>
  <param-name>smtp.port</param-name>
  <param-value>587</param-value>
</context-param>

<context-param>
  <param-name>smtp.user</param-name>
  <param-value>your-email@gmail.com</param-value>
</context-param>

<context-param>
  <param-name>smtp.password</param-name>
  <param-value>your-app-password</param-value>
</context-param>

<context-param>
  <param-name>contact.email</param-name>
  <param-value>info@curtissoftware.com</param-value>
</context-param>
```

**Gmail 設定步驟：**
1. 啟用兩步驟驗證
2. 前往 https://myaccount.google.com/apppasswords
3. 生成「應用程式密碼」
4. 使用該密碼作為 `smtp.password`

### 5. 部署到 Tomcat

#### 方法 A: 直接複製
```bash
# 將整個專案目錄複製到 Tomcat webapps
cp -r curtis-software-studio-website $CATALINA_HOME/webapps/

# 重啟 Tomcat
$CATALINA_HOME/bin/shutdown.sh
$CATALINA_HOME/bin/startup.sh
```

#### 方法 B: 建立 WAR 檔案
```bash
# 在專案目錄內建立 WAR
jar -cvf curtis-software-studio.war *

# 複製 WAR 到 Tomcat
cp curtis-software-studio.war $CATALINA_HOME/webapps/

# Tomcat 會自動解壓並部署
```

### 6. 驗證部署

1. 啟動 Tomcat
2. 檢查日誌：
   ```bash
   tail -f $CATALINA_HOME/logs/catalina.out
   ```
3. 訪問網站：
   ```
   http://localhost:8080/curtis-software-studio-website/
   ```

## 🔧 生產環境配置

### 啟用 HTTPS

1. **生成 SSL 憑證**：
   ```bash
   # 使用 Let's Encrypt (推薦)
   certbot --nginx -d curtissoftware.com
   ```

2. **更新 web.xml**：
   ```xml
   <cookie-config>
     <http-only>true</http-only>
     <secure>true</secure>  <!-- 改為 true -->
   </cookie-config>
   ```

### 配置反向代理（Nginx）

```nginx
server {
    listen 80;
    server_name curtissoftware.com www.curtissoftware.com;
    return 301 https://$server_name$request_uri;
}

server {
    listen 443 ssl http2;
    server_name curtissoftware.com www.curtissoftware.com;

    ssl_certificate /etc/letsencrypt/live/curtissoftware.com/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/curtissoftware.com/privkey.pem;

    location / {
        proxy_pass http://localhost:8080/curtis-software-studio-website/;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }
}
```

### 效能優化

1. **啟用 Tomcat 壓縮** (`server.xml`)：
   ```xml
   <Connector port="8080" protocol="HTTP/1.1"
              compression="on"
              compressionMinSize="1024"
              compressableMimeType="text/html,text/xml,text/plain,text/css,text/javascript,application/javascript,application/json"/>
   ```

2. **設定 JVM 參數** (`setenv.sh`)：
   ```bash
   export CATALINA_OPTS="$CATALINA_OPTS -Xms512m -Xmx1024m"
   export CATALINA_OPTS="$CATALINA_OPTS -XX:+UseG1GC"
   ```

3. **設定檔案快取**（Nginx）：
   ```nginx
   location ~* \.(css|js|jpg|jpeg|png|gif|svg|ico|woff|woff2)$ {
       expires 30d;
       add_header Cache-Control "public, immutable";
   }
   ```

## 🔒 安全性檢查清單

- [ ] 更新所有預設密碼和憑證
- [ ] 啟用 HTTPS/SSL
- [ ] 設定 `secure="true"` 在 session-config
- [ ] 限制檔案上傳（如果有）
- [ ] 定期更新 Java 和 Tomcat
- [ ] 設定防火牆規則
- [ ] 啟用日誌監控
- [ ] 定期備份資料
- [ ] 實施 IP 白名單（管理界面）
- [ ] 使用環境變數存放敏感資訊

## 📊 監控與維護

### 日誌位置
```bash
# Tomcat 日誌
$CATALINA_HOME/logs/catalina.out
$CATALINA_HOME/logs/localhost.YYYY-MM-DD.log

# 應用程式日誌
# 聯絡表單提交會記錄在 catalina.out
```

### 定期維護任務

1. **每日**：
   - 檢查錯誤日誌
   - 監控磁碟空間

2. **每週**：
   - 清理舊日誌檔案
   - 檢查備份完整性

3. **每月**：
   - 更新依賴套件
   - 檢查安全性漏洞
   - 效能分析

### 備份策略

```bash
#!/bin/bash
# backup.sh - 每日備份腳本

DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR="/backups/curtis-website"
APP_DIR="$CATALINA_HOME/webapps/curtis-software-studio-website"

# 建立備份
tar -czf "$BACKUP_DIR/backup_$DATE.tar.gz" "$APP_DIR"

# 保留最近 30 天的備份
find "$BACKUP_DIR" -name "backup_*.tar.gz" -mtime +30 -delete
```

## 🐛 故障排除

### 常見問題

1. **404 錯誤**
   - 檢查 Context Path 是否正確
   - 確認 Tomcat 已正確部署應用程式

2. **500 錯誤**
   - 檢查 `catalina.out` 日誌
   - 驗證所有依賴 JAR 都在 `WEB-INF/lib/`

3. **郵件發送失敗**
   - 檢查 SMTP 設定
   - 確認網路可訪問 SMTP 伺服器
   - 檢查防火牆規則

4. **樣式或 Logo 未顯示**
   - 清除瀏覽器快取
   - 檢查檔案權限
   - 驗證 CSP headers 設定

### 除錯模式

在 Tomcat 中啟用除錯：
```bash
export JPDA_ADDRESS="8000"
export JPDA_TRANSPORT="dt_socket"
$CATALINA_HOME/bin/catalina.sh jpda start
```

## 📞 支援

如有部署問題，請聯繫：
- 📧 Email: info@curtissoftware.com
- 📱 Phone: (555) 123-4567

---

**最後更新**: 2025-11-15

