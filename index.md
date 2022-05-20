---
title: Important Dates
layout: home
---

This website contains a database of paper deadlines for computer science conferences.
Anyone can [contribute](https://github.com/importantdates/importantdates.net) to the database, which is hosted on GitHub.
Each conference entry automatically generates a calendar file that can be subscribed to or imported into any calendar client.
The full list of conferences can also be [subscribed](/feed/conferences.xml) to using RSS so you can be alerted when new conferences are added. 
Or, you can subscribe to individual topics, using the links below.

<p>Click on a topic to jump to a list of relevant conferences.</p>
{% assign conference_categories =  site.conferences | map: 'category' | uniq %}
{% assign upcoming_confs = site.conferences | where_exp: 'item','item.important_dates.last.date >= site.time' | sort: 'updated' | limit: 100 %}
<div>
    {% for category in conference_categories %}
    <span><a class="tag" href="#{{category}}">{{category}}</a></span>
    {% endfor %}
</div>
<hr/>
<div>
    {% for category in conference_categories %}
    <p id="{{category}}"><a href="#{{category}}">{{category}}</a>  (<a href="/feed/conferences/{{category}}.xml">subscribe to feed</a>)</p>
    <ul>
        {% for conference in upcoming_confs %}
        {% if conference.category == category %}
        <li><a href="{{conference.url}}">{{conference.slug}} &dash; {{conference.title}}</a></li>
        {% endif %}
        {% endfor %}
    </ul>
    {% endfor %}
</div>