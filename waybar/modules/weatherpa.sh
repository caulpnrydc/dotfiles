#!/bin/bash
report=$(curl -q wttr.in/Media?u 2>/dev/null)
if [[ $report =~ "Unknown location" || $report =~ "Sorry" ]]; then
	report="No data"
fi
echo $report
