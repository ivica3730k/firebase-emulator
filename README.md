# Firebase emulator

Firebase emulator example taken from https://github.com/thoughtgears/docker-firebase-emulator, amended with .gitignore files
to exclude the data directories so they are not accidentally pushed to source control and subset of firebase services enabled for quick start. 

By default, authentication and firestore are only firebase services enabled.

## How to run

Start the project up using `docker-compose up --build`.

If you want to enable more emulators from the firebase lineup, edit the [firebase/firebase.json](firebase/firebase.json) file 
and enable more emulators there.

