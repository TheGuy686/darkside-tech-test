# Darkside Developments Technical Test BY Ryan J Cooke

## Prerequisites

1. Please install docker according to the official guide located at https://docs.docker.com/engine/install/
2. Please ensure that Node.js is installed to execute the commands specified within the "script" tag of the package.json file located in the project's root directory. Alternatively, you can directly execute the Docker command. Both commands serve the same purpose, with the 'npm run' command acting as a convenient shorthand for the underlying Docker command.

Should you prefer utilizing the Docker command exclusively, execute the following commands from the project's root directory:

```
// Both of these commands must be executed from the project's root directory.
// npm command
npm run start

// Docker only
docker-compose -f ./docker-compose.yaml down; docker-compose -f docker-compose.yaml --env-file '.env' up --build
```

## Next Steps
If docker has been installed successfully and you are able to confirm the installation by running the 

## Running the App
Go to the run 

### Internal steps done on start up
1. On the initial run the start up process will seed the database to make sure there is some dev data to work with.

### Setup References
    - Laravel Docker: https://www.digitalocean.com/community/tutorials/how-to-install-and-set-up-laravel-with-docker-compose-on-ubuntu-22-04