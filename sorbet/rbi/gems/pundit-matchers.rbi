# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/pundit-matchers/all/pundit-matchers.rbi
#
# pundit-matchers-1.6.0
module Pundit
end
module Pundit::Matchers
  def self.configuration; end
  def self.configure; end
end
class Pundit::Matchers::Configuration
  def initialize; end
  def user_alias; end
  def user_alias=(arg0); end
end
module RSpec::Matchers
  def forbid_action(*expected, &block_arg); end
  def forbid_actions(*expected, &block_arg); end
  def forbid_edit_and_update_actions(*expected, &block_arg); end
  def forbid_mass_assignment_of(*expected, &block_arg); end
  def forbid_new_and_create_actions(*expected, &block_arg); end
  def permit_action(*expected, &block_arg); end
  def permit_actions(*expected, &block_arg); end
  def permit_edit_and_update_actions(*expected, &block_arg); end
  def permit_mass_assignment_of(*expected, &block_arg); end
  def permit_new_and_create_actions(*expected, &block_arg); end
end
