class Definition
  define_method(:initialize) do |new_def|
    @new_def = new_def
  end

  define_method(:new_def) do
    @new_def
  end
end
