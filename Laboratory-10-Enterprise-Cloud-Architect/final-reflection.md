# Final Reflection: Mission 1 to Mission 10

## Our journey

| Mission | What we did | What we learned |
| --- | --- | --- |
| 1 | Set up project version control using Git and GitHub, and authored structured technical documentation using Markdown. | Foundational cloud concepts, service models (IaaS/PaaS/SaaS), and the importance of version control in cloud workflows. |
| 2 | Provisioned an Ubuntu Server virtual machine on a hypervisor, configuring network interfaces and basic OS settings. | Hypervisor resource allocation (CPU, RAM, Disk), networking modes (NAT vs. Bridged), and base VM management. |
| 3 | Evaluated major public cloud providers (AWS, Azure, GCP) and configured identity access management (IAM) policies. | Public cloud global infrastructure, service equivalencies, and applying the principle of least privilege in cloud IAM. |
| 4 | Installed Docker Engine, authored Dockerfiles, and managed application containers using Docker CLI. | The architecture of containerization vs. virtualization and how container images simplify application packaging. |
| 5 | Deployed MinIO and Nextcloud instances, configured S3 API integrations, and set up bucket management. | Differences between Block, File, and Object storage, alongside implementing the 3-2-1 backup strategy. |
| 6 | Orchestrated multi-container applications using Docker Compose and configured Nginx and HAProxy reverse proxies. | Service routing, load-balancing mechanisms, SSL termination, and cloud application deployment strategies. |
| 7 | Deployed Prometheus with Node Exporter metrics agents and established real-time Grafana dashboards. | System observability principles (Metrics, Logs, Traces) and performance troubleshooting using the USE method. |
| 8 | Applied server security measures by enforcing SSH key authentication, UFW firewall rules, and Fail2Ban. | Defense-in-depth principles, the Shared Responsibility Model, and server hardening against unauthorized access. |
| 9 | Authored operational Bash maintenance scripts, scheduled automated Cron backup jobs, and wrote standard operating procedures. | Scripting automation, task scheduling, self-healing system workflows, and operational documentation. |
| 10 | Built a WordPress + MySQL stack on an Ubuntu VM with Docker Compose and persistent volumes, secured it with UFW (deny incoming, allow 22 and 80), and automated nightly MySQL backups with a Cron job. | How virtualization, containers, security, and automation fit together into one enterprise deployment. |

## Challenges in Mission 10

- The VirtualBox bridged networking driver was missing, so we used NAT with port forwarding.
- A low-resource VM froze during the image pull and interrupted MySQL's first initialization; we raised CPU/RAM and reset the stack.
- The backup script had a missing space before the database name; fixing it made the dump succeed.

## Key takeaways

Progressing from core virtualization and version control to container orchestration gave us a complete, end-to-end view of modern cloud infrastructure management. Integrating security hardening, monitoring, and automated cron backups taught us that true cloud reliability relies as much on operational routine as it does on application setup. Ultimately, combining individual modular services into a cohesive, secure enterprise stack showed us how production-ready cloud environments function in practice.
