# Learn and love the command-line with youtube-dl, one day at a time


**Table of contents**

<!-- toc -->

- [tl;dr: What is `youtube-dl` and how do you use it?](#tldr-what-is-youtube-dl-and-how-do-you-use-it)
- [What/Why?](#whatwhy)
  * [Why does youtube-dl exist?](#why-does-youtube-dl-exist)
  * [What is "Terminal/shell" and the "command-line"?](#what-is-terminalshell-and-the-command-line)
    + [Old-fashioned video downloading](#old-fashioned-video-downloading)
  * [Why bother with youtube-dl, or the command-line at all?](#why-bother-with-youtube-dl-or-the-command-line-at-all)
- [Getting installed and ready](#getting-installed-and-ready)
  * [Windows](#windows)
  * [Mac](#mac)
  * [Command-line intro](#command-line-intro)
    + [How to open Terminal](#how-to-open-terminal)
    + [Keyboard things](#keyboard-things)
    + [Simple commands](#simple-commands)
    + [Make a `worky` directory](#make-a-worky-directory)
- [youtube-dl and command-line basics](#youtube-dl-and-command-line-basics)
  * [Downloading a tweeted video](#downloading-a-tweeted-video)
  * [What the output means](#what-the-output-means)
  * [Where to find other sources](#where-to-find-other-sources)
    + [Navigating your own file system](#navigating-your-own-file-system)
- [Common youtube-dl options](#common-youtube-dl-options)
  * [Starting out](#starting-out)
    + [See what version you have with `--version`](#see-what-version-you-have-with---version)
    + [List all the options and what they do with `--help`](#list-all-the-options-and-what-they-do-with---help)
    + [--quiet](#--quiet)
  * [Control how the downloaded video is named and saved](#control-how-the-downloaded-video-is-named-and-saved)
    + [--id](#--id)
    + [Simpler filenames with `--restrict-filenames`](#simpler-filenames-with---restrict-filenames)
  * [Finer-grained filename control with `-o`](#finer-grained-filename-control-with--o)
  * [Miscellaneous flags](#miscellaneous-flags)
    + [Batch download a list of URLs](#batch-download-a-list-of-urls)
    + [--no-mtime](#--no-mtime)
  * [Basics about flags](#basics-about-flags)
  * [Other links](#other-links)
  * [Resources](#resources)
  * [More fun](#more-fun)
- [TODOS](#todos)

<!-- tocstop -->

## tl;dr: What is `youtube-dl` and how do you use it?

Once you have youtube-dl installed, go into your operating system's **shell/Terminal** and type the name of the program – i.e. `youtube-dl` – followed by the URL to download from, e.g.

```sh
$ youtube-dl https://twitter.com/US_FDA/status/1288806553177321473
```

Hit **Enter**, and `youtube-dl` will run: it'll attempt to find the video in the URL you provided, and then download it to your computer:

<img src="assets/images/youtubedl-tldr.gif" alt="my example of using youtubedl">

Where does it download? Wherever you ran `youtube-dl`. In the example above, I ran it from my "Home" directory, and so that's where youtube-dl saves the video:

<img src="assets/images/youtubedl-tldr-homesave.png" alt="youtubedl-tldr-homesave.png">

How did it come up with that this long filename? By default, i.e. with no additional instructions from the user, and given a Twitter URL, youtube-dl will name the file based on the name of the tweeting user – **U.S. FDA**, followed by the text of the tweet, and then the unique ID of the tweet (found in the tweet's URL), and finally, the file type: `.mp4`

> U.S. FDA - Are you a restaurant owner preparing to reopen your business Help keep your food and customers safe by making sure you wear the appropriate face covering --1288806553177321473.mp4


## What/Why?

TK

### Why does youtube-dl exist?

The description on its [homepage](https://ytdl-org.github.io/youtube-dl/index.html) says it all: 

> youtube-dl is a command-line program to download videos from YouTube.com and a few more sites.

If you're a journalist, and your coverage topic involves what's happening online – including info conveyed through popular video, video which sometimes gets retracted/deleted – then being able to quickly and reliably capture video has an obvious usecase.

But you don't have to think in terms of work – maybe you just enjoy video, and you want to make a copy (if it's legal to do so) for later viewing, or to send around, or to do a transformative work.


Here's an example of real people using youtube-dl, courtesy of this [2016 Ottumwa Courier article titled, *What is a GIF*](https://www.ottumwacourier.com/news/local_news/what-is-a-gif/article_c1d84944-e92a-11e5-a095-eb219cc6cd71.html)

> In honor of National Teen Tech Week, the Ottumwa Public Library offered a session on GIF making for local teens Saturday afternoon.

> [OPL Assistant Director Ron Houk] walked each of the teens through the steps required for making GIFs by using movie trailers found on YouTube. He then had the kids copy the web address and use the program youtube-dl to download the video. OPL also provided flash drives for each person so they could access the program at home.

> Kirking said the process appears more complicated than it actually is. Like Houk, Kirking believes the more exposure teens get to certain programs, the easier it will be for them to expand on those original ideas in the future.



### What is "Terminal/shell" and the "command-line"?

TK Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores, animi? In neque architecto ex voluptatibus qui officiis illo, at a, soluta non, totam, dignissimos saepe reprehenderit maxime ut ducimus unde.





#### Old-fashioned video downloading 

Doing something via a command-line tool like youtube-dl is just another way to do something you might already have a way to do – and this includes "old-fashioned" point-and-clicking, whether it's through a program you download or a website in your web browser.

For example, a popular site that offers the service of helping you download Twitter video is: [https://twdownloader.net](https://twdownloader.net)


<a href="https://twdownloader.net">
    <img src="assets/images/twdownloadsite-home.png" alt="twdownloadsite-home.png">
</a>

The site takes you to download screen, which is basically buttons that directly link to the video file(s), which you can then download by clicking **"Save Link as..."**

<img src="assets/images/twdownloadsite-saveas.png" alt="twdownloadsite-saveas.png">

There are even bots that automate this process, such as [@DownloaderBot](https://twitter.com/DownloaderBot):

> I'm here to help you download twitter videos and gifs easily. Mention me in any tweet that contains a video or gif and I'll reply with link within seconds!

<a href="https://twitter.com/DownloaderBot">
    <img src="assets/images/twdownloaderbot-profile.png" alt="">
</a>

If you send a tweet mentioning @DownloaderBot and a tweet URL:

<img src="assets/images/twdownloaderbot-mention.png" alt="twdownloaderbot-mention.png">

– it responds with a link you can "Save Link as...":

TKTK


### Why bother with youtube-dl, or the command-line at all?

For starters, one of youtube-dl's big features is that it's been adapted to work with many video sites (here's its [list of supported sites](https://github.com/ytdl-org/youtube-dl/blob/master/docs/supportedsites.md)), including:

- Reddit https://www.reddit.com/r/test/comments/i0eyye/test_bash_cow_say_video_has_audio/
- IMDB movie trailers: https://www.imdb.com/trailers/


Do all these sites have corresponding services like `twdownloader.net`? Maybe, but it's probably a hassle to find out and keep track, especially for casual impromptu usage. 

*"But there's an app for that!"* – this is true: 

<img src="assets/images/apps-to-download-video-search.png" alt="apps-to-download-video-search.png">

But besides the hassle (and concerns) of downloading apps/programs to handle your web activity*, many of these apps use youtube-dl to do the work – i.e. the apps are basically a pretty graphical front-end.


> __Note__: So **youtube-dl** is most definitely an app/program that you're entrusting your web activity to when using it. But as an extremely popular – i.e. extremely _watched_ [open source application on Github](https://github.com/ytdl-org/youtube-dl/), there's at least a _little_ assurance that there's a community of users who know its code and are watching for problems. 
> 
> In any case, using **youtube-dl** by itself, versus youtube-dl + some closed app that provides a graphical wrapping around it, means you at least cut out a middleman.


Of course, the tradeoff is: you have to learn a spartan interface that suspiciously looks like "programming" or "code", and it's definitely a cognitive task. The rest of this walkthrough is to make the case that the work is worth it.



## Getting installed and ready

### Windows

I haven't tried this myself, but apparently it's as easy as 

### Mac

Use homebrew:

```sh
$ brew install homebrew
```


If none of the above work, the youtube-dl homepage has a page of installation options


https://twitter.com/dancow/status/1286449743074414592



### Command-line intro

#### How to open Terminal

#### Keyboard things

- tab to autocomplete
- up to go through history
- whitespace matters!

#### Simple commands

- `open .` on macOS to open a directory
- `open file.mp4` to open a file with the dedicated app

- ls to list files
- how to cd
    - cd ~ (to get home)
    - cd ~/Desktop (to get to your desktop)
- how to mkdir


#### Make a `worky` directory

```sh
$ mkdir ~/Desktop/worky
$ cd ~/Desktop/worky
```

## youtube-dl and command-line basics


### Downloading a tweeted video


https://twitter.com/dancow/status/1288678874084265985

Or if you prefer White House media: https://twitter.com/WhiteHouse/status/1286065522220716032

```sh
$ youtube-dl https://twitter.com/dancow/status/1288678874084265985
```


### What the output means


### Where to find other sources





#### Navigating your own file system


## Common youtube-dl options

See a list of options here:

https://github.com/ytdl-org/youtube-dl#options

### Starting out

#### See what version you have with `--version`

    --version                        Print program version and exit


#### List all the options and what they do with `--help`

    -h, --help                       Print this help text and exit


#### --quiet

    -q, --quiet                      Activate quiet mode



### Control how the downloaded video is named and saved

#### --id

    --id                             Use only video ID in file name


#### Simpler filenames with `--restrict-filenames`

    --restrict-filenames             Restrict filenames to only ASCII
                                     characters, and avoid "&" and spaces in
                                     filenames



### Finer-grained filename control with `-o`

    -o, --output TEMPLATE            Output filename template, see the "OUTPUT
                                     TEMPLATE" for all the info



### Miscellaneous flags


#### Batch download a list of URLs

    -a, --batch-file FILE            File containing URLs to download ('-' for
                                     stdin), one URL per line. Lines starting
                                     with '#', ';' or ']' are considered as
                                     comments and ignored.


#### --no-mtime 


    --no-mtime                       Do not use the Last-modified header to set
                                     the file modification time



### Basics about flags

- can *usually* be in any order


Combinations:

youtube-dl -a vidlist.txt --id
### Other links

https://www.pbs.org/show/copyright-educators/
https://www.pbs.org/video/pbs-socal-education-copyright-for-educators-fair-use/


### Resources

https://www.reddit.com/r/youtubedl/

[Working with YouTube and Extracting Audio](https://www.linuxjournal.com/content/working-youtube-and-extracting-audio)

### More fun

https://github.com/kohler/gifsicle



## TODOS
