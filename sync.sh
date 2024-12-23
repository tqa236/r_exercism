#!/usr/bin/env bash
for path in */; do
    [ -d "${path}" ] || continue # if not a directory, skip
    dirname="$(basename "${path}")"
    cd "$dirname" || exit
    exercise_name=${path::-1}
    file_name=${file_name//-/_}
    echo $file_name
    exercism download --track=r --exercise="${exercise_name}" --force
    sleep 1
    cd .. || exit
done