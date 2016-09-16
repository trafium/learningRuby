class ProcExample
  def pass_in_block(&action)
    @stored_proc = action
  end
  def use_proc(*args)
    @stored_proc.call(*args)
  end
end

eg = ProcExample.new
eg.pass_in_block { |a, b, c| puts "#{a} - #{b} - #{c}"}
eg.use_proc(1, 2, 3)