require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_cloud_endpoint) do
  @doc = "Cloud Endpoint object."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_cloud_endpoint you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "The id of the resource."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the resource."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Cloud Endpoint properties."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The type of the resource"
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
  newparam(:parameters) do
    desc "Body of Cloud Endpoint resource."
    validate do |value|
      true
    end
  end
  newparam(:properties) do
    desc "Cloud Endpoint properties."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group within the user's subscription. The name is case insensitive."
    validate do |value|
      true
    end
  end
  newparam(:storage_sync_service_name) do
    desc "Name of Storage Sync Service resource."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Gets subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call."
    validate do |value|
      true
    end
  end
  newparam(:sync_group_name) do
    desc "Name of Sync Group resource."
    validate do |value|
      true
    end
  end
end
