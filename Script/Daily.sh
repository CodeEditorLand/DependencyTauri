#!/bin/bash

\echo "Process: Daily.sh"

# Context: CodeEditorLand/Property/Land/Foundation

Directory=$(\cd -- "$(\dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && \pwd)

"$Directory"/Cache/Get.sh

# "$Directory"/Clone/Repository.sh
# "$Directory"/Module/Git.sh

# "$Directory"/Configure/Repository.sh
# "$Directory"/Setting/Repository.sh
# "$Directory"/Rename/Repository.sh

# "$Directory"/Sync/Repository.sh
# "$Directory"/Switch/Branch/Previous.sh
# "$Directory"/Reset/Repository.sh
"$Directory"/Switch/Branch/Current.sh
# "$Directory"/Reset/Repository.sh

# "$Directory"/Default/Branch/Repository.sh

"$Directory"/Clean/Repository.sh
"$Directory"/Clean/Detail.sh
"$Directory"/Move/license.sh
"$Directory"/Move/package.sh
"$Directory"/Move/src.sh
"$Directory"/Append/Detail.sh
"$Directory"/Sort/Detail.sh

Maintain Workflow

# # biome check "$Directory" --apply-unsafe

"$Directory"/Restore/.gitignore.sh
"$Directory"/Restore/package.json.sh
