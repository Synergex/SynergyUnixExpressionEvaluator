#!/bin/sh

# This script requires the following files to be present in the same location as this script file:
# ConcordEE.vsdconfig
# ConcordEE.deps.json
# ConcordEE.dll
# default.vsdbg-config.json
# Microsoft.Cci.CodeModel.dll
# Microsoft.Cci.CodeModelToIL.dll
# Microsoft.Cci.ILGenerator.dll
# Microsoft.Cci.MetadataHelper.dll
# Microsoft.Cci.MetadataModel.dll
# Microsoft.Cci.MutableCodeModel.dll
# Microsoft.Cci.MutableMetadataModel.dll
# Microsoft.Cci.PdbReader.dll
# Microsoft.Cci.PeReader.dll
# Microsoft.Cci.PeWriter.dll
# Microsoft.Cci.SourceModel.dll
# SynergyParser.dll

__CopyLocation="$HOME/.vs-debugger/vs2022"

# Echo a message and exit with a failure
fail()
{
    echo 
    echo "$1"
    exit 1
}

if [ ! -d "$__CopyLocation" ]
then
    fail "Copy Location $__CopyLocation does not exist"
else
    # copy assembly files
    for f in *.dll
    do
        cp -fv "$f" "$__CopyLocation" || fail "Command failed: 'cp -fv \"$f\" \"$__CopyLocation\"'"
    done

    # copy json files
    for f in *.json
    do
        cp -fv "$f" "$__CopyLocation" || fail "Command failed: 'cp -fv \"$f\" \"$__CopyLocation\"'"
    done

    # copy .vsdconfig file
    cp -fv "ConcordEE.vsdconfig" "$__CopyLocation" || fail "Command failed: 'cp -fv \"ConcordEE.vsdconfig\" \"$__CopyLocation\"'"

fi