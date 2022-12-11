# frozen_string_literal: true

require 'spec_helper'

describe 'mailman::etclinks' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
    let(:pre_condition) do
      'class { "mailman": mm_username => "mailman" }'
    end
     let(:facts) { os_facts }

      it { is_expected.to compile }
    end
  end
end
