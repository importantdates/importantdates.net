---
title: Important Dates Archive
layout: home
---

This page contains the list of all past, current, and future conferences that appear in the database.

<p>Click on a topic to jump to a list of relevant conferences.</p>
{% assign conference_categories =  site.conferences | map: 'category' | uniq %}
{% assign archive_confs = site.conferences | sort: 'published' | reverse %}
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
        {% for conference in archive_confs %}
        {% if conference.category == category %}
        <li>
            {% if conference.important_dates.size == 0 or conference.important_dates == null %}
            <span>(TBD)</span>
            {% elsif conference.important_dates.last.date <= site.time %}
            <span>(archived)</span>
            {% endif %}
            <a href="{{conference.url}}"> {{conference.slug}} &dash; {{conference.title}}</a>
        </li>
        {% endif %}
        {% endfor %}
    </ul>
    {% endfor %}

</div>