# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/bootsnap/all/bootsnap.rbi
#
# bootsnap-1.4.4
module Bootsnap
  def bundler?; end
  def self.setup(cache_dir:, development_mode: nil, load_path_cache: nil, autoload_paths_cache: nil, disable_trace: nil, compile_cache_iseq: nil, compile_cache_yaml: nil); end
  def self.setup_disable_trace; end
  extend Bootsnap
end
module Bootsnap::ExplicitRequire
  def self.from_archdir(feature); end
  def self.from_rubylibdir(feature); end
  def self.from_self(feature); end
  def self.with_gems(*gems); end
end
module Bootsnap::LoadPathCache
  def self.autoload_paths_cache; end
  def self.load_path_cache; end
  def self.loaded_features_index; end
  def self.realpath_cache; end
  def self.setup(cache_path:, development_mode:, active_support: nil); end
  def self.supported?; end
end
module Bootsnap::LoadPathCache::PathScanner
  def self.call(path); end
end
class Bootsnap::LoadPathCache::Path
  def entries_and_dirs(store); end
  def expanded_path; end
  def initialize(path); end
  def latest_mtime(path, dirs); end
  def non_directory?; end
  def path; end
  def relative?; end
  def scan!; end
  def stability; end
  def stable?; end
  def volatile?; end
end
class Bootsnap::LoadPathCache::Cache
  def absolute_path?(path); end
  def dir_changed?; end
  def expand_path(feature); end
  def find(feature); end
  def initialize(store, path_obj, development_mode: nil); end
  def load_dir(dir); end
  def maybe_append_extension(f); end
  def now; end
  def push_paths(sender, *paths); end
  def push_paths_locked(*paths); end
  def reinitialize(path_obj = nil); end
  def search_index(f); end
  def stale?; end
  def try_ext(f); end
  def try_index(f); end
  def unshift_paths(sender, *paths); end
  def unshift_paths_locked(*paths); end
end
class Bootsnap::LoadPathCache::Store
  def commit_transaction; end
  def dump_data; end
  def fetch(key); end
  def get(key); end
  def initialize(store_path); end
  def load_data; end
  def set(key, value); end
  def transaction; end
end
class Bootsnap::LoadPathCache::Store::NestedTransactionError < StandardError
end
class Bootsnap::LoadPathCache::Store::SetOutsideTransactionNotAllowed < StandardError
end
module Bootsnap::LoadPathCache::ChangeObserver
  def self.register(observer, arr); end
end
module Bootsnap::LoadPathCache::ChangeObserver::ArrayMixin
  def <<(entry); end
  def []=(*args, &block); end
  def clear(*args, &block); end
  def collect!(*args, &block); end
  def compact!(*args, &block); end
  def concat(entries); end
  def delete(*args, &block); end
  def delete_at(*args, &block); end
  def delete_if(*args, &block); end
  def fill(*args, &block); end
  def flatten!(*args, &block); end
  def insert(*args, &block); end
  def keep_if(*args, &block); end
  def map!(*args, &block); end
  def pop(*args, &block); end
  def push(*entries); end
  def reject!(*args, &block); end
  def replace(*args, &block); end
  def reverse!(*args, &block); end
  def rotate!(*args, &block); end
  def select!(*args, &block); end
  def shift(*args, &block); end
  def shuffle!(*args, &block); end
  def slice!(*args, &block); end
  def sort!(*args, &block); end
  def sort_by!(*args, &block); end
  def uniq!(*args); end
  def unshift(*entries); end
end
class Bootsnap::LoadPathCache::LoadedFeaturesIndex
  def initialize; end
  def key?(feature); end
  def purge(feature); end
  def purge_multi(features); end
  def register(short, long = nil); end
  def strip_extension(f); end
end
class Bootsnap::LoadPathCache::RealpathCache
  def call(*key); end
  def find_file(name); end
  def initialize; end
  def realpath(caller_location, path); end
end
class Bootsnap::LoadPathCache::ReturnFalse < StandardError
end
class Bootsnap::LoadPathCache::FallbackScan < StandardError
end
module Bootsnap::CompileCache
  def self.permission_error(path); end
  def self.setup(cache_dir:, iseq:, yaml:); end
  def self.supported?; end
end
class Bootsnap::CompileCache::Error < StandardError
end
class Bootsnap::CompileCache::PermissionError < Bootsnap::CompileCache::Error
end
class Bootsnap::InvalidConfiguration < StandardError
end
module Bootsnap::LoadPathCache::CoreExt
  def self.make_load_error(path); end
end
module Kernel
  def load_without_bootsnap(*arg0); end
  def require_relative_without_bootsnap(arg0); end
  def require_with_bootsnap_lfi(path, resolved = nil); end
  def require_without_bootsnap(arg0); end
  def self.require_with_bootsnap_lfi(path, resolved = nil); end
end
class Module
  def autoload_without_bootsnap(arg0, arg1); end
end
module Bootsnap::LoadPathCache::CoreExt::ActiveSupport
  def self.allow_bootsnap_retry(allowed); end
  def self.without_bootsnap_cache; end
end
module Bootsnap::LoadPathCache::CoreExt::ActiveSupport::ClassMethods
  def autoload_paths=(o); end
  def autoloadable_module?(path_suffix); end
  def depend_on(*arg0); end
  def load_missing_constant(from_mod, const_name); end
  def remove_constant(const); end
  def require_or_load(*arg0); end
  def search_for_file(path); end
end
module ActiveSupport
end
module ActiveSupport::Dependencies
end
module Bootsnap::CompileCache::Native
  def compile_option_crc32=(arg0); end
  def coverage_running?; end
  def fetch(arg0, arg1, arg2); end
  def self.compile_option_crc32=(arg0); end
  def self.coverage_running?; end
  def self.fetch(arg0, arg1, arg2); end
end
module Bootsnap::CompileCache::ISeq
  def self.cache_dir; end
  def self.cache_dir=(arg0); end
  def self.compile_option_updated; end
  def self.input_to_output(_); end
  def self.input_to_storage(_, path); end
  def self.install!(cache_dir); end
  def self.storage_to_output(binary); end
end
module Bootsnap::CompileCache::ISeq::InstructionSequenceMixin
  def compile_option=(hash); end
  def load_iseq(path); end
end
module Bootsnap::CompileCache::YAML
  def self.input_to_output(data); end
  def self.input_to_storage(contents, _); end
  def self.install!(cache_dir); end
  def self.msgpack_factory; end
  def self.msgpack_factory=(arg0); end
  def self.storage_to_output(data); end
end
