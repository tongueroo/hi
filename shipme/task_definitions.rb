# There will be some special variables that are automatically available in this file.
# 
# Some of variables are from the Dockerfile and some are from other places.
# 
# * magic.image - Docker image name to be used when a the docker image is build. This is defined in shipme/settings.yml.
# * magic.dockerfile_port - Expose port in the Dockerfile.  Only supports one exposed port, the first one that is encountered.

# common variables
common = {
  image: magic.image,
  cpu: 2,
  memory_reservation: 2,
  environment: [
    {name: "DATABASE_URL", value: "mysql2://user:pass@domani.com:3306/myapp"},
    {name: "SECRET", value: "supersecret"},
  ]
}

task_def "hi-web-prod" do
  variables(common.dup.deep_merge(
    family: task_def_name,
    name: "web",
    container_port: magic.dockerfile_port,
    command: ["bin/web"]
  ))
end

task_def "hi-worker-prod" do
  variables(common.dup.deep_merge(
    family: task_def_name,
    name: "worker",
    command: ["bin/worker"]
  ))
end

task_def "hi-clock-prod" do
  variables(common.dup.deep_merge(
    family: task_def_name,
    name: "clock",
    command: ["bin/clock"]
  ))
end
