#!/bin/sh

checker()
{
  for word in $wordlist
  do
    # don't look in svn directories or ROOT dictionaries (usually safe to exclude)
    grep -rI $word ${GENIE:?"Requires the GENIE environment var!"}/* \
    | grep -v svn \
    | grep -v ROOT
  done
}

test()
{
  # this word exists - demo that we can find things
  wordlist='BergerSehgalCOHPiPXSec'
  checker
}

# these words should not be found
wordlist='BergerSehgalCOHPiXSec'

checker
