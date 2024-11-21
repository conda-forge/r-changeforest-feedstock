rustup target add x86_64-pc-windows-gnu
IF %ERRORLEVEL% NEQ 0 exit 1

"%R%" CMD INSTALL --build changeforest-r %R_ARGS%
IF %ERRORLEVEL% NEQ 0 exit 1
