# Temporary task list

This is not intended for actual use. It is a task list creator which only lives as long as your session! It is  intended to serve as a base app for tutorials, particularly on how to use [Git](https://git-scm.com/).

It is built using Ruby and makes use of the [Sinatra](https://github.com/sinatra/sinatra) gem.

## Pre-requisites

You'll need [Ruby](https://www.ruby-lang.org/en/) installed (ideally the latest version available) plus the [Bundler](http://bundler.io/) gem.

## Installation

Clone the repository, copying the project into a working directory

```bash
git clone https://github.com/Cruikshanks/temporary-task-list.git
cd temporary-task-list
```

Then run the following command

```bash
bundle install
```

[Bundler](http://bundler.io/) will download everything needed for the project. Once complete you're good to go!

## Execution

To run the app call

```bash
bundle exec rake
```

## Commands

The following commands are supported.

- `GET /`
  - Returns the version of the app, along with versions for Ruby, Sinatra and Rack
  - `curl --cookie cookies.txt --cookie-jar cookies.txt -L  "http://localhost:4567"`
- `GET /tasks`
  - Returns a list of all current tasks
  - `curl --cookie cookies.txt --cookie-jar cookies.txt -L  "http://localhost:4567/tasks"`
- `GET /task/:id`
  - Returns just the specified task
  - `curl --cookie cookies.txt --cookie-jar cookies.txt -L  "http://localhost:4567/task/1"`
- `POST /tasks/:task`
  - Adds a new task to the task list
  - `curl --cookie cookies.txt --cookie-jar cookies.txt -L --data '' "http://localhost:4567/tasks/add%20some%20tests"`
- `DELETE /tasks/:id`
  - Deletes the specified task
  - `curl --cookie cookies.txt --cookie-jar cookies.txt -X DELETE "http://localhost:4567/task/1"`

See [Curl](https://curl.haxx.se/) for further details on using Curl.

## License

This is released under the [MIT license](https://opensource.org/licenses/MIT).

> If you don't add a license it's neither free or open!
