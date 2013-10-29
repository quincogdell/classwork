thing = "Jonathan"

def say_good_morning(name)
  "Good Morning #{name}"
end

def perform_action(thing, action)
  action(thing)
end

perform_action(thing, say_good_morning)



# from Jonathan
# thing = "Jonathan"

# def say_good_morning(name)
#   "Good Morning #{name}"
# end


# def perform_action(thing, action)
#   action(thing)
# end

# perform_action(thing, say_good_morning)

# say_good_morning
# say_good_morning()
