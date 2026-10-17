# Final Reflection: Mission 1 to Mission 10

## Our journey
| Mission | What we did | What we learned |
|---------|-------------|-----------------|
| 1 | [your summary] | [your lesson] |
| 2 | [your summary] | [your lesson] |
| 3 | [your summary] | [your lesson] |
| 4 | [your summary] | [your lesson] |
| 5 | [your summary] | [your lesson] |
| 6 | [your summary] | [your lesson] |
| 7 | [your summary] | [your lesson] |
| 8 | [your summary] | [your lesson] |
| 9 | [your summary] | [your lesson] |
| 10 | Built a WordPress + MySQL stack on an Ubuntu VM with Docker, UFW and Cron backups | How the pieces of an enterprise deployment fit together |

## Challenges in Mission 10
- The VirtualBox bridged networking driver was missing, so we used NAT with port forwarding.
- A low-resource VM froze during the image pull and interrupted MySQL's first initialization; we raised CPU/RAM and reset the stack.
- The backup script had a missing space before the database name; fixing it made the dump succeed.

## Key takeaways
[2 to 3 sentences in your team's own words]
