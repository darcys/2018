co = coroutine.create(function(a,b)
    print(coroutine.status(co), "start")
    for i = 1, 10 do
      print("co", a, b)
      coroutine.yield()
      print(coroutine.status(co), "after yield")
    end
    print(coroutine.status(co), "end")
end)

print(coroutine.status(co))
coroutine.resume(co, 1, 2)
print(coroutine.status(co))
coroutine.resume(co,1,2)
print(coroutine.status(co))
  
co1 = coroutine.create(function(a, b)
    print("co", a, b)
  end)

co2 = coroutine.create(function(a,b)
    print("co", a, b)
  end)

co3 = coroutine.create(function(a,b)
    print("co", a, b)
  end)

coroutine.resume(co1, 1)
coroutine.resume(co2, 1, 2)
coroutine.resume(co3, 1, 2, 3)