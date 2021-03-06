---
title: "Constructions with Manim"
date: 2019-12-03T02:20:25Z
tags: ["Math", "Manim"]
publishDate: 2019-12-03
include_toc: false
---

Just a few fun constructions made in [Manim](https://github.com/3b1b/manim). Manim (Math Animation Engine) <cite href="https://github.com/3b1b/manim">is an animation engine for explanatory math videos</cite> made by [3Blue1Brown](https://www.3blue1brown.com) (Grant Sanderson) and available under the MIT license.

<!--more-->

**There's a few more that I'm currently working on. I'll add them here as they get finished.**

All the scripts used to make these videos are available [here](https://git.garykim.dev/gary-kim/trying-manim).  
The commands to generate each video is written under most of the videos.

## Compass and Straight Edge

#### Perpendicular Bisector

Given a line, draw its perpendicular bisector.

{{< video mp4="/res/large/manim-constructions/PerpendicularBisector.mp4" >}}
```bash
# To generate
manim constructions.py PerpendicularBisector
```

#### Parallel Line on a Point

Given a line and a point not on the line, draw a line that is parallel and goes through the give point.

{{< video mp4="/res/large/manim-constructions/ParallelLine.mp4" >}}

```bash
# To generate
manim constructions.py ParallelLine
```

#### Angle Bisector

Given an angle, draw its bisector.

{{< video mp4="/res/large/manim-constructions/AngleBisector.mp4" >}}

```bash
# To generate
manim constructions.py AngleBisector
```

#### Regular Pentagon Starting With a Side

Given a line, draw a regular pentagon for which the given line would be a side.

{{< video mp4="/res/large/manim-constructions/RegularPentagonWithSide.mp4" >}}

```bash
# To generate
manim constructions.py RegularPentagonWithSide
```

---
## 3D Constructions

What can you make in 3 dimensions with just spheres? 

#### Plane to Perpendicular Line

Given a plane, draw a line that is perpendicular to the plane.

{{< video mp4="/res/large/manim-constructions/PlaneToPerpendicularLine.mp4" >}}

```bash
# To generate
manim constructions.py PlaneToPerpendicularLine
```

#### Line to Perpendicular Plane

Given a line, draw a plane that is perpendicular to the line.

{{< video mp4="/res/large/manim-constructions/PerpendicularPlane.mp4" >}}

```bash
# To generate
manim constructions.py PerpendicularPlane
```

---
## Trying to figure out how to use Manim

#### Following Getting Started

Just trying to figure out what is possible with Manim. Mostly following the getting started guides.

{{< video mp4="/res/large/manim-constructions/EnterScene.mp4" >}}

```bash
# To generate
manim enter-scene.py EnterScene
```

#### GraphScene Example

Messing with `GraphScene` in Manim.

{{< video mp4="/res/large/manim-constructions/Graphing.mp4" >}}

```bash
# To generate
manim enter-scene.py Graphing
```

#### Trying to Make a 3D Scene (didn't really work)

First attempt at trying to use `Special3DScene`.

{{< video mp4="/res/large/manim-constructions/ThreeDObjects.mp4" >}}
