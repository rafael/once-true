
module ObjectOnceTrue

  def once_true(lambda_true, lambda_false)
    flag= true

    Proc.new do |*args|


      if (flag)
        flag = false
        lambda_true.call(*args.slice(0,lambda_true.arity))

      else
        lambda_false.call(*args.slice(0,lambda_false.arity))
      end
    end

  end
end


