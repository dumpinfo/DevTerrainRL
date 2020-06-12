lcov --capture --directory ./  --output-file test.info --test-name test
genhtml test.info --output-directory output --title "code analysis" --show-details --legend
gprof -b ./DeepTerrainRL | gprof2dot | dot -Tsvg -o call.svg
