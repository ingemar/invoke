class Object
  def invoke(metod_name, invoke, *args, &block)
    return unless invoke

    send(metod_name, *args, &block)
  end
end
