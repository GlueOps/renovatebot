# renovatebot

Contains workflows to run renovatebot every 15mins. See inline comments within the workflow file(s) to see how to reconfigure this for another org/repo.

Please use separate GitHub Apps for public vs private repositories.

# Testing locally

If you wanna test renovatebot locally, you can the follow the following steps:

- clone the repo you wanna test for
- cd into the local repo folder
- copy the test folder content  to the current directory: 
    cp ../renovatebot/test/* .
- (Optional) if you're testing for aws replace the creds inside `script.sh`
    export AWS_REGION=us-west-2
    export AWS_ACCESS_KEY_ID=XXXXXXXX
    export AWS_SECRET_ACCESS_KEY=XXXXXXX
- now run: ./script.sh