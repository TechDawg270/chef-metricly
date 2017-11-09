# # encoding: utf-8

# Inspec test for recipe metricly::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

if os.linux?
  # Verify package installation
  describe package('netuitive-agent') do
    it { should be_installed }
  end

  describe service('netuitive-agent') do
    it { should be_running }
  end
end
