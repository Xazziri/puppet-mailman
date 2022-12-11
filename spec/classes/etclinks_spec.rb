# frozen_string_literal: true

require 'spec_helper'

describe 'mailman::etclinks' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:pre_condition) do
        'class { "mailman::params": mm_username => "mailman" }'
        'class { "mailman": prefix => "/usr/lib/mailman" }'
      end
      let(:facts) { os_facts }

      it { is_expected.to compile }
    end
  end
end
