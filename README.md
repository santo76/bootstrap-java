# PHP and PHPUnit Kata Bootstrap
1 minute setup to start practicing a kata
## TL;DR

    git clone https://github.com/santo76/bootstrap-java.git
    cd php-kata-bootstrap

Second option: I already have installed docker

    make docker-build
    make docker-tests

## Run the Text Fixture from Command-Line

```
./gradlew -q text
```

### Specify Number of Days

For e.g. 10 days:

```
./gradlew -q text --args 10
```

## Whem modify gradel
Execute this command to refresh tests

        ./gradlew tasks --all