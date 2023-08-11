# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `packs-specification` gem.
# Please instead update this file by running `bin/tapioca gem packs-specification`.

# We let `packs-specification` define some API methods such as all, find, and for_file,
# because this allows a production environment to require `packs-specification` only and get some simple functionality, without
# needing to load all of `packs`.
#
# source://packs-specification//lib/packs/pack.rb#3
module Packs
  class << self
    # source://packs/0.1.0/lib/packs.rb#122
    sig { params(pack_name: ::String, dependency_name: ::String).void }
    def add_dependency!(pack_name:, dependency_name:); end

    # source://packs-specification//lib/packs-specification.rb#19
    sig { returns(T::Array[::Packs::Pack]) }
    def all; end

    # source://packs/0.1.0/lib/packs.rb#220
    sig { void }
    def bust_cache!; end

    # source://packs/0.1.0/lib/packs/configuration.rb#50
    sig { returns(::Packs::Configuration) }
    def config; end

    # source://packs/0.1.0/lib/packs/configuration.rb#57
    sig { params(blk: T.proc.params(arg0: ::Packs::Configuration).void).void }
    def configure(&blk); end

    # source://packs/0.1.0/lib/packs.rb#47
    sig do
      params(
        pack_name: ::String,
        enforce_privacy: T::Boolean,
        enforce_dependencies: T.nilable(T::Boolean),
        team: T.nilable(::CodeTeams::Team)
      ).void
    end
    def create_pack!(pack_name:, enforce_privacy: T.unsafe(nil), enforce_dependencies: T.unsafe(nil), team: T.unsafe(nil)); end

    # source://packs/0.1.0/lib/packs.rb#229
    sig { params(argv: T.untyped, formatter: T.nilable(::Packwerk::OffensesFormatter)).void }
    def execute(argv, formatter = T.unsafe(nil)); end

    # source://packs-specification//lib/packs-specification.rb#24
    sig { params(name: ::String).returns(T.nilable(::Packs::Pack)) }
    def find(name); end

    # source://packs-specification//lib/packs-specification.rb#29
    sig { params(file_path: T.any(::Pathname, ::String)).returns(T.nilable(::Packs::Pack)) }
    def for_file(file_path); end

    # source://packs/0.1.0/lib/packs.rb#236
    sig { params(files: T::Array[::String]).returns(T::Array[::Packwerk::ReferenceOffense]) }
    def get_offenses_for_files(files); end

    # source://packs/0.1.0/lib/packs.rb#252
    sig { void }
    def lint_package_todo_yml_files!; end

    # source://packs/0.1.0/lib/packs.rb#194
    sig { params(pack_name: T.nilable(::String), limit: ::Integer).void }
    def list_top_dependency_violations(pack_name:, limit:); end

    # source://packs/0.1.0/lib/packs.rb#178
    sig { params(pack_name: T.nilable(::String), limit: ::Integer).void }
    def list_top_privacy_violations(pack_name:, limit:); end

    # source://packs/0.1.0/lib/packs.rb#96
    sig do
      params(
        paths_relative_to_root: T::Array[::String],
        per_file_processors: T::Array[::Packs::PerFileProcessorInterface]
      ).void
    end
    def make_public!(paths_relative_to_root: T.unsafe(nil), per_file_processors: T.unsafe(nil)); end

    # source://packs/0.1.0/lib/packs.rb#68
    sig do
      params(
        pack_name: ::String,
        paths_relative_to_root: T::Array[::String],
        per_file_processors: T::Array[::Packs::PerFileProcessorInterface]
      ).void
    end
    def move_to_pack!(pack_name:, paths_relative_to_root: T.unsafe(nil), per_file_processors: T.unsafe(nil)); end

    # source://packs/0.1.0/lib/packs.rb#149
    sig do
      params(
        pack_name: ::String,
        parent_name: ::String,
        per_file_processors: T::Array[::Packs::PerFileProcessorInterface]
      ).void
    end
    def move_to_parent!(pack_name:, parent_name:, per_file_processors: T.unsafe(nil)); end

    # source://packs/0.1.0/lib/packs.rb#211
    sig { params(file: ::String, find: ::Pathname, replace_with: ::Pathname).void }
    def replace_in_file(file:, find:, replace_with:); end

    # source://packs/0.1.0/lib/packs.rb#35
    sig { void }
    def start_interactive_mode!; end
  end
