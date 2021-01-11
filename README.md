# Prestigious Bike Race Project

- RUBY on RAILS
- Javascript
- Bootstrap
- Devise
- RSpec
- APIs

## Usage

> Clone the repository to your local machine

```
$ git clone git@github.com:rOluochKe/ror-boulder-bike-tour.git
```

> cd into the directory

```
$ cd ror-boulder-bike-tour
```

> Then install the needed gems (while skipping any gems needed only in production):

```
$ bundle install --without production
```

> Next, migrate the database:

```
$ rails db:migrate
```

> Import data from the excel sheet by running

```
$ rails import:rider_data
```

> Finally, run the test suite to verify that everything is working correctly:

```
$ rspec
```

> If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

## Functionalities

- The website must have an outdoors-y and athletic feeling. They want a clean design and plenty of bicycle or athletic imagery.
- There must be a home page with basic information about the event and a counter that shows the number of months, days, hours, minutes, and seconds until the race (April 1, 2020).
- There must be a photos page that displays photos from Flickr tagged with the following hashtags: #bikerace and #BoulderBikeTour. 
- There must be a location page that displays all current rider locations. Since the bike race happens in the future, this will be placeholder data (which is provided below)
- There must be a riders page that displays each rider's first name, last name, and city of origin. There should be 20 riders in total. 
- The organizers are sponsoring for anyone to come up with a slogan for the race.

## Designed and developed by

[Raymond Oluoch](https://github.com/rOluochKe)

## Contributing

1. Fork it (git clone git@github.com:rOluochKe/ror-boulder-bike-tour/fork)
2. Create your feature branch (git checkout -b feature/[choose-a-name])
3. Commit your changes (git commit -am 'What this commit will fix/add')
4. Push to the branch (git push origin feature/[chosen name])
5. Create a new Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE.md) file for details.