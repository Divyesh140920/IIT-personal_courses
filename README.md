# IIT Personal Courses

Coursework, labs, and projects from my graduate studies at the **Illinois
Institute of Technology** (MS, Information Technology & Management). This
repository collects the work I completed, organized by course, as a record of
what I built and learned.

> 👋 A short personal introduction lives in [ABOUT.md](./ABOUT.md).

## Contents

| Area | What's inside |
|------|---------------|
| [ITMO-556 — System & Network Administration](#itmo-556--system--network-administration) | Weekly Linux labs, a midterm, a tooling assignment, and an automation final project. |
| [CST-projects](./CST-projects) | A Python/Tkinter desktop app that fetches and visualizes live cryptocurrency market data. |

---

## ITMO-556 — System & Network Administration

A hands-on Linux/Unix system administration course worked through
chapter by chapter. Each week combines three pieces:

- **`lab/`** — the practical lab, with commands run and screenshots of results.
- **`rq/`** — reading questions for that chapter.
- **`podcast/` or `pc/`** — notes from the week's podcast/lecture.

### Weekly labs

| Week | Chapter | Topic |
|------|---------|-------|
| [Week 02](./ITMO-556/week-02) | Ch 02 | Technology landscape / getting started |
| [Week 03](./ITMO-556/week-03) | Ch 03 | Virtualization — installing VMs in VirtualBox |
| [Week 04](./ITMO-556/week-04) | Ch 04 | Installing software, desktop environments & package installs |
| [Week 05](./ITMO-556/week-05) | Ch 05 | Shell navigation, file creation & modification |
| [Week 06](./ITMO-556/week-06) | Ch 06 | Working at the command line |
| [Week 07](./ITMO-556/week-07) | Ch 07 | `vi`/`vim` and shell scripting ([vimtutor notes](./ITMO-556/week-07/vim_tutor)) |
| [Week 08](./ITMO-556/week-08) | Ch 08 | Shell scripting & positional parameters |
| [Week 09](./ITMO-556/week-09) | Ch 09 | sudo/root, `journald` logging, user accounts & SSH |
| [Week 11](./ITMO-556/week-11) | Ch 10 | `systemd` — managing processes, services & timers |
| [Week 12](./ITMO-556/week-12) | Ch 11 | Storage — LVM, Btrfs/ZFS filesystems & mount units |
| [Week 14](./ITMO-556/week-14) | Ch 12 | System setup & administration assessment |

### Assessments & projects

| Item | Description |
|------|-------------|
| [Midterm](./ITMO-556/midterm) | Shell scripting with positional parameters. |
| [Tooling assignment](./ITMO-556/tooling_assignment) | Package management on Windows with Chocolatey. |
| [Final project](./ITMO-556/final-project) | **Automated server deployment** — build and provision servers with **Vagrant** and **Packer**, install software via shell scripts, and configure a MySQL database using **secrets management**. Includes a WordPress server build. |

The final project is the capstone: it ties the course's manual administration
skills into a repeatable, automated infrastructure workflow.

---

## CST-projects

A standalone [Crypto Market Explorer](./CST-projects) — a Tkinter desktop app
that pulls live data from the CoinGecko API, shows the top market in a table,
and plots prices and 24-hour changes. See its
[README](./CST-projects/readme.md) for setup and details.

---

## Notes

- Lab write-ups are my own coursework and are kept as submitted (with their
  original screenshots), so this repository doubles as a study reference.
- Build artifacts, VM images, and secrets are excluded via
  [`.gitignore`](./.gitignore).
