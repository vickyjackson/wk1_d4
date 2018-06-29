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
  lender[:monies] -= amount
  lendee[:monies] += amount
end

def all_favourite_food(people)
  all_favourite_food = []
  for person in people
    for snack in person[:favourites][:snacks]
      all_favourite_food.push(snack)
    end
  end
  return all_favourite_food
end

def people_with_no_friends(people)
  new_array = []
  for person in people
    if (person[:friends] == [])
      new_array.push(person[:name])
    end
  end
  return new_array
end
