# DateとTimeの変換
require 'date'

t = Time.now
p t
t1 = t.to_date
p t1
t2 = t1.to_time
p t2
