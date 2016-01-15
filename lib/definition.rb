class Definition
  @@definitions = []

  define_method(:initialize) do |new_def|
    @new_def = new_def
  end

  define_method(:new_def) do
    @new_def
  end

  define_singleton_method(:all) do
    @@definitions
  end

  define_method(:save) do
    @@definitions.push(self)
  end

  define_singleton_method(:clear) do
    @@definitions = []
  end
end
