:: Remove .def file to avoid build failure and patch in __declspec(dllexport) instead
rm changeforest-r/src/changeforest-win.def
sed -i -e "s/void R_init_changeforest/__declspec(dllexport) void R_init_changeforest/" changeforest/src/entrypoint.c

"%R%" CMD INSTALL --build changeforest-r %R_ARGS%
IF %ERRORLEVEL% NEQ 0 exit 1
