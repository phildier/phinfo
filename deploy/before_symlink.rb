#log "layer name #{layer_name()}"
#puts "new_resource: #{new_resource.name}"

bash "run composer install" do
	cwd release_path
	code <<-EOH
	composer install --no-dev --no-ansi --no-interaction
	EOH
end

opsworks_util_cron "test" do
	servers ["imagex-dev1"]
	command "touch /tmp/cron-running"
	minute "*"
end
