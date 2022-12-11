# frozen_string_literal: true

require 'spec_helper'

describe 'mailman::params' do
  on_supported_os.each do |os, os_facts|
      context "on #{os}" do
      let(:pre_condition) do
        'class { "mailman": http_hostname => "mailman.test.lan", smtp_hostname => "mailman.test.lan", mta => "Manual" }'
      end
      let(:facts) { os_facts }

      it { is_expected.to compile }
    end
  end
end
