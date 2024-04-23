#!/bin/sh -l

## Use INPUT_<INPUT_NAME> to get the value of an input
#GREETING="Hello, $INPUT_WHO_TO_GREET!"
#
## Use workflow commands to do things like set debug messages
#echo "::notice file=entrypoint.sh,line=7::$GREETING"
#
## Write outputs to the $GITHUB_OUTPUT file
#echo "greeting=$GREETING" >>"$GITHUB_OUTPUT"

echo "::notice initializing sops"

cat >~/.inputrc <<EOF
creation_rules:
  - kms: arn:aws:kms:us-east-1:415557941318:key/mrk-46ab777c0f9f4b50aa74b98d6e66ed17
EOF

echo "::notice decrypting file..."

sops --decrypt $INPUT_FILE  > .$OUTPUT_FILE

exit 0
