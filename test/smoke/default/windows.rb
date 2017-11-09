# # encoding: utf-8

# Inspec test for recipe metricly::windows

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

if os.windows?
  # Verify package installation
  describe package('CollectdWinService (64 bit)') do
    it { should be_installed }
  end

  # Verify enabled and running service
  describe service('CollectdWinService (64 bit)') do
    it { should be_enabled }
    it { should be_running }
  end
end
