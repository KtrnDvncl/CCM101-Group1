# Operational Manual

**Project:** Enterprise Cloud (WordPress + MySQL) | **Course:** CCM101, BSIT 4H
**Instructor:** Jenkielyn C. Torres
**Team:** James Russel Lopez, Vicel Mae Peralta, Mark Lester Dela Cruz, Katrina Advincula

## 1. Environment
- Hypervisor: Oracle VM VirtualBox (4 CPUs, ~4 GB RAM, 25 GB disk)
- OS: Ubuntu Server 26.04 LTS, user `ccm101`, host `enterprise-cloud`
- Network: NAT with port forwarding: host 2222 -> VM 22 (SSH), host 8080 -> VM 80 (HTTP)
- Timezone: Asia/Manila

## 2. Access
    ssh -p 2222 ccm101@127.0.0.1
WordPress: http://127.0.0.1:8080

## 3. Deploy the stack
    cd ~/enterprise-cloud
    sudo docker compose up -d
    sudo docker compose ps
Both `enterprise_db` and `enterprise_web` must show **Up**. Data persists in the volumes `db_data` and `wp_data`.

## 4. Stop / restart
    sudo docker compose down      # stop (data kept)
    sudo docker compose up -d     # start again
Do not use `down -v`; it deletes the volumes and all data.

## 5. Firewall
UFW: default deny incoming, allow outgoing, allow 22/tcp and 80/tcp.
    sudo ufw status verbose

## 6. Automated backups
- Script: `/home/ccm101/enterprise-cloud/automation-script.sh`
- Schedule (root crontab): `0 2 * * *` (every night at 2:00 AM)
- **Backups are stored in `/home/ccm101/backups/`** as `db_backup_<date>.sql`
- Log: `/home/ccm101/backups/backup.log`
Manual run: `sudo ./automation-script.sh`

## 7. Restore a backup
    sudo docker exec -i enterprise_db mysql -uroot -psecure_root_password app_db < ~/backups/<file>.sql

## 8. Troubleshooting
- "Error establishing a database connection": wait for MySQL (`sudo docker compose logs db`), then `sudo docker compose restart web`.
- SSH refused: confirm the VM is running and the NAT forwarding rules exist.
