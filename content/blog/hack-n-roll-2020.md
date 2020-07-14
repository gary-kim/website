---
title: "Scrapdash - Hack & Roll 2020"
date: 2020-02-01T02:50:13Z
tags:
- Hackathon
- Hack & Roll
- Scrapdash
description: "What our team made at the Hack & Roll 2020 Hackathon: Scrapdash"
include_toc: false
---

Recently, I had the opportunity to go to [Hack & Roll 2020](https://hacknroll.nushackers.org) ([Devpost](https://hacknroll2020.devpost.com)), hosted by annually [NUS (National University of Singapore)](http://nus.edu.sg/) and organized by [NUS Hackers](https://www.nushackers.org/) in Singapore.

So first thing's first, what did we make? We made a browser extension called Scrapdash. The repository for it can be found [here](https://github.com/gary-kim/scrapdash) and the Devpost can be found [here](https://devpost.com/software/scrapdash).

{{< figure src="/res/large/hack-n-roll-2020/scrapdash-1.jpg" alt="Scrapdash Screenshot 1" class="centered" >}}

{{< figure src="/res/large/hack-n-roll-2020/scrapdash-2.jpg" alt="Scrapdash Screenshot 2" class="centered" >}}

{{< figure src="/res/large/hack-n-roll-2020/scrapdash-3.jpg" alt="Scrapdash Screenshot 3" class="centered" >}}


### Scrapdash

The name Scrapdash is actually a shortened version of `Scraper Dashboard`. Scrapdash let's you select an element in a site that you'd like to keep track of and provides a dashboard in which you can see the current state of these sites. You can also decide if you'd like just the text or a screenshot.

The screenshot functionality made it difficult to make an entirely self-contained extension. Even though it would be possible, we decided instead to make a server component to the extension that could do the actual scraping of sites off-site if configured.

Currently, only a development version of Scrapdash is available. There's quite a few issues to be fixed and features to be added before the first release. You can see the progress of that [here](https://github.com/gary-kim/scrapdash/issues/2). If you would like to play with it now, you can find the code [on GitHub](https://github.com/gary-kim/scrapdash). 

### Installing Scrapdash

To install Scrapdash, first clone the [GitHub repo](https://github.com/gary-kim/scrapdash) the run the following commands inside to create an unpacked version that you can load into your browser of choice.

For Chromium based browsers such as Chrome, run the following commands
```bash
npm i
npm run clean
npm run webpack:build:chromium
```

For Firefox based browsers, run the following commands
```bash
npm i
npm run clean
npm run webpack:build:firefox
```

This will create a a folder called `dist` in the directory that has the built extension, ready to install. If you'd like to make a `.zip` that can be submitted to extension repositories, you can run `npm run package`.

You can then install the extension as you normally would for unpacked extensions.

### Scrapdash Server

Scrapdash is made of two components, the extension and a server that can be hosted on the same system as the extension or, if you'd like, a remote server.

The easiest way to install is using the container image [available on Docker Hub](https://hub.docker.com/r/garykim/scrapdash-server). You can run this on a system with Docker installed with the following command:

```bash
docker run -p 3000:3000 --cap-add=SYS_ADMIN -d -e SCRAPDASH_SHARED_PASSWORD=sharedsecret garykim/scrapdash-server
```

You can also run the Node server directly by running the following commands in the host directory that you'll find in the project directory:

```bash
npm i
node main.js &
```
.

**If you set it up on a remote machine, make sure to put it behind a reverse proxy with `https` as your cookies will be sent to the server as well.**

You can then set up your Scrapdash server url and shared secret in the `Remotes` tab of your Scrapdash page.

{{< figure src="/res/large/hack-n-roll-2020/scrapdash-remotes.png" alt="Scrapdash Remotes Page" class="centered" >}}
