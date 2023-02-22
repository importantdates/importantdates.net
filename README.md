# importantdates.net

This repository contains the data used to generate the importantdates.net website.

## Quick links

 - [Request conference dates to be added/changed](https://github.com/importantdates/importantdates.net/issues/new/choose)
 - [Subscribe to the importantdates.net RSS feed](https://importantdates.net/feed/conferences.xml)
 - [importantdates.net website](https://importantdates.net/)
 - [Conference archives](https://importantdates.net/archive)

## Development

### Adding a new conference

To add a new conference, create a new file in the `_conferences` directory. The filename should be the conference name immediately followed by the year. The front matter of the file should contain the following fields:

 - `title`: The title of the conference
 - `website`: The URL of the conference website
 - `category`: The category of the conference. See the [Conference categories](#conference-categories) section for more information.
 - `timezone`: The timezone of the conference. This should be a [TZ database name](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). Use `AoE` for conferences that are not in a specific timezone.
 - `date`: The date of the conference in the format `YYYY-MM-DD`.
 - `published`: The date the conference was added to the website in the format `YYYY-MM-DD`.
 - `updated`: The date the conference was last updated in the format `YYYY-MM-DD`.
 - `important_dates`: A list of important dates for the conference. This should be a list of objects with the following fields:
   - `title`: The title of the date
   - `date`: The date of the date in the format `YYYY-MM-DD HH:MM:SS`.
 
### Conference categories

Conferences are categories into the following types:

 - `information-retrieval`
 - `natural-language-processing`

These categories are used to generate the feeds and calendar subscriptions. Conferences can unfortunately not be categorised into multiple categories due to how Jekyll generates feeds. To add a new category, edit the `_config.yml` file and add the category to the `categories` list.