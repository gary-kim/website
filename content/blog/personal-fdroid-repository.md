---
title: "Personal F-Droid Repository"
date: 2020-04-14T05:23:20Z
description: Making a personal F-Droid Android app repository
tags:
- Android
- F-Droid
- Self-hosting
include_toc: true
---

![Screenshot on Phone](/res/large/personal-fdroid-repo/screenshot-1.png)

On my Android phone, most of the apps installed are open source ones installed from the [F-Droid](https://f-droid.org) repository.
One of these apps that I use everyday is [NewPipe](https://github.com/teamnewpipe/newpipe), an <cite href="https://github.com/teamnewpipe/newpipe">libre lightweight streaming front-end</cite>, mainly used for watching Youtube.

One of the things that makes NewPipe special is that it does not rely on the YouTube API. By not relying on the YouTube API, the amount of data that Google can collect about your video watching habits on YouTube is reduced.
Unfortunately, it also means that any change to the YouTube frontend is likely to break NewPipe until the next update. Fortunately, thanks to the amazing work of everyone involved in the NewPipe project, whenever a change to the YouTube frontend does break the app, an update is soon to follow to use the new frontend.

There is one slight issue though: F-Droid can be slow with fetching updates and making it available in their repository.
The people working on F-Droid have been working to address this issue but still, with the current setup, it can take several days for an update to be available in the repository which means a few days of NewPipe not working.

Around January 2020, another update to the YouTube frontend broke NewPipe. Okay, not uncommon, there should be an update to fix the issue pretty soon. I checked the issue tracker to make sure that it was a known issue then decided to wait for a fix.
I waited a couple days and didn't find an update in F-Droid. I checked the repository for NewPipe and found an update with the fix but that update was not yet available in the F-Droid repository.

This was the point at which I decided it would make sense for me to create my own F-Droid repository so I can make faster updates for the apps that I do use.

I had been wanting to do this for a while anyways so I can have apps such as Signal through F-Droid as well ([Moxie has held strong in the opinion that it would not be wise to distribute Signal through any repository other than the Google Play Store](https://github.com/signalapp/Signal-Android/issues/127)) since I leave Google Play Store and Google Play Services disabled on all my devices.

### Making an F-Droid Repo

Making your own F-Droid repo is a relatively simply process. An F-Droid repo, similar to other Linux software repositories, is a directory of packages and metadata about those packages which can then be served with any web server. This could also be done through S3 if that's more your boat.

There's a simple to use script for this called [fdroidserver](https://gitlab.com/fdroid/fdroidserver).

You can create a new fdroid repo running the following in an empty directory.

```bash
fdroid init
```

3 important directories will be created: `repo`, `archive`, `tmp`. These are the directories that you must serve. [fdroidserver](https://gitlab.com/fdroid/fdroidserver) actually includes functionality for moving these directories onto a web server, although I personally find that it is easier to handle this with [Rclone](https://github.com/rclone/rclone).

To add a new app into your repository, move your apk file into your F-Droid repo directory and run `fdroid update -c` to create skeleton config files for your the apps you just added. It is also possible to have [fdroidserver](https://gitlab.com/fdroid/fdroidserver) compile apps for you with the proper libraries and the Android SDK.

Once your config files are created, you can generate your final repository by running the following command:

```bash
fdroid update --use-date-from-apk --rename-apks
```

The `--use-date-from-apk --rename-apks` flags, do what you'd expect them to, although if you don't want to use those flags, that also works great.

Once you have set up the repo, simply move the `repo` and `archive` directories onto a web server and add a url to those directories into the F-Droid app and you have a working F-Droid repo!

### Automating the Repo's Updates

Now obviously, no one want to have to do this whenever they want an update to one of their apps. In my case, I made the updates a CI run.

I have a self-hosted instance of the proprietary version of Drone CI that I use for many of my projects. I used to use the open source version of Drone but the open source version is very limited in features. Unfortunately, anything beyond to most basic CI features are part of the proprietary version. If a community driven open source CI project starts that is even half as intuitive and easy to use as Drone, I would switch to it in a second. 

I already had a way to publish websites on a subdomain from a CI run set up. 

![Drone CI Screenshot](/res/large/personal-fdroid-repo/fdroid-drone.png)

The CI is set up to run 4 main steps and runs every night to check for updates to apps in the repo.

##### Download the Repo

The first step is downloading the current state of the repo from the host. This is done via [Rclone](https://github.com/rclone/rclone).

##### Update Apps

During this step, the CI downloads the current versions of all the apps in the repo.

After downloading current versions of all the apps, the apps are deduplicated using `rdfind`.

##### Update Repo

`fdroidserver` is run to generate new indexes for updates to apps.

##### Push Repo

The final step is to push the new repo to the host using [Rclone](https://github.com/rclone/rclone).

### Final Words

The funny thing at the end of all this was that it turns out there is already an F-Droid repo by the NewPipe developers that is updated faster then the official F-Droid repo. The repo is not yet public but you can ask around on the NewPipe IRC and they'll give it to you.
The main problem I was attempting to address by creating my own F-Droid Repo could have been addressed in a way that was much easier but it was still a very nice learning experience.

I now have a personal F-Droid repo with NewPipe and a couple other apps that are not available through the F-Droid repos at <https://f-droid.garykim.dev/fdroid/repo/>.
