---
layout: post
title:  "Umpire fears the beard"
date:   2014-04-22 8:10:00
categories: games
---

San Francisco announcers and fans questioned the strikes umpire Seth Buckminster called during Brian Wilson's 8th inning appearance against the Giants. Then again, Buckminster's strike zone puzzled observers for most of the game.

The lefty aces for the Giants and Doders both missed out on called third strikes in the fourth inning. Madison Bumgarner thought he struck out Scott Van Slyke:

<div align="center">
    <img class="freezeframe" src="http://isbrianwilsonraging.com/post-assets/2014-04-22-strike-zone/bum.gif"/>
    <p class="caption">gif hover by <a href="http://freezeframe.chrisantonellis.com">FreezeFrame</a></p>
</div>

But it was a ball, and Van Slyke doubled a few pitches later.

Hyun-Jin Ryu gave an epic grimmace after Buckminster wouldn't ring up Buster Posey in bottom of the 4th inning.

<div align="center">
    <img class="freezeframe" src="http://isbrianwilsonraging.com/post-assets/2014-04-22-strike-zone/ryu.gif"/>
</div>

Modeling Buckminster's strike zone from the game suggests he was stingy on the corners, particularly up and away to lefties.

Caveats to this chart:
<ul>
    <li>the data source are 263 pitches that were not hit in play, but includes foul balls, which are consiered strikes (lookin at you, Pablo Sandoval)</li>
    <li>the chart draws an approximate rule book strike zone following the approach described in [Analyzing Baseball Data with R](https://github.com/maxtoki/baseball_R/blob/master/scripts/Chap7.ballstrikes.R#L97) by using the average height of MLB players and the width of home plate</li>
    <li>the chart is from the catcher's point of view</li>
</ul>

<div align="center">
    <img class="freezeframe" src="http://isbrianwilsonraging.com/post-assets/2014-04-22-strike-zone/contour.png"/>
    <p><span class="caption">Chart code <a href="https://github.com/danhillreports/isbrianwilsonraging/tree/master/data/2014-04-22-strike-zone">on GitHub</a></span></p>
</div>

Enter B-Weez, who made a grumpy Panda...

<div align="center">
    <img class="freezeframe" src="http://isbrianwilsonraging.com/post-assets/2014-04-22-strike-zone/panda.gif"/>
</div>

... then got an elusive outside strike from Buckminster against Buster Posey.

<div align="center">
    <img class="freezeframe" src="http://isbrianwilsonraging.com/post-assets/2014-04-22-strike-zone/posey.gif"/>
</div>

PitchFX put those pitches within the rulebook strike zone but also inside the toss-up regions of Buckminster's strike zone.

<div align="center">
    <img class="freezeframe" src="http://isbrianwilsonraging.com/post-assets/2014-04-22-strike-zone/strikes.png"/>
</div>

Recreating Buckminster's "called strike" probability chart with only Wilson's pitches makes a shapes like this:

<div align="center">
    <img class="freezeframe" src="http://isbrianwilsonraging.com/post-assets/2014-04-22-strike-zone/contour-bweez.png"/>
</div>

So Buckminster totally fears the beard.

[Baseball Savant umpire data](http://baseballsavant.com/apps/umpires.php?sort=umpire_name&year=2014) shows Buckminster calls balls on 4.89% of pitches in the strike zone, which appears to be among the top 10-ish in the difficult-to-read chart.

The [Analyzing Baseball Data with R blog](http://baseballwithr.wordpress.com/2014/04/21/are-umpires-becoming-less-merciful/) also has a post breaking down [umpire](https://blog.smu.edu/research/2011/09/06/white-favoritism-by-major-league-umps-lowers-minority-pitcher-performance-pay/) [tendencies](http://fivethirtyeight.com/features/four-strikes-and-youre-out/).

<div align="center"><blockquote class="twitter-tweet" lang="en"><p>Does it seem like MLB umpires change their strike zones based on the count? Check out how inconsistent they are: <a href="http://t.co/BippRkkfZS">pic.twitter.com/BippRkkfZS</a></p>&mdash; ESPN Stats &amp; Info (@ESPNStatsInfo) <a href="https://twitter.com/ESPNStatsInfo/statuses/454759360623689728">April 11, 2014</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script></div>

 FWIW the Sandoval and Posey pitches were on 3-1 and 2-0 counts, respectively.
