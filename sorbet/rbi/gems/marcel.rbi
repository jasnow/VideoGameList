# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/marcel/all/marcel.rbi
#
# marcel-0.3.3
module Marcel
end
class Marcel::MimeType
  def self.extend(type, extensions: nil, parents: nil, magic: nil); end
  def self.for(pathname_or_io = nil, name: nil, extension: nil, declared_type: nil); end
  def self.for_data(pathname_or_io); end
  def self.for_declared_type(declared_type); end
  def self.for_extension(extension); end
  def self.for_name(name); end
  def self.most_specific_type(from_magic_type, fallback_type); end
  def self.parse_media_type(content_type); end
  def self.root_types(type); end
  def self.with_io(pathname_or_io, &block); end
end
