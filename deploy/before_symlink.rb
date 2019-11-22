log "layer name #{layer_name()}"
puts "new_resource:"
puts new_resource

bash "run composer install" do
	cwd release_path
	code <<-EOH
	composer install --no-dev --no-ansi --no-interaction
	EOH
end

twincities_domains "philtest" do
	aliases ["philtest.info","philtest.io"]
end
