require 'puppet_references'
require 'puppet_references/puppet_command'
module PuppetReferences
  class ManCommand < PuppetReferences::PuppetCommand
    attr_reader :name
    def initialize(name, puppet_dir = PuppetReferences::PUPPET_DIR)
      @name = name
      super("puppet #{@name} --help", puppet_dir)
    end
  end
end