#!/bin/bash
#
# Copyright (c) 2017-2018 Intel Corporation
#
# SPDX-License-Identifier: Apache-2.0
#

set -o errexit
set -o nounset
set -o pipefail

cidir=$(dirname "$0")
source "${cidir}/lib.sh"
source /etc/os-release

SNAP_CI="${SNAP_CI:-false}"

pushd "${tests_repo_dir}"
.ci/run.sh
popd

# This script will execute packaging tests suite
