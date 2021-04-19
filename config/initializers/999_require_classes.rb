%w(
  ./app/models/a_child
  ./app/models/a_parent
  ./app/models/z_child
  ./app/models/z_parent
).each do |path|
  Rails.logger.info "Requiring #{path}"
  require path
end
