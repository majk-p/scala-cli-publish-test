# Scala CLI publish test 

This repository serves as an issue reproduction for `scala-cli` not packaging files in `test` directories even when they are not technically tests.

```scala
./package-and-check.sh 
Scala files in current location:
.
├── api.scala
├── api.test.scala
└── test
    └── testapi.scala

2 directories, 3 files

Publishing project with scala-cli and extracting sources from the resulting jar
-------------------------------------------------------------------------------
The `publish-local` sub-command is experimental
Please bear in mind that non-ideal user experience should be expected.
If you encounter any bugs or have feedback to share, make sure to reach out to the maintenance team at https://github.com/VirtusLab/scala-cli
Using directive publish.name not specified, using workspace directory name scala-cli-publish-tests as default name
Publishing dev.pawlik.michal:scala-cli-publish-tests_3:0.0.0-SNAPSHOT
 🔓 Artifacts NOT signed as it's not required nor has it been specified
 ✔ Computed 10 checksums
 🚚 Wrote 15 files

 👀 Check results at
  ~/.ivy2/local/dev.pawlik.michal/scala-cli-publish-tests_3/0.0.0-SNAPSHOT/
Archive:  /tmp/tmp.lhyzfT8yxT/scala-cli-publish-tests_3-sources.jar
  inflating: /tmp/tmp.lhyzfT8yxT/unzipped/api.scala  
-------------------------------------------------------------------------------
Published and unzipped to: /tmp/tmp.lhyzfT8yxT/unzipped
Scala files found in the unzipped file:
/tmp/tmp.lhyzfT8yxT/unzipped
└── api.scala

1 directory, 1 file
```