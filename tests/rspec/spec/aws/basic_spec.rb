# frozen_string_literal: true

require 'shared_examples/k8s'

RSpec.describe 'aws-standard' do
  include_examples('withBuildFolderSetup', File.join(ENV['RSPEC_PATH'], '../smoke/aws/vars/aws.tfvars.json'))

  before(:all) do
    # doing this because the example aws.tfvars.json is being used by the UI
    # tests and it generates a fix cluster name. Here we just change the
    # cluster/dns name all the other content stays the same as generated by the
    # UI If we use the same name generated by the UI we can run just one test at
    # the time.
    @tfvars_file.change_cluster_name(@name)
    @tfvars_file.change_dns_name(@name)
  end

  context 'with a cluster' do
    include_examples('withRunningClusterExistingBuildFolder', true)
  end
end
