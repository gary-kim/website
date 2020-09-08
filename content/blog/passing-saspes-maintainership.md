---
title: "SAS Powerschool Enhancement Suite has a new maintainer"
date: 2020-09-08
tags:
    - open source
    - firefox
    - chromium
    - saspes
description: "SAS Powerschool Enhancement Suite, its history, and its new maintainer"
---

### What is SAS Powerschool Enhancement Suite

SAS Powerschool Enhancement Suite (better known as SAS PES) is a browser extension for Firefox and Chromium-based browsers that adds many convenience features when using Powerschool at Singapore American School as a student. If you want to learn more about the project, please visit our [README](https://github.com/sas-fossdev/saspes#readme).

Relevant links:
- [Source Code](https://github.com/sas-fossdev/saspes)
- [Firefox Extension Download](https://github.com/sas-fossdev/saspes/releases)
- [Chrome Web Store Entry](https://chrome.google.com/webstore/detail/sas-powerschool-enhanceme/ehnkngeidilnoabcjjimkomcggndbhnk)

|       |       |       |       |
| :---: | :---: | :---: | :---: |
| {{< figure src="/res/large/projects/saspes/1.png" alt="Main Screenshot" class="centered" >}} | {{< figure src="/res/large/projects/saspes/2.png" alt="Second Screenshot" class="centered" >}} | {{< figure src="/res/large/projects/saspes/3.png" alt="Third Screenshot" class="centered" >}} | {{< figure src="/res/large/passing-saspes-maintainership/image1.png" alt="Forth Screenshot" class="centered" >}}

### New Maintainer

As I am no longer associated with the school, I felt that it would be better if someone that was still associated with the school continued to maintain the project. Someone that is still in touch with the students, faculty, and environment of the school would be far better suited to continue to evolve the project to serve its users best. To that end, I have passed the role of maintainer onto [Suhas Hariharan](https://github.com/suhas-13). Suhas has made several new features and fixes in the extension that many users actively use. 

I will still be available as a co-maintainer to advise and help fix issues but Suhas is now the primary maintainer.

### Some History

Developing this extension has been quite the journey for me. I started the project while learning Javascript and the project evolved with me. As I learned more about Javascript and the tooling available, the project gradually became more capable and more complex in both its code and its tooling.

The idea for the extension was originally by [Alan Chang](https://tcode2k16.github.io/blog/) ([@tcode2k16](https://twitter.com/tcode2k16)), a great friend of mine. The idea for the extension at first was rather simple. There was no way to view the current semester GPA in Powerschool but everyone knew how to calculate it themselves. That calculation was simple so why not do it automatically and put it in the page using an extension? Alan quickly made a prototype of this idea. 

I was very intrigued when I saw the extension and the idea to improve the experience of students using extensions. I started working on an extension to do something similar for Schoology, another service that Singapore American Students used (You can still see the remnants of this attempt [here](https://github.com/gary-kim/sasses)). After a while, it became clear that maintaining this extension was going to be painful due to the way that Schoology is built, especially with my limited knowledge in Javascript at the time. I gave up on the idea for a bit thinking that I'd come back to it later. I asked Alan at this point if he was planning to release the extension publicly and, if not, if I could use his idea for a Powerschool extension and try to develop it further. He said he'd be fine with me developing his idea further so I got to work.

I came up with some ideas about features that I think people would find useful and implemented a few basic ones. I quickly got a few friends to be beta testers for my extension. They would provide me feedback in the form of ideas and bugs. Their help, ideas, and bug reports were invaluable. I implemented many of these ideas and continued to improve upon features already in the extension with the help of my beta testers such as Sanjo Ray. Thank you for helping make the project so much more successful by giving valuable feedback.

The extension was then publicly released in November of 2018. News of the release spread by word of mouth between students and within 2 weeks, more than 100 people had installed the extension. Within half a year, more than half the students in the high school had the extension and it became more common to see students with the extension than without.

The project kept evolving from that point as I learned more about Javascript, its tooling, and its community. I learned about the more modern Javascript features I could use if I migrated to using [Babel](https://babeljs.io/), so I did. I learned about how [Webpack](https://webpack.js.org/) could simplify my dependency situation, so the project migrated to it. I learned how to use [Vue](https://vuejs.org) as I got involved in the [Nextcloud](https://nextcloud.com) project, so large parts of the extension was migrated to [VueJS](https://vuejs.org).

In early 2019, I realized that development could be much quicker and better with more people involved so started working to make the project more inviting to potential contributors. Suhas was one of the people that started contributing significantly.

It was a fun and exceptionally educational ride that taught me Javascript in production, continuous integration, and the development cycle/relationship that consisted of not just me, but the testers and users that provided the insight needed to improve the project.

**Thank you to everyone that contributed code to the project. Thank you to everyone that provided me ideas, gave me feedback, and tested the project. Thank you to everyone that used the project and made it such a success! It has been a fun ride and one that I would repeat in a heartbeat. Have fun and stay safe!**

### Milestones

A lot of the milestones are visible in the project [changelog](https://github.com/sas-fossdev/saspes/blob/master/CHANGELOG.md).

* 2018-09-15: First Version with semester GPA display. At this point, the project was in a private repo.
* 2018-09-25: Ability to view final percent of classes
* 2018-09-25: Around this time, the first beta testers came on. The project was in a closed alpha state at this point but having beta testers to tell me how useful the features I was developing were and what new features would be nice to have was invaluable.
* 2018-11-02: Addition of the hypothetical grade calculator
* 2018-11-04: First formal bug report form a tester. A beta tester informed me that the extension would fail to work properly if they took a course that had more than one instructor.
* 2018-11-07: Addition of final percent indicators on the main page
* 2018-11-15: First logo design. I originally tried to find a graphics designer that would be willing to design a logo for the extension but could not find one so I made a simple one in photoshop.
* 2018-11-18: Logo design finalized.
* **2018-11-19: PUBLIC RELEASE!!!!**
* 2018-12-25: Public release of source code. The source code was now visible for everyone but was not yet open source as the code was distributed unlicensed.
* 2019-01-22: **Open sourced!** Source code relicensed to GPL-3.0.
* 2019-04-24: Addition of the hypothetical assignment calculator.
* 2019-09-18: Many important things got released on this date
    * Migration to use npm for dependencies
    * Migration to Webpack
    * Beginning of migration to VueJS
    * Relicensed source code to AGPL-3.0-only
* 2019-10-07: First pull request from another developer
* 2020-04-17: Suhas added the ability to calculate cumulative GPA including the effect of the current semester.
* 2020-09-25: Primary Maintainership officially passed to Suhas.

