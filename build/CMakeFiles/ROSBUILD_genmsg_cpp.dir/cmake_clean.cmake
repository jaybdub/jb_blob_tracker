FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/jb_blob_tracker/msg"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/jb_blob_tracker/blobList.h"
  "../msg_gen/cpp/include/jb_blob_tracker/blob.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
