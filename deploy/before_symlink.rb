#log "layer name #{layer_name()}"
#puts "new_resource: #{new_resource.name}"

bash "run composer install" do
	cwd release_path
	code <<-EOH
	composer install --no-dev --no-ansi --no-interaction
	EOH
end

bash "run npm install" do
	cwd "/home/imagex"
	environment({
		"HOME" => "/home/imagex"
	})
	code <<-EOH
	source .nvm/nvm.sh
	nvm use 10.15.0
	npm install
	EOH
end
