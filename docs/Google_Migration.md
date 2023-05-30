# Google Drive Migration Notes

## Steps for migrating from Google drive to GitHub and ReadTheDocs
- Download the entire Google "ACCESS Roadmaps" folder or selected files as *.docx
- Copy or move select downloaded files to the GitHub:docs/gdrive_source/ folder
  - We only want the main roadmap description documents and the latest task documents
- From the docs/ folder run gdrive_convert.sh
- Adjust source/index.rst, source/{tasks,cloud,compute,gateway,storage,onlineservice}/index.rst
- Fix media path by removing path prefix through first 'media/' in:
  - tasks/Infrastructure_Description_v2.md
  - tasks/Deploy_Globus_Endpoint_v1.md

# Introduction
