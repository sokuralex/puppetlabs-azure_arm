require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_recovery_plan) do
  @doc = "Recovery plan details."

  ensurable

  validate do
    required_properties = [
      :input,
      :resource_group_name,
      :resource_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_recovery_plan you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Resource Id"
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "Resource Location"
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Resource Name"
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "The custom details."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Resource Type"
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "Client Api Version."
    validate do |value|
      true
    end
  end
  newparam(:input) do
    desc "Recovery Plan creation input."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group where the recovery services vault is present."
    validate do |value|
      true
    end
  end
  newparam(:resource_name) do
    desc "The name of the recovery services vault."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The subscription Id."
    validate do |value|
      true
    end
  end
end