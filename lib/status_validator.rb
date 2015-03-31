module StatusValidator
  def define_status(options)
    field = options.fetch(:field)
    available_status = options.fetch(:available_status)
    default_value = options.fetch(:default_value,nil)

    validates field, inclusion: { :in => available_status, :message => "%{value} is not a valid status" }

    available_status.each do |single_status|
      where_dict = {field => single_status}
      scope single_status, ->{ where(where_dict)}
    end
    if default_value
      before_validation  do
        self.send("#{field}=",self.send(field) || default_value)
      end
    end

     define_singleton_method field.to_s.pluralize do
        available_status
     end
  end
end