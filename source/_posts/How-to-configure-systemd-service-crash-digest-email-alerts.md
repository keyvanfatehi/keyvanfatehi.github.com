---
title: How to configure systemd service crash digest email alerts
date: 2024-11-20 14:31:11
tags:
- systemd
- observability
---

By default, systemd does not notify you when a service crashes. However, you can use the `ExecStopPost` directive to trigger a command when a service stops, including after a crash. 

The problem with this approach is that frequent crashes can result in a large number of individual emails, which can be overwhelming. To address this, I've created [systemd-crash-digest](https://github.com/kfatehi/systemd-crash-digest) which accumulates crash notifications in a file and sends a single email digest at configurable intervals, reducing email overload while still providing essential failure summaries.

For full setup instructions, visit the [GitHub repository](https://github.com/kfatehi/systemd-crash-digest).
