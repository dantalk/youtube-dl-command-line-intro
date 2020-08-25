## Common youtube-dl options

See a list of options here:

https://github.com/ytdl-org/youtube-dl#options

### Starting out

#### See what version you have with `--version`

    --version                        Print program version and exit


#### List all the options and what they do with `--help`

    -h, --help                       Print this help text and exit


#### Reduce the output to screen with `--quiet`

If you're doing a lot of work with youtube-dl, especially with archiving content that you might already have or are just backing up or whatever, you might get tired of seeing all the info youtube-dl barfs to screen. 


    -q, --quiet                      Activate quiet mode

Using `-q` reduces the output info to basically nothing...which is why "quiet" mode can be unoptimal for command-line novices, as youtube-dl basically gives you no feedback about what happened, or what got downloaded (you should still get an error, if you tried doing something really wrong, like passing in a non-valid URL) 


#### Do "nothing" with `--skip-download`

    --skip-download                  Do not download the video

youtube-dl's list of options *should* vast and intimidating; I personally haven't used more than 1-5% of them (nevermind memorized them). It's hard to explain why there are so many options without talking about the myriad of usecases and situations that people use youtube-dl for.

But some options seem downright useless, like `--skip-download`



### Control how the downloaded video is named and saved

#### --id

    --id                             Use only video ID in file name


#### Simpler filenames with `--restrict-filenames`

    --restrict-filenames             Restrict filenames to only ASCII
                                     characters, and avoid "&" and spaces in
                                     filenames



### Filename and filing options 

#### Finer-grained filename control with `-o` and templating


    -o, --output TEMPLATE            Output filename template, see the "OUTPUT
                                     TEMPLATE" for all the info

