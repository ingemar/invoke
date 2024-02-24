describe Object do
  describe "#invoke" do
    test "invokes the method when the condition is true" do
      object = Object.new
      object.define_singleton_method(:call_me) { "Call me, call me any, anytime" }

      result = object.invoke(:call_me, true)

      assert result == "Call me, call me any, anytime"
    end

    test "does not invoke the method when the condition is false" do
      object = Object.new
      object.define_singleton_method(:call_me) { "Call me, call me any, anytime" }

      result = object.invoke(:call_me, false)

      assert result.nil?
    end

    test "invokes the method with arguments and block" do
      object = Object.new
      object.define_singleton_method(:call_me) do |arg1, arg2, &block|
        [arg1, arg2, block.call].join(", ")
      end

      result = object.invoke(:call_me, true, "Call me", "call me any") { "anytime" }

      assert result == "Call me, call me any, anytime"
    end
  end
end
