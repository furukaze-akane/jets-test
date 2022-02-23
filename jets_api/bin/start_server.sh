#!/bin/bash
set -e
source ~/.bashrc

bundle exec jets db:create db:migrate
bundle exec jets server --host 0.0.0.0