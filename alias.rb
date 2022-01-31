class Subscription
	def canceled?
		false
	end

  # This is the preferred method for alias methods
	# def cancelled?
	# 	canceled
	# end

  # with alias you can relugar wording and symbols
	# alias cancelled? canceled?
	# -with alias_method you must use symbols
	alias_method :cancelled?, :canceled?
end

Subscription.new.cancelled?

class User
  def name
    "Chris"
  end

  def full_name
    name
  end

  # alias full_name name
  alias_method :full_name, :name
end

class Admin < User
  def name
    "Admin"
  end

  def full_name
    name
  end
end

p Admin.new.full_name
