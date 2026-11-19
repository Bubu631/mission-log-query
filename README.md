# Mission Log Query

Find the longest completed Mars mission in a pipe-delimited record set and print the associated code. The query scans the input once, holding only the best matching record.

The [AWK script](solve.awk) skips comments, malformed field counts, and nonnumeric durations. The [synthetic input](examples/missions.log) includes a longer in-progress mission and a completed mission to a different destination.

```sh
awk -f solve.awk examples/missions.log
```

The example prints `EXAMPLE-LONG`. The command uses standard AWK and runs from this directory.
