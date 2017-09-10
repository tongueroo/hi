# There will be some special variables that are automatically available in this file.
#
# Some of variables are from the Dockerfile and some are from other places.
#
# * helper.full_image_name - Docker image name with the tag when docker image is built by ufo. This is defined in ufo/settings.yml.  The helper.full_image_name includes the git sha tongueroo/hi:ufo-[sha].
# * helper.dockerfile_port - Expose port in the Dockerfile.  Only supports one exposed port, the first one that is encountered.
#
# env_vars - is a helper method that generates the proper environment Array of Hashes

task_definition "hi-web" do
  source "main" # will use ufo/templates/main.json.erb
  variables(
    family: task_definition_name,
    name: "web",
    container_port: helper.dockerfile_port,
    command: ["bin/web"]
  )
end

task_definition "hi-worker" do
  source "main" # will use ufo/templates/main.json.erb
  variables(
    family: task_definition_name,
    name: "worker",
    command: ["bin/worker"]
  )
end

task_definition "hi-clock" do
  source "main" # will use ufo/templates/main.json.erb
  variables(
    family: task_definition_name,
    name: "clock",
    command: ["bin/clock"]
  )
end
