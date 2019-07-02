# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/responders/all/responders.rbi
#
# responders-2.4.1
module Responders
end
module Responders::ControllerMethod
  def responders(*responders); end
end
module ActionController
end
class Responders::Railtie < Rails::Railtie
end
module Responders::FlashResponder
  def controller_interpolation_options; end
  def flash_defaults_by_namespace(status); end
  def initialize(controller, resources, options = nil); end
  def mount_i18n_options(status); end
  def resource_name; end
  def self.flash_keys; end
  def self.flash_keys=(arg0); end
  def self.helper; end
  def self.helper=(arg0); end
  def self.namespace_lookup; end
  def self.namespace_lookup=(arg0); end
  def set_flash(key, value); end
  def set_flash_message!; end
  def set_flash_message?; end
  def set_flash_now?; end
  def to_html; end
  def to_js; end
end
module ActionController::RespondWith
  def collect_mimes_from_class_level; end
  def respond_with(*resources, &block); end
  def verify_request_format!; end
  def verify_requested_format!; end
  extend ActiveSupport::Concern
end
module ActionController::RespondWith::ClassMethods
  def clear_respond_to; end
  def respond_to(*mimes); end
end
class ActionController::Responder
  def api_behavior; end
  def api_location; end
  def controller; end
  def default_action; end
  def default_render; end
  def delete?(*args, &block); end
  def display(resource, given_options = nil); end
  def display_errors; end
  def format; end
  def get?(*args, &block); end
  def has_errors?; end
  def has_renderer?; end
  def has_view_rendering?; end
  def head(*args, &block); end
  def initialize(controller, resources, options = nil); end
  def json_resource_errors; end
  def navigation_behavior(error); end
  def navigation_location; end
  def options; end
  def patch?(*args, &block); end
  def post?(*args, &block); end
  def put?(*args, &block); end
  def redirect_to(*args, &block); end
  def render(*args, &block); end
  def rendering_options; end
  def request; end
  def resource; end
  def resource_errors; end
  def resource_location; end
  def resources; end
  def respond; end
  def response_overridden?; end
  def self.call(*args); end
  def to_format; end
  def to_html; end
  def to_js; end
end
