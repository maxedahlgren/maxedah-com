# Omni RSS

18 August 2025

RSS is great, ([read here](https://pluralistic.net/2024/10/16/keep-it-really-simple-stupid/) for a good run down about why) and since I started using it this year its awesome to have all my favourite sources of news, opinions and blog posts all in one place that I can control with no algorithm inbetween deciding what I get to see.

[Omni.se](omni.se/senaste) is also great, its a Swedish news aggregator that does a great job of collecting Swedish and international news with short overviews and links to sources and further reading. Unfortunately it does not itself have an RSS feed which is really a shame. I wrote to them and apparently they have no intentions of having one in the future either so I threw together a rather basic script that scrapes the most recent articles off the site and to generate an RSS feed myself. You can see the code [here](https://github.com/maxedahlgren/omni-rss) and the feed itself [here](../rss/omni.xml).

This project was actually the reason that I now have this website and domain since I needed a place to host the feed. Since I'm currently only paying for static hosting I am running the script off an old phone and only updating the feed every 15 minutes.

[Home](../index.html)
