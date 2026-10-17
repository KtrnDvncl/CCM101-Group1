# Mission 10: The Enterprise Cloud Architect

**Course:** CCM101 - Cloud Computing | **Section:** BSIT 4H
**Instructor:** Jenkielyn C. Torres
**Team:** James Russel Lopez, Vicel Mae Peralta, Mark Lester Dela Cruz, Katrina Advincula

## Overview
A production-style cloud infrastructure built from scratch: a WordPress + MySQL stack running in Docker on an Ubuntu Server VM (VirtualBox), secured with UFW and protected by automated nightly database backups.

## Requirements Covered
| # | Requirement | Implementation |
|---|-------------|----------------|
| 1 | Base infrastructure | VirtualBox VM, Ubuntu Server 26.04 LTS |
| 2 | Remote access and deployment | SSH + Docker Compose (WordPress, MySQL, persistent volumes) |
| 3 | Security | UFW: default deny incoming; allow 22/tcp and 80/tcp |
| 4 | Automation | Cron runs `automation-script.sh` daily at 2:00 AM |
| 5 | Documentation | This folder |

## Files
- `docker-compose.yml` - stack definition
- `automation-script.sh` - database backup script
- `architecture-diagram.png` - architecture diagram
- `operational-manual.md` - deployment and operations guide
- `final-reflection.md` - reflection, Missions 1 to 10
