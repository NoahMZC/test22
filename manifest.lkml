project_name: "test3"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
local_dependency: {
   project: "test2"
 }
remote_dependency: MyGitRepo{
  url: "https://github.com/NoahMZC/Lookertest"
  ref: "master"
}
