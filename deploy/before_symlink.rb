log "layer name #{layer_name()}"
puts "new_resource: #{new_resource.name}"

bash "run composer install" do
	cwd release_path
	code <<-EOH
	composer install --no-dev --no-ansi --no-interaction
	EOH
end

twincities_domains new_resource.name do
	aliases ["philtest.info","philtest.io"]
end
