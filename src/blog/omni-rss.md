# omni rss

18 August 2025

RSS is great ([here](https://pluralistic.net/2024/10/16/keep-it-really-simple-stupid/) is a good run down about why) and since I started using it this year it's awesome to have all my favourite sources of news, opinions and blog posts all in one place that I can control with no algorithm inbetween deciding what I get to see.

[Omni.se](https://omni.se/senaste) is also great. It's a Swedish news aggregator that collects both Swedish and international news and provides short overviews as well as links to sources and further reading. Unfortunately Omni does not have an RSS feed which is really a shame. I wrote to them and it seems like they have no intentions of opening one in the future either so I threw together a script to scrape the most recent articles from the site and generate an RSS feed myself. You can see the code [here](https://github.com/maxedahlgren/omni-rss) and the feed itself [here](../rss/omni.xml).

This project was actually the reason that I now have this website and domain since I needed a place to host the feed. Since I'm currently only paying for static hosting I'm running the script off an old phone and updating the feed every 15 minutes.

[home](../index.html)
