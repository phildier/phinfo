bash "run composer install" do
	code <<-EOH
	composer install --no-dev --no-ansi --no-interaction
	EOH
end
