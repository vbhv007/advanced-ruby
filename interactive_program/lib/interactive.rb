# this is class interactive
class Interactive
  def bind_this
    binding
  end

  def eval_this(code, binding_obj)
    instance_eval(code, binding_obj.to_s)
  end

  def get_code(code, bind_ob)
    print '>>'
    input = gets
    exit if input =~ /^q$/
    if input.eql?("\n")
      puts eval_this(code, bind_ob)
      code = ''
    else
      code += input
    end
    get_code(code, bind_ob)
  end
end
