#!/usr/bin/env ruby
require 'spec_helper'

describe Puppet::Type.type(:dsc_xscomconsolesetup) do

  let :dsc_xscomconsolesetup do
    Puppet::Type.type(:dsc_xscomconsolesetup).new(
      :name     => 'foo',
      :dsc_ensure => 'Present',
    )
  end

  it 'should allow all properties to be specified' do
    expect { Puppet::Type.type(:dsc_xscomconsolesetup).new(
      :name     => 'foo',
      :dsc_ensure => 'Present',
      :dsc_sourcepath => 'foo',
      :dsc_sourcefolder => 'foo',
      :dsc_setupcredential => {"user"=>"user", "password"=>"password"},
      :dsc_installpath => 'foo',
      :dsc_usemicrosoftupdate => 1,
      :dsc_sendceipreports => 1,
      :dsc_enableerrorreporting => 'Never',
      :dsc_sendodrreports => 1,
    )}.to_not raise_error
  end

  it "should stringify normally" do
    expect(dsc_xscomconsolesetup.to_s).to eq("Dsc_xscomconsolesetup[foo]")
  end

  it 'should default to ensure => present' do
    expect(dsc_xscomconsolesetup[:ensure]).to eq :present
  end

  it 'should require that dsc_ensure is specified' do
    #dsc_xscomconsolesetup[:dsc_ensure]
    expect { Puppet::Type.type(:dsc_xscomconsolesetup).new(
      :name     => 'foo',
    )}.to raise_error(Puppet::Error, /dsc_ensure is a required attribute/)
  end

  it 'should accept dsc_ensure predefined value Present' do
    dsc_xscomconsolesetup[:dsc_ensure] = 'Present'
    expect(dsc_xscomconsolesetup[:dsc_ensure]).to eq('Present')
  end

  it 'should accept dsc_ensure predefined value present' do
    dsc_xscomconsolesetup[:dsc_ensure] = 'present'
    expect(dsc_xscomconsolesetup[:dsc_ensure]).to eq('present')
  end

  it 'should accept dsc_ensure predefined value present and update ensure with this value (ensure end value should be a symbol)' do
    dsc_xscomconsolesetup[:dsc_ensure] = 'present'
    expect(dsc_xscomconsolesetup[:ensure]).to eq(dsc_xscomconsolesetup[:dsc_ensure].downcase.to_sym)
  end

  it 'should accept dsc_ensure predefined value Absent' do
    dsc_xscomconsolesetup[:dsc_ensure] = 'Absent'
    expect(dsc_xscomconsolesetup[:dsc_ensure]).to eq('Absent')
  end

  it 'should accept dsc_ensure predefined value absent' do
    dsc_xscomconsolesetup[:dsc_ensure] = 'absent'
    expect(dsc_xscomconsolesetup[:dsc_ensure]).to eq('absent')
  end

  it 'should accept dsc_ensure predefined value absent and update ensure with this value (ensure end value should be a symbol)' do
    dsc_xscomconsolesetup[:dsc_ensure] = 'absent'
    expect(dsc_xscomconsolesetup[:ensure]).to eq(dsc_xscomconsolesetup[:dsc_ensure].downcase.to_sym)
  end

  it 'should not accept values not equal to predefined values' do
    expect{dsc_xscomconsolesetup[:dsc_ensure] = 'invalid value'}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_ensure' do
    expect{dsc_xscomconsolesetup[:dsc_ensure] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_ensure' do
    expect{dsc_xscomconsolesetup[:dsc_ensure] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_ensure' do
    expect{dsc_xscomconsolesetup[:dsc_ensure] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_ensure' do
    expect{dsc_xscomconsolesetup[:dsc_ensure] = 16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_sourcepath' do
    expect{dsc_xscomconsolesetup[:dsc_sourcepath] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_sourcepath' do
    expect{dsc_xscomconsolesetup[:dsc_sourcepath] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_sourcepath' do
    expect{dsc_xscomconsolesetup[:dsc_sourcepath] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_sourcepath' do
    expect{dsc_xscomconsolesetup[:dsc_sourcepath] = 16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_sourcefolder' do
    expect{dsc_xscomconsolesetup[:dsc_sourcefolder] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_sourcefolder' do
    expect{dsc_xscomconsolesetup[:dsc_sourcefolder] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_sourcefolder' do
    expect{dsc_xscomconsolesetup[:dsc_sourcefolder] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_sourcefolder' do
    expect{dsc_xscomconsolesetup[:dsc_sourcefolder] = 16}.to raise_error(Puppet::ResourceError)
  end

  it "should not accept empty password for dsc_setupcredential" do
    expect{dsc_xscomconsolesetup[:dsc_setupcredential] = {"user"=>"user", "password"=>""}}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_setupcredential' do
    expect{dsc_xscomconsolesetup[:dsc_setupcredential] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_setupcredential' do
    expect{dsc_xscomconsolesetup[:dsc_setupcredential] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_setupcredential' do
    expect{dsc_xscomconsolesetup[:dsc_setupcredential] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_setupcredential' do
    expect{dsc_xscomconsolesetup[:dsc_setupcredential] = 16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_installpath' do
    expect{dsc_xscomconsolesetup[:dsc_installpath] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_installpath' do
    expect{dsc_xscomconsolesetup[:dsc_installpath] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_installpath' do
    expect{dsc_xscomconsolesetup[:dsc_installpath] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_installpath' do
    expect{dsc_xscomconsolesetup[:dsc_installpath] = 16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_usemicrosoftupdate' do
    expect{dsc_xscomconsolesetup[:dsc_usemicrosoftupdate] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_usemicrosoftupdate' do
    expect{dsc_xscomconsolesetup[:dsc_usemicrosoftupdate] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should accept uint for dsc_usemicrosoftupdate' do
    dsc_xscomconsolesetup[:dsc_usemicrosoftupdate] = 1
    expect(dsc_xscomconsolesetup[:dsc_usemicrosoftupdate]).to eq(1)
  end

  it 'should not accept signed (negative) value for dsc_usemicrosoftupdate' do
    value = -16
    expect(value).to be < 0
    expect{dsc_xscomconsolesetup[:dsc_usemicrosoftupdate] = value}.to raise_error(Puppet::ResourceError)
  end

  it 'should accept string-like uint for dsc_usemicrosoftupdate' do
    dsc_xscomconsolesetup[:dsc_usemicrosoftupdate] = '16'
    expect(dsc_xscomconsolesetup[:dsc_usemicrosoftupdate]).to eq(16)
  end

  it 'should accept string-like uint for dsc_usemicrosoftupdate' do
    dsc_xscomconsolesetup[:dsc_usemicrosoftupdate] = '32'
    expect(dsc_xscomconsolesetup[:dsc_usemicrosoftupdate]).to eq(32)
  end

  it 'should accept string-like uint for dsc_usemicrosoftupdate' do
    dsc_xscomconsolesetup[:dsc_usemicrosoftupdate] = '64'
    expect(dsc_xscomconsolesetup[:dsc_usemicrosoftupdate]).to eq(64)
  end

  it 'should not accept array for dsc_sendceipreports' do
    expect{dsc_xscomconsolesetup[:dsc_sendceipreports] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_sendceipreports' do
    expect{dsc_xscomconsolesetup[:dsc_sendceipreports] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should accept uint for dsc_sendceipreports' do
    dsc_xscomconsolesetup[:dsc_sendceipreports] = 1
    expect(dsc_xscomconsolesetup[:dsc_sendceipreports]).to eq(1)
  end

  it 'should not accept signed (negative) value for dsc_sendceipreports' do
    value = -16
    expect(value).to be < 0
    expect{dsc_xscomconsolesetup[:dsc_sendceipreports] = value}.to raise_error(Puppet::ResourceError)
  end

  it 'should accept string-like uint for dsc_sendceipreports' do
    dsc_xscomconsolesetup[:dsc_sendceipreports] = '16'
    expect(dsc_xscomconsolesetup[:dsc_sendceipreports]).to eq(16)
  end

  it 'should accept string-like uint for dsc_sendceipreports' do
    dsc_xscomconsolesetup[:dsc_sendceipreports] = '32'
    expect(dsc_xscomconsolesetup[:dsc_sendceipreports]).to eq(32)
  end

  it 'should accept string-like uint for dsc_sendceipreports' do
    dsc_xscomconsolesetup[:dsc_sendceipreports] = '64'
    expect(dsc_xscomconsolesetup[:dsc_sendceipreports]).to eq(64)
  end

  it 'should accept dsc_enableerrorreporting predefined value Never' do
    dsc_xscomconsolesetup[:dsc_enableerrorreporting] = 'Never'
    expect(dsc_xscomconsolesetup[:dsc_enableerrorreporting]).to eq('Never')
  end

  it 'should accept dsc_enableerrorreporting predefined value never' do
    dsc_xscomconsolesetup[:dsc_enableerrorreporting] = 'never'
    expect(dsc_xscomconsolesetup[:dsc_enableerrorreporting]).to eq('never')
  end

  it 'should accept dsc_enableerrorreporting predefined value Queued' do
    dsc_xscomconsolesetup[:dsc_enableerrorreporting] = 'Queued'
    expect(dsc_xscomconsolesetup[:dsc_enableerrorreporting]).to eq('Queued')
  end

  it 'should accept dsc_enableerrorreporting predefined value queued' do
    dsc_xscomconsolesetup[:dsc_enableerrorreporting] = 'queued'
    expect(dsc_xscomconsolesetup[:dsc_enableerrorreporting]).to eq('queued')
  end

  it 'should accept dsc_enableerrorreporting predefined value Always' do
    dsc_xscomconsolesetup[:dsc_enableerrorreporting] = 'Always'
    expect(dsc_xscomconsolesetup[:dsc_enableerrorreporting]).to eq('Always')
  end

  it 'should accept dsc_enableerrorreporting predefined value always' do
    dsc_xscomconsolesetup[:dsc_enableerrorreporting] = 'always'
    expect(dsc_xscomconsolesetup[:dsc_enableerrorreporting]).to eq('always')
  end

  it 'should not accept values not equal to predefined values' do
    expect{dsc_xscomconsolesetup[:dsc_enableerrorreporting] = 'invalid value'}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_enableerrorreporting' do
    expect{dsc_xscomconsolesetup[:dsc_enableerrorreporting] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_enableerrorreporting' do
    expect{dsc_xscomconsolesetup[:dsc_enableerrorreporting] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_enableerrorreporting' do
    expect{dsc_xscomconsolesetup[:dsc_enableerrorreporting] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_enableerrorreporting' do
    expect{dsc_xscomconsolesetup[:dsc_enableerrorreporting] = 16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_sendodrreports' do
    expect{dsc_xscomconsolesetup[:dsc_sendodrreports] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_sendodrreports' do
    expect{dsc_xscomconsolesetup[:dsc_sendodrreports] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should accept uint for dsc_sendodrreports' do
    dsc_xscomconsolesetup[:dsc_sendodrreports] = 1
    expect(dsc_xscomconsolesetup[:dsc_sendodrreports]).to eq(1)
  end

  it 'should not accept signed (negative) value for dsc_sendodrreports' do
    value = -16
    expect(value).to be < 0
    expect{dsc_xscomconsolesetup[:dsc_sendodrreports] = value}.to raise_error(Puppet::ResourceError)
  end

  it 'should accept string-like uint for dsc_sendodrreports' do
    dsc_xscomconsolesetup[:dsc_sendodrreports] = '16'
    expect(dsc_xscomconsolesetup[:dsc_sendodrreports]).to eq(16)
  end

  it 'should accept string-like uint for dsc_sendodrreports' do
    dsc_xscomconsolesetup[:dsc_sendodrreports] = '32'
    expect(dsc_xscomconsolesetup[:dsc_sendodrreports]).to eq(32)
  end

  it 'should accept string-like uint for dsc_sendodrreports' do
    dsc_xscomconsolesetup[:dsc_sendodrreports] = '64'
    expect(dsc_xscomconsolesetup[:dsc_sendodrreports]).to eq(64)
  end

  # Configuration PROVIDER TESTS

  describe "powershell provider tests" do

    it "should successfully instanciate the provider" do
      described_class.provider(:powershell).new(dsc_xscomconsolesetup)
    end

    before(:each) do
      @provider = described_class.provider(:powershell).new(dsc_xscomconsolesetup)
    end

    describe "when dscmeta_module_name existing/is defined " do

      it "should compute powershell dsc test script with Invoke-DscResource" do
        expect(@provider.ps_script_content('test')).to match(/Invoke-DscResource/)
      end

      it "should compute powershell dsc test script with method Test" do
        expect(@provider.ps_script_content('test')).to match(/Method\s+=\s*'test'/)
      end

      it "should compute powershell dsc set script with Invoke-DscResource" do
        expect(@provider.ps_script_content('set')).to match(/Invoke-DscResource/)
      end

      it "should compute powershell dsc test script with method Set" do
        expect(@provider.ps_script_content('set')).to match(/Method\s+=\s*'set'/)
      end

    end

    describe "when dsc_ensure is 'present'" do

      before(:each) do
        dsc_xscomconsolesetup.original_parameters[:dsc_ensure] = 'present'
        dsc_xscomconsolesetup[:dsc_ensure] = 'present'
        @provider = described_class.provider(:powershell).new(dsc_xscomconsolesetup)
      end

      it "should update :ensure to :present" do
        expect(dsc_xscomconsolesetup[:ensure]).to eq(:present)
      end

      it "should compute powershell dsc test script in which ensure value is 'present'" do
        expect(@provider.ps_script_content('test')).to match(/ensure = 'present'/)
      end

      it "should compute powershell dsc set script in which ensure value is 'present'" do
        expect(@provider.ps_script_content('set')).to match(/ensure = 'present'/)
      end

    end

    describe "when dsc_ensure is 'absent'" do

      before(:each) do
        dsc_xscomconsolesetup.original_parameters[:dsc_ensure] = 'absent'
        dsc_xscomconsolesetup[:dsc_ensure] = 'absent'
        @provider = described_class.provider(:powershell).new(dsc_xscomconsolesetup)
      end

      it "should update :ensure to :absent" do
        expect(dsc_xscomconsolesetup[:ensure]).to eq(:absent)
      end

      it "should compute powershell dsc test script in which ensure value is 'present'" do
        expect(@provider.ps_script_content('test')).to match(/ensure = 'present'/)
      end

      it "should compute powershell dsc set script in which ensure value is 'absent'" do
        expect(@provider.ps_script_content('set')).to match(/ensure = 'absent'/)
      end

    end

    describe "when dsc_resource has credentials" do

      it "should convert credential hash to a pscredential object" do
        expect(@provider.ps_script_content('test')).to match(/| new-pscredential'/)
      end

    end


  end
end
