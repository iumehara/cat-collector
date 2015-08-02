def clean_db
  Yard.delete_all
  Spot.delete_all
  Good.delete_all
  Dish.delete_all
  Food.delete_all
end
