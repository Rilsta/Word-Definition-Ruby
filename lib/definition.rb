class Definition
  @@definitions = []

  define_method(:initialize) do |def_name|
    @def_name = def_name
  end

  define_method(:def_name) do
    @def_name
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
