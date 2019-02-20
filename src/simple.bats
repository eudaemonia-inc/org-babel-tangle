#!/usr/bin/env bats

setup() {
    rm -f test1.out
}

@test "Does it run and create an output file?" {
    run ./org-babel-tangle test1.org
    [ "$status" -eq 0 ]
    [ -f test1.out ]
}
