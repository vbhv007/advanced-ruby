# this is class interactive
class Interactive
  def bind_this
    binding
  end

  def eval_this(code, binding_obj)
    instance_eval(code, binding_obj.to_s)
  end
end
