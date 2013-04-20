FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/jb_blob_tracker/msg"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/jb_blob_tracker/msg/__init__.py"
  "../src/jb_blob_tracker/msg/_blobList.py"
  "../src/jb_blob_tracker/msg/_blob.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
