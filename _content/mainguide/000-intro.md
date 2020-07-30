# Learn and love the command-line with youtube-dl, one day at a time


**Table of contents**

<!-- toc -->



## tl;dr: What is `youtube-dl` and how do you use it?

Once you have youtube-dl installed, go into your operating system's **shell/Terminal** and type the name of the program – i.e. `youtube-dl` – followed by the URL to download from, e.g.

```sh
$ youtube-dl https://twitter.com/US_FDA/status/1288806553177321473
```

Hit **Enter**, and `youtube-dl` will run: it'll attempt to find the video in the URL you provided, and then download it to your computer:

<img src="guides/assets/images/youtubedl-tldr.gif" alt="my example of using youtubedl">

Where does it download? Wherever you ran `youtube-dl`. In the example above, I ran it from my "Home" directory, and so that's where youtube-dl saves the video:

<img src="guides/assets/images/youtubedl-tldr-homesave.png" alt="youtubedl-tldr-homesave.png">

How did it come up with that this long filename? By default, i.e. with no additional instructions from the user, and given a Twitter URL, youtube-dl will name the file based on the name of the tweeting user – **U.S. FDA**, followed by the text of the tweet, and then the unique ID of the tweet (found in the tweet's URL), and finally, the file type: `.mp4`

> U.S. FDA - Are you a restaurant owner preparing to reopen your business Help keep your food and customers safe by making sure you wear the appropriate face covering --1288806553177321473.mp4


## What/Why???



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
    <img src="guides/assets/images/twdownloadsite-home.png" alt="twdownloadsite-home.png">
</a>

The site takes you to download screen, which is basically buttons that directly link to the video file(s), which you can then download by clicking **"Save Link as..."**

<img src="guides/assets/images/twdownloadsite-saveas.png" alt="twdownloadsite-saveas.png">

There are even bots that automate this process, such as [@DownloaderBot](https://twitter.com/DownloaderBot):

> I'm here to help you download twitter videos and gifs easily. Mention me in any tweet that contains a video or gif and I'll reply with link within seconds!

<a href="https://twitter.com/DownloaderBot">
    <img src="guides/assets/images/twdownloaderbot-profile.png" alt="">
</a>

If you send a tweet mentioning @DownloaderBot and a tweet URL:

<img src="guides/assets/images/twdownloaderbot-mention.png" alt="twdownloaderbot-mention.png">

– it responds with a link you can "Save Link as...":

TKTK


### Why bother with youtube-dl, or the command-line at all?

For starters, one of youtube-dl's big features is that it's been adapted to work with many video sites (here's its [list of supported sites](https://github.com/ytdl-org/youtube-dl/blob/master/docs/supportedsites.md)), including:

- Reddit https://www.reddit.com/r/test/comments/i0eyye/test_bash_cow_say_video_has_audio/
- IMDB movie trailers: https://www.imdb.com/trailers/


Do all these sites have corresponding services like `twdownloader.net`? Maybe, but it's probably a hassle to find out and keep track, especially for casual impromptu usage. 

*"But there's an app for that!"* – this is true: 

<img src="guides/assets/images/apps-to-download-video-search.png" alt="apps-to-download-video-search.png">

But besides the hassle (and concerns) of downloading apps/programs to handle your web activity*, many of these apps use youtube-dl to do the work – i.e. the apps are basically a pretty graphical front-end.


> __Note__: So **youtube-dl** is most definitely an app/program that you're entrusting your web activity to when using it. But as an extremely popular – i.e. extremely _watched_ [open source application on Github](https://github.com/ytdl-org/youtube-dl/), there's at least a _little_ assurance that there's a community of users who know its code and are watching for problems. 
> 
> In any case, using **youtube-dl** by itself, versus youtube-dl + some closed app that provides a graphical wrapping around it, means you at least cut out a middleman.


Of course, the tradeoff is: you have to learn a spartan interface that suspiciously looks like "programming" or "code", and it's definitely a cognitive task. The rest of this walkthrough is to make the case that the work is worth it.

