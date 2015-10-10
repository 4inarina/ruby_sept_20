require_relative 'class_station.rb'
require_relative 'class_train.rb'
require_relative 'class_route.rb'

st1 = Station.new ("Петушки")
st2 = Station.new ("Рабочий поселок")
st3 = Station.new ("Москва")

rt = Route.new(st1, st2)
rt.add_station(st3)

t = Train.new(12, "pass", 16)
t.route=(rt)