# Daily Activity Log

If you are here, you probably already know about the [**Daily Activity Log Concept**](https://github.com/joebew42/daily-activity-log-concept) and you want to start your daily activity log. You can fork this repository as your github pages repository and start to share your daily activities with the Internet. If you already have a github pages repository, you can use this repo as subfolder of your personal pages (i.e. `http://username.github.io/daily/events.xml`).

## Steps to get started

- Fork this repository
- Rename the repository to `[your_github_username].github.io`
- Clone the repository to your computer
- Add new events to `events.xml`
- Commit & Push
- Visit your daily activity log at `http://[your_github_username].github.io/events`

### Already have a personal github page?

In case you're already using github pages for your personal site, you can follow these easy steps to get started:

- Fork this repository
- Set the [default branch](https://github.com/christian-fei/daily-activity-log/settings/branches) to `gh-pages` (create it if needed).
- Visit your daily activity log at `http://[your_github_username].github.io/daily-activity-log/events`

## Further steps

- Style your log by editing `events.xsl` and `events.css`

## Some real usages

- [joebew42](http://joebew42.github.io/events.xml)
- [pdincau](http://pdincau.github.io/events.xml)
- [moretto-nik](http://moretto-nik.github.io/events.xml)
- [christian-fei](http://christian.fei.ninja/daily-activity-log/index.xml)
- [xpepper](http://xpepper.github.io/daily-activity-log/events)
- Let me know of your _daily-activity-log_ and I'll put it here

## How to contribute

- Fork this repository
- Create a branch
- Write your local changes
- Squash all your commits
- Push & make a Pull-request

## External resources

### Reading a Daily Activity Log with a RSS Feed reader

If you are interested to follow a daily activity log through your RSS Feed Reader,
you can use the [**Daily Activity Log to RSS**](https://github.com/joebew42/daily-activity-log-to-rss)
API that is currently hosted on Heroku and can be used by appending a
valid Daily Activity Log URL to `http://daily2rss.herokuapp.com/rss/?url=`

_For example `http://daily2rss.herokuapp.com/rss/?url=http://joebew42.github.io/events.xml`
will generates the RSS version of my daily activity log._
