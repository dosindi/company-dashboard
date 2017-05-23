#!/usr/bin/env bash

# TRAVIS_PULL_REQUEST == "false" for a normal branch commit, the PR number for a PR
# TRAVIS_BRANCH == target of normal commit or target of PR
# TRAVIS_SECURE_ENV_VARS == true if encrypted variables, e.g. TESTBENCH_LICENSE is available
# TRAVIS_REPO_SLUG == the repository, e.g. vaadin/vaadin

if [ "$TRAVIS_SECURE_ENV_VARS" == "true" ]
then
    mvn -B -e -V -Dvaadin.testbench.developer.license=$TESTBENCH_LICENSE -Dvaadin.charts.developer.license=$CHARTS_LICENSE clean verify
fi