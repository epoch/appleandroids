Dish.delete_all
DishType.delete_all

snack = DishType.create(name: 'snack')

Dish.create(name: 'cake', dish_type_id: snack.id, image_url: 'imlazy', latitude: -37.8112316, longitude: 144.9690854)
Dish.create(name: 'pudding', dish_type_id: snack.id, image_url: 'imlazy', latitude: -37.810901, longitude: 144.972641)
Dish.create(name: 'cakepudding', dish_type_id: snack.id, image_url: 'imlazy', latitude: -37.812009, longitude: 144.965301)
Dish.create(name: 'puddingcake', dish_type_id: snack.id, image_url: 'imlazy', latitude: -37.818528, longitude: 144.959164)
Dish.create(name: 'pudcakeding', dish_type_id: snack.id, image_url: 'imlazy', latitude: -37.814646, longitude: 145.008590)