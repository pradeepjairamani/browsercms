class DynamicPortlet < Cms::Portlet
  description "Allows user to create custom logic via the user interface. Require ruby/erb to define the controller and view."
  def render
    eval(@portlet.code) unless @portlet.code.blank?
  end

  def attributes=(new_attributes, guard_protected_attributes = true)
    self.assign_attributes(new_attributes)
  end

end
