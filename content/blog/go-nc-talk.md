---
title: "Go Nextcloud Talk Library Release"
date: 2020-09-10
description: "Announcing the Go Nextcloud Talk library"
tags:
  - open source
  - golang
---

If you want to interact with [Nextcloud Talk](https://nextcloud.com/talk) easily in a Go project, you can use the Go Nextcloud Talk library.

You can find the godoc documentation [here](https://pkg.go.dev/gomod.garykim.dev/nc-talk?tab=doc).

Relevant Links:
* [Source Code](https://github.com/gary-kim/go-nc-talk)
* [godoc](https://pkg.go.dev/gomod.garykim.dev/nc-talk?tab=doc)


### How to use

#### Add the library to your project

```
GO111MODULE=on go get gomod.garykim.dev/nc-talk
```

### Current Usage

[Matterbridge](https://github.com/42wim/matterbridge) from version 1.18.0 onwards includes support for Nextcloud Talk. This is done using the Go Nextcloud Talk library.
