# typed: strict

# These are all constants that are generated by the Rust extension,
# whose entry point is at ext/hello_rust/src/lib.rs
# In theory, we could write an RBI generator (using tapioca),
# but the juice is not worth the squeeze at the moment given how infrequently
# this needs modifying by hand.
class PacksRust
  sig { params(paths: T::Array[String]).returns(T::Boolean) }
  def self.check(paths)
  end

  sig { returns(T::Boolean) }
  def self.validate
  end

  sig { returns(T::Boolean) }
  def self.update
  end

  sig { returns(T::Boolean) }
  def self.lint_package_yml_files
  end
end