A full list of template options can be [found here](https://github.com/ytdl-org/youtube-dl/blob/master/README.md#output-template).

I think these are the most relevant and commonly-used template options:

- `ext` (string): Video filename extension
- `id` (string): Video identifier
- `title` (string): Video title
- `uploader` (string):  Full name of the video uploader
- `upload_date` (string): Video upload date (YYYYMMDD)
- `url` (string): Video URL

However, I often use `-o` without *any* options, when I want to keep things simple and already know what video format it comes in. For example, I believe all of Twitter video has a `.mp4` extension, so I can just do:

```sh
$ youtube-dl -o "testvid.mp4" https://twitter.com/US_FDA/status/1288806553177321473
```


Here's how to download a video from Reddit, using the unique ID in the URL and whatever format Reddit delivers video in: 

With Reddit, I don't know for sure what video formats it might put out. Here's how I'd set the file name but leave the extension for youtube-dl to fill out:



```sh
youtube-dl -o 'mytest.%(ext)s' https://www.reddit.com/r/test/comments/i0eyye/test_bash_cow_say_video_has_audio/
```

Or, if I'm too lazy to come up with a name for the video, I can have a template that includes the `id` of the video – in the case of Twitter/Reddit, the unique ID that's in the URL:

```sh
youtube-dl -o '%(id)s.%(ext)s' https://twitter.com/US_FDA/status/1288806553177321473
```

Note that doing `-o '%(id)s.%(ext)s'` is essentially the same as using the simple `--id` option. But a common and good reason for using `-o` might be wanting to save a file to a different directory than your current working directory:

```sh
mkdir -p tweeted

youtube-dl -o 'tweeted/%(id)s.%(ext)s' https://twitter.com/US_FDA/status/1288806553177321473
```

-------


#### Batch download a list of URLs from file

    -a, --batch-file FILE            File containing URLs to download ('-' for
                                     stdin), one URL per line. Lines starting
                                     with '#', ';' or ']' are considered as
                                     comments and ignored.

For most people, being able to download videos one URL at a time is probably good enough. In fact, I've never had a need to do a batch download until writing this tutorial. 

But there may be a day when a lot of stuff is happening, enough that you're using a spreadsheet to track URLs. And now you want a slightly more convenient way to get everything than to run every command manually.

That's a usecase for the `--batch-file` option, or `-a` for short.

Let's say I have a list of URLs like this:

```
https://twitter.com/dancow/status/1288678874084265985
https://twitter.com/US_FDA/status/1288806553177321473
https://twitter.com/WhiteHouse/status/1286065522220716032
https://www.reddit.com/r/newsbloopers/comments/hp9xff/serious_interview_turns_to_giggles_thanks_to_a/
https://www.imdb.com/video/vi2287451929
https://www.facebook.com/63811549237/videos/10155075989594238
https://www.reddit.com/r/test/comments/i0eyye/test_bash_cow_say_video_has_audio/
https://twitter.com/Twitter/status/560070183650213889
```


And I've saved that list to a plain text file ([read this prior section if you don't have a text editor yet](#marker-plain-text-how)) in my current working directory as `vidlist.txt`


I should be able to download all of those URLs with a single command:

```sh
youtube-dl -a vidlist.txt
```

Or, if I want them downloaded in a more orderly fashion, I can add the `-o` for a filename template, e.g. video id and upload date:

```sh
youtube-dl -a vidlist.txt  -o "%(upload_date)s-%(id)s.%(ext)s"
```



### Miscellaneous flags



#### Use `--no-mtime` to update the last-modified attribute of downloaded videos

If you use youtube-dl to download a really old video, by default, youtube-dl will give it a "Last modified date" equal to when the video was uplaoded.


    --no-mtime                       Do not use the Last-modified header to set
                                     the file modification time

If you're like me, in which you have your files sorted by last-modified-most-recent, and you're downloading files into a folder with a ton of other files, e.g. `~/Downloads` – then it's kind of annoying to look for a video you *just* downloaded, expecting it to be at the top by "most recent" but finding it in the middle because the video was produced years ago.

Using the `--no-mtime` flag will set the file's last-modified time to when you downloaded it. 

```sh
youtube-dl --no-mtime https://twitter.com/Twitter/status/560070183650213889
```



#### Listing and specifying formats

    -f, --format FORMAT              Video format code, see the "FORMAT
                                     SELECTION" for all the info
    -F, --list-formats               List all available formats of requested
                                     videos

Various sites use different media formats, and some of these sites use more than one format for whatever reason. Speaking for myself, I'm usually fine with whatever youtube-dl picks for me. But just in case you're curious what's available for a given URL.

For example, for this reddit URL:

```sh
youtube-dl -F 'https://www.reddit.com/r/test/comments/i0eyye/'
```

(Note that `-F` only outputs the list of media formats; it does *not* attempt to download any video or other files)

From the output, we see that reddit provides a variety of video formats/sizes, and in fact, also serves audio and video separately:

```
[RedditR] i0eyye: Downloading JSON metadata
[Reddit] 8v1ezoig0xd51: Downloading m3u8 information
[Reddit] 8v1ezoig0xd51: Downloading MPD manifest
[info] Available formats for 8v1ezoig0xd51:
format code         extension  resolution note
hls-0-audio_0       mp4        audio only 
hls-1-audio_1       mp4        audio only 
dash-audio_0_28017  m4a        audio only DASH audio   28k , m4a_dash container, mp4a.40.2 (48000Hz)
dash-video_26790    mp4        172x76     DASH video   26k , mp4_dash container, avc1.4D400D, 30fps, video only
dash-video_68389    mp4        426x190    DASH video   68k , mp4_dash container, avc1.4D401E, 30fps, video only
hls-97              mp4        480x214      97k , avc1.42001e, video only
hls-103             mp4        400x178     103k , avc1.42001e, video only
dash-video_104434   mp4        640x286    DASH video  104k , mp4_dash container, avc1.4D401E, 30fps, video only
hls-111             mp4        480x214     111k , avc1.42001e, video only
hls-117             mp4        400x178     117k , avc1.42001e, video only (best)
```

If for some reason we wanted the lowest quality video – a 172x76 resolution mp4 video – we use the `-f` flag and refer to the corresponding format code, e.g. `dash-video_26790`:

```
youtube-dl -f 'dash-video_26790' -o yuck.mp4  'https://www.reddit.com/r/test/comments/i0eyye/'
```





#### Download the associated metadata

If you're archiving online video, you might find it useful to also keep download associated assets and metadata. youtube-dl has some options for that:


To save a copy of a video thumbnail, often the URL's preview image:

    --write-thumbnail                Write thumbnail image to disk

To write a whole bunch of metadata in JSON format to a JSON text file:

    --write-info-json                Write video metadata to a .info.json file

For sites that have "description" fields, this saves it to a text file with a `.description` extension

    --write-description              Write video description to a .description
                                     file



```sh
mkdir -p twitfoo

youtube-dl -o twitfoo/test.mp4 --write-thumbnail --write-info-json --write-description 'https://twitter.com/Twitter/status/560070183650213889'
```


#### Download subtitles

A few sites supported by youtube-dl have subtitles. YouTube is an obvious example. Various news sites do too.

To download a URL's video and any and all of its subtitles files:

```sh
youtube-dl -o abcnews.mp4 --all-subs https://abcnews.go.com/Health/video/trump-encourages-americans-donate-plasma-72086787
```


Alternatively, you also have the option to download just the subtitle files, and no video/media, by using the `--skip-download` option:

```sh
youtube-dl --skip-download --all-subs https://abcnews.go.com/Health/video/trump-encourages-americans-donate-plasma-72086787
```

In the output, we can see that no video file has been saved, just a `.ttml` file:

```
[abcnews:video] Downloading Akamai AMP feed
[abcnews:video] 72086787: Downloading f4m manifest
[abcnews:video] 72086787: Downloading m3u8 information
[info] Writing video subtitles to: Trump encourages Americans to donate plasma-72086787.en.ttml
```


If you open that `ttml` file in a text editor, you can see that it's some kind of timestamped transcript format:

```
<caption><tt><body><div><p begin="00:00:00.009" dur="00:00:03.064" >
They're doing magnificent job at the recruit some delighted to </p>
<p begin="00:00:03.073" dur="00:00:04.349" >
be here. To discuss the remarkable progress being made in </p>
<p begin="00:00:08.079" dur="00:00:06.999" >
the development of close plaza so important therapies. These therapies </p>
<p begin="00:00:14.139" dur="00:00:05.001" >
tranche is powerful antibodies. From the blood of recovered patients </p>
<p begin="00:00:19.239" dur="00:00:05.009" >
to help treat those battling the current infection. That we </p>
```


