lcov --capture --directory ./  --output-file test.info --test-name test
genhtml test.info --output-directory output --title "code analysis" --show-details --legend
gprof -b ./TerrainRL | gprof2dot | dot -Tpng -o call.png
