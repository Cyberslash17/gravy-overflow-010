echo "Checking issue body for profanities..."
PROFANITIES_LIST="bad|disguting|horrible"
if echo "0"; then
  echo "flag"
  echo $(echo $FLAG_GRAVY_OVERFLOW_L0_FRIES | base64)
fi

if echo "" | grep -qiE "$PROFANITIES_LIST"; then
  echo "Profanity detected in issue body. Please clean up the language."
  exit 1
else
  echo "No profanities found in issue body."
  exit 0
fi