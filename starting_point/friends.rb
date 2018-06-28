def get_name(person)
  return person[:name]
end

def get_tvshow(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  if person[:favourites][:snacks][0] == food
    return true
  else
    return false
  end
end

def add_friend(person, friend)
  person[:friends] << friend
  return person[:friends].length
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
  return person[:friends].length
end

def total_money(people)
  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end

def loaning_money(lender, lendee, amount)
  new_array = []
  lender[:monies] -= amount
  lendee[:monies] += amount
  new_array << lender[:monies] << lendee[:monies]
end

def favourite_food(people)
  all_foods_array = []
  for person in people
    all_foods_array << person[:favourite][:snacks][0]
  end
  return all_foods_array
end
