#!/bin/bash

N_COMMITS=$(git rev-list --count HEAD)
GO_BACK="$(($N_COMMITS-2))"
git reset --hard HEAD~$GO_BACK
