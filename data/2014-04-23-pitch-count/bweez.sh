#!/bin/bash

function get_pitch_count {
    mlb games --date $1 | grep Dodgers | cut -f 1 \
    | xargs mlb game --pitches --date $1 \
    | awk 'BEGIN{FS="\t"}{ if ($4=="Brian Wilson") print}'\
    | cut -f 1,9,6 | wc -l
}

SF_COUNT=$(get_pitch_count 2014-04-17)
ARI_COUNT=$(get_pitch_count 2014-04-19)
PHI_COUNT=$(get_pitch_count 2014-04-22)
echo -e "$SF_COUNT\t4/17 vs. SF"
echo -e "$ARI_COUNT\t4/19 vs. ARI"
echo -e "$PHI_COUNT\t4/22 vs. PHI"
