#!/bin/bash

# Curtis Software Studio Website - 快速部署腳本

# 設定 Tomcat 路徑（請根據您的環境修改）
TOMCAT_HOME="${CATALINA_HOME:-/usr/local/tomcat}"
PROJECT_DIR="$(cd "$(dirname "$0")" && pwd)"
APP_NAME="curtis"

echo "======================================"
echo "  Curtis Software Studio 部署腳本"
echo "======================================"
echo ""

# 檢查 Tomcat 是否存在
if [ ! -d "$TOMCAT_HOME" ]; then
    echo "❌ 錯誤：找不到 Tomcat 目錄：$TOMCAT_HOME"
    echo "請設定 CATALINA_HOME 環境變數或修改此腳本中的 TOMCAT_HOME"
    exit 1
fi

echo "✓ Tomcat 目錄：$TOMCAT_HOME"
echo "✓ 專案目錄：$PROJECT_DIR"
echo ""

# 停止 Tomcat
echo "正在停止 Tomcat..."
$TOMCAT_HOME/bin/shutdown.sh 2>/dev/null
sleep 3

# 清理舊部署
if [ -L "$TOMCAT_HOME/webapps/$APP_NAME" ] || [ -d "$TOMCAT_HOME/webapps/$APP_NAME" ]; then
    echo "正在清理舊部署..."
    rm -rf "$TOMCAT_HOME/webapps/$APP_NAME"
fi

# 創建符號連結
echo "正在部署專案..."
ln -s "$PROJECT_DIR" "$TOMCAT_HOME/webapps/$APP_NAME"

# 編譯 Java 檔案（如果需要）
if [ -f "WEB-INF/src/com/curtissoftware/ContactServlet.java" ]; then
    echo "正在編譯 Servlet..."
    mkdir -p WEB-INF/classes
    javac -cp "$TOMCAT_HOME/lib/servlet-api.jar:WEB-INF/lib/*" \
          -d WEB-INF/classes \
          WEB-INF/src/com/curtissoftware/ContactServlet.java
    
    if [ $? -eq 0 ]; then
        echo "✓ 編譯成功"
    else
        echo "⚠ 編譯失敗，請手動檢查"
    fi
fi

# 啟動 Tomcat
echo ""
echo "正在啟動 Tomcat..."
$TOMCAT_HOME/bin/startup.sh

echo ""
echo "======================================"
echo "  部署完成！"
echo "======================================"
echo ""
echo "請訪問："
echo "  http://localhost:8080/$APP_NAME/index.jsp"
echo ""
echo "查看日誌："
echo "  tail -f $TOMCAT_HOME/logs/catalina.out"
echo ""

