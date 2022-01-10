#!/bin/bash

export DISABLE_AUTOBREW=1

# shellcheck disable=SC2086
echo ${R_ARGS}
Rscript -e ${R_ARGS} "v <- strsplit(R.version\$minor, '.', fixed = TRUE)[[1]];devel <- isTRUE(grepl('devel', R.version\$status, fixed = TRUE));cat(R.version\$major, v[1], paste0(v[2:length(v)], collapse = '.'), devel, R.version\$version.string, sep = '\n')"
exit 1
${R} CMD INSTALL --build changeforest-r ${R_ARGS}
