%i(
  AChild
  AParent
  ZChild
  ZParent
).each do |constant|
  Rails.logger.info "Referencing #{constant}"
  klass = Object.const_get(constant)
  Rails.logger.info "Referenced #{klass}"
rescue Exception => exception
  Rails.logger.warn exception
end
