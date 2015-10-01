# quick and dirty pm2 example on centos

This will get you started on a centos server with a node process manager with a
basic app in `/opt/app/`.

If you want to test this out locally, install [docker
machine](https://docs.docker.com/machine/), pull this repo, cd into it, then run
this:

```
docker build -t pm2 .
docker run -it pm2 bash
```


You'll be inside a centos machine with [pm2](https://github.com/Unitech/pm2) (a
nice process manager) installed.  pm2 handles startup from boot, restart,
process daemon and logrote.

From the command line, run `pm2` to get instructions for running your software.

The command I used to run the app is

```bash
pm2 start /opt/app/app.js -i 0 --name app
```

Here are the answers to your questions:

## Where are the log files at?

Read the docs to find out where pm2 runs logs

## How do the log files get rotated?

pm2 handles logrotate

## How does the NodeJS server get started on system boot?

pm2 can be told to auto-start the services, you have to run pm2 as a daemon, but
that's in the instructions too.

## How is the NodeJS server stopped?

If you ran the command above to start it, you can stop it like

```
pm2 stop app
```

## How would software updates be handled?

By syadmins, yo!  Or, with a git pull and `pm2 restart app` command.

Easy cheezy!
