# Course App RAD Programming Project

COSC2675 Rapid Application Development | Semester 1 2019
Assignment (STAGE 1)

## Project Requirements

Stage 1 Requirements [HERE](RAD-Assignment-2019-Stage-1.pdf)

## Licence 

The project is available under the MIT Licence . See [LICENSE.md](LICENCE.md) for details.

## Version information

Program version numbers

Ruby  | 2.6.1

Rails | 5.1.7


## Getting started

To get started with the app, clone the repo

```
$ git clone git@github.com:rmit-s3530160-elliot-schot/CourseApp.git
```

Install the needed gems:

```
$ bundle install --without production
$ bundle update
```

Next, migrate the database:

```
$ rails db:migrate:reset
$ rails db:migrate
$ rails db:seed
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

For more information, see TODO