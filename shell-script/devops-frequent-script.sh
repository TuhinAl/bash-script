Great! Practicing **conditional logic in shell scripts** is essential for **DevOps and SRE** tasks. Below are **real-life scenario examples** where conditional statements (`if`, `case`, `&&`, `||`) are commonly used. These examples cover **monitoring, automation, and troubleshooting** in production environments.

---

## **🟢 1. Check Disk Space and Send an Alert**
📌 **Scenario**: If the disk usage exceeds **80%**, send an alert to Slack or email.

```bash
#!/bin/bash

THRESHOLD=80
USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "⚠️ WARNING: Disk usage is at $USAGE%!" | mail -s "Disk Alert" admin@example.com
fi
```
🔹 **Use case**: Prevent **disk full issues** by setting up **alerts**.

---

## **🟢 2. Check If a Process Is Running and Restart If Needed**
📌 **Scenario**: If **Nginx** is not running, restart it automatically.

```bash
#!/bin/bash

if ! pgrep -x "nginx" > /dev/null; then
    echo "Nginx is not running, restarting..."
    systemctl start nginx
fi
```
🔹 **Use case**: Auto-recover a crashed **web server**.

---

## **🟢 3. Backup Logs If They Exceed a Certain Size**
📌 **Scenario**: If the `/var/log/syslog` file is larger than **500MB**, archive it.

```bash
#!/bin/bash

LOG_FILE="/var/log/syslog"
MAX_SIZE=500000  # 500MB

if [ -f "$LOG_FILE" ] && [ $(stat -c%s "$LOG_FILE") -gt "$MAX_SIZE" ]; then
    mv "$LOG_FILE" "$LOG_FILE-$(date +%F).bak"
    gzip "$LOG_FILE-$(date +%F).bak"
    echo "Log file archived."
fi
```
🔹 **Use case**: Prevent logs from filling up the disk.

---

## **🟢 4. Monitor HTTP Service and Restart If Down**
📌 **Scenario**: Check if an **HTTP API** is reachable. If not, restart the service.

```bash
#!/bin/bash

URL="http://localhost:8080/health"

if ! curl -s --head "$URL" | grep "200 OK" > /dev/null; then
    echo "Service is down, restarting..."
    systemctl restart myservice
fi
```
🔹 **Use case**: Keep **critical services** online.

---

## **🟢 5. Deploy New Code Based on a Branch Name**
📌 **Scenario**: If the Git branch is **main**, deploy to **production**, else deploy to **staging**.

```bash
#!/bin/bash

BRANCH=$(git rev-parse --abbrev-ref HEAD)

if [ "$BRANCH" = "main" ]; then
    echo "🚀 Deploying to Production..."
    ./deploy.sh --env=prod
else
    echo "🚀 Deploying to Staging..."
    ./deploy.sh --env=staging
fi
```
🔹 **Use case**: Automate **branch-based deployment**.

---

## **🟢 6. Check If a User Exists Before Creating**
📌 **Scenario**: Ensure a Linux user **exists** before creating.

```bash
#!/bin/bash

USER="devops"

if id "$USER" &>/dev/null; then
    echo "User $USER already exists."
else
    echo "Creating user $USER..."
    useradd -m "$USER"
fi
```
🔹 **Use case**: Automate **user management**.

---

## **🟢 7. Restart a Service If Memory Usage Exceeds a Limit**
📌 **Scenario**: Restart **MySQL** if memory usage exceeds **2GB**.

```bash
#!/bin/bash

MEMORY=$(ps -o rss= -C mysqld | awk '{print $1/1024}')  # Convert KB to MB
THRESHOLD=2048  # 2GB

if (( $(echo "$MEMORY > $THRESHOLD" | bc -l) )); then
    echo "MySQL memory high ($MEMORY MB), restarting..."
    systemctl restart mysql
fi
```
🔹 **Use case**: Prevent **high-memory crashes**.

---

## **🟢 8. Automatic Cleanup for Old Docker Containers**
📌 **Scenario**: If Docker containers are older than **7 days**, remove them.

```bash
#!/bin/bash

if docker ps -a --format '{{.CreatedAt}}' | awk '{print $1}' | xargs -I {} date -d {} +%s | while read created_time; do
    SEVEN_DAYS_AGO=$(date -d "7 days ago" +%s)
    if [ "$created_time" -lt "$SEVEN_DAYS_AGO" ]; then
        docker ps -a --filter "since=$created_time" -q | xargs docker rm
        echo "Old containers removed."
    fi
done
```
🔹 **Use case**: Free up **Docker storage** automatically.

---

## **🟢 9. Validate an IP Address Before Adding to Firewall**
📌 **Scenario**: If an IP is valid, add it to the firewall.

```bash
#!/bin/bash

IP="192.168.1.100"

if [[ "$IP" =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    echo "Adding $IP to firewall..."
    iptables -A INPUT -s "$IP" -j DROP
else
    echo "Invalid IP address."
fi
```
🔹 **Use case**: Secure the system with **firewall rules**.

---

## **🟢 10. Send a Custom Alert Based on System Load**
📌 **Scenario**: If **CPU load** exceeds 2.0, send an alert.

```bash
#!/bin/bash

LOAD=$(awk '{print $1}' /proc/loadavg)
THRESHOLD=2.0

if (( $(echo "$LOAD > $THRESHOLD" | bc -l) )); then
    echo "🚨 High CPU load: $LOAD" | mail -s "CPU Alert" admin@example.com
fi
```
🔹 **Use case**: Detect **high CPU usage** early.

---

## **✅ Conclusion**
As a **DevOps or SRE engineer**, **conditional logic** is crucial for:
✔ **Automated monitoring**  
✔ **Self-healing infrastructure**  
✔ **Deployment automation**  
✔ **Security enhancements**  

Try modifying these scripts for **your use case**! Let me know if you need **more scenarios**. 🚀