end

# source://packs-specification//lib/packs-specification.rb#13
Packs::PACKAGE_FILE = T.let(T.unsafe(nil), String)

# source://packs-specification//lib/packs/pack.rb#4
class Packs::Pack < ::T::Struct
  const :name, ::String
  const :path, ::Pathname
  const :relative_path, ::Pathname
  const :raw_hash, T::Hash[T.untyped, T.untyped]

  # source://packs-specification//lib/packs/pack.rb#39
  sig { returns(T::Boolean) }
  def is_gem?; end

  # source://packs-specification//lib/packs/pack.rb#34
  sig { returns(::String) }
  def last_name; end

  # source://packs-specification//lib/packs/pack.rb#44
  sig { returns(T::Hash[T.untyped, T.untyped]) }
  def metadata; end

  # source://packs-specification//lib/packs/pack.rb#28
  sig { params(relative: T::Boolean).returns(::Pathname) }
  def yml(relative: T.unsafe(nil)); end

  class << self
    # source://packs-specification//lib/packs/pack.rb#13
    sig { params(package_yml_absolute_path: ::Pathname).returns(::Packs::Pack) }
    def from(package_yml_absolute_path); end

    # source://sorbet-runtime/0.5.10826/lib/types/struct.rb#13
    def inherited(s); end
  end
end

# source://packs-specification//lib/packs/specification/configuration.rb#4
module Packs::Specification
  class << self
    # source://packs-specification//lib/packs/specification.rb#31
    sig { returns(T::Array[::Packs::Pack]) }
    def all; end

    # source://packs-specification//lib/packs/specification.rb#24
    sig { void }
    def bust_cache!; end

    # source://packs-specification//lib/packs/specification.rb#18
    sig { returns(::Packs::Specification::Configuration) }
    def config; end

    # source://packs-specification//lib/packs/specification.rb#36
    sig { params(name: ::String).returns(T.nilable(::Packs::Pack)) }
    def find(name); end

    # source://packs-specification//lib/packs/specification.rb#41
    sig { params(file_path: T.any(::Pathname, ::String)).returns(T.nilable(::Packs::Pack)) }
    def for_file(file_path); end

    # source://packs-specification//lib/packs/specification.rb#13
    sig { returns(::Pathname) }
    def root; end

    private

    # source://packs-specification//lib/packs/specification.rb#65
    sig { returns(T::Array[::Pathname]) }
    def package_glob_patterns; end

    # source://packs-specification//lib/packs/specification.rb#51
    sig { returns(T::Hash[::String, ::Packs::Pack]) }
    def packs_by_name; end
  end
end

# source://packs-specification//lib/packs/specification/configuration.rb#5
class Packs::Specification::Configuration < ::T::Struct
  prop :pack_paths, T::Array[::String]

  class << self
    # source://packs-specification//lib/packs/specification/configuration.rb#17
    sig { returns(::Packs::Specification::Configuration) }
    def fetch; end

    # source://sorbet-runtime/0.5.10826/lib/types/struct.rb#13
    def inherited(s); end

    # source://packs-specification//lib/packs/specification/configuration.rb#26
    sig { params(config_hash: T::Hash[T.untyped, T.untyped]).returns(T::Array[::String]) }
    def pack_paths(config_hash); end
  end
end

# source://packs-specification//lib/packs/specification/configuration.rb#7
Packs::Specification::Configuration::CONFIGURATION_PATHNAME = T.let(T.unsafe(nil), Pathname)

# source://packs-specification//lib/packs/specification/configuration.rb#9
Packs::Specification::Configuration::DEFAULT_PACK_PATHS = T.let(T.unsafe(nil), Array)
