### lua学习资料

[Programming in Lua](http://nova-fusion.com/2012/08/27/lua-for-programmers-part-1/)
[Learn Lua in 15 Minutes](http://tylerneylon.com/a/learn-lua/)

### coroutine

[https://www.liaoxuefeng.com/wiki/001374738125095c955c1e6d8bb493182103fac9270762a000/0013868328689835ecd883d910145dfa8227b539725e5ed000](https://www.liaoxuefeng.com/wiki/001374738125095c955c1e6d8bb493182103fac9270762a000/0013868328689835ecd883d910145dfa8227b539725e5ed000)  
[http://blog.csdn.net/vermilliontear/article/details/50547852](http://blog.csdn.net/vermilliontear/article/details/50547852)  
[http://blog.csdn.net/wusheng520/article/details/7954666](http://blog.csdn.net/wusheng520/article/details/7954666)  
[http://cnodejs.org/topic/58ddd7a303d476b42d34c911](http://cnodejs.org/topic/58ddd7a303d476b42d34c911)  
[http://www.infoq.com/cn/articles/CplusStyleCorourtine-At-Wechat](http://www.infoq.com/cn/articles/CplusStyleCorourtine-At-Wechat)

[协程，高并发IO的终级杀器\(1\)](https://zhuanlan.zhihu.com/p/27519705)

这个例子一定要看懂  
[http://pgl.yoyo.org/luai/i/2.11+Coroutines](http://pgl.yoyo.org/luai/i/2.11+Coroutines)

[Coroutine Tutorial](http://lua-users.org/wiki/CoroutinesTutorial)

[stackoverflow里问答中关于coroutine的解释](https://stackoverflow.com/questions/11490917/coroutines-multiple-requests-in-lua)

> The problem coroutines resolve is "I want to have a function I can execute for a while, then go back to do other thing, and then come back and have the same state I had when I left it".
>
> Notice that I didn't say "I want it to keep running while I do other things"; the flow of code "stops" on the coroutine, and only continues on it when you go back to it.
>
> Using coroutines you can modify \(and in some cases facilitate\) how the code behaves, to make it more evident or legible. But it is still strictly single-threaded.

### 社区和网站

[http://lua-users.org/wiki/](http://lua-users.org/wiki/)  
[云风blog](https://blog.codingnow.com/eo/luaoeeeaeau/)  
[lua源码欣赏](https://www.codingnow.com/temp/readinglua.pdf)

### 环境准备

```
brew install luajit
darcys@Darcys-MacBook-Pro /p/tmp> cat hello.lua
print("hello world")
darcys@Darcys-MacBook-Pro /p/tmp> luajit hello.lua
hello world
```

### lua for fun

[http://love2d.org/](http://love2d.org/)

### openresty学习资料

[https://yos.io/2016/01/28/building-an-api-gateway-with-lua-and-nginx/](https://yos.io/2016/01/28/building-an-api-gateway-with-lua-and-nginx/)  
[http://www.staticshin.com/programming/definitely-an-open-resty-guide/](http://www.staticshin.com/programming/definitely-an-open-resty-guide/)  
[http://www.staticshin.com/top-tens/things-about-openresty.html](http://www.staticshin.com/top-tens/things-about-openresty.html)  
下面的链接有很多范例  
[https://github.com/yandongxiao/openresty-learning](https://github.com/yandongxiao/openresty-learning)

### notes

```
The important thing to keep in mind here is that the directive always runs after the standard http_rewrite_module. So if you are using both keep that in mind.
```

### tool

create a openresty programme [https://github.com/brickcap/restyskeleton](https://github.com/brickcap/restyskeleton)

### 相关延展

[https://www.zhihu.com/question/28951394](https://www.zhihu.com/question/28951394) 大家对春哥的评价  
[Lua 为什么在游戏编程领域被广泛运用?](https://www.zhihu.com/question/21717567/answer/19099371)

libco的学习  
[https://github.com/Tencent/libco](https://github.com/Tencent/libco)  
[https://github.com/yyrdl/libco-code-study](https://github.com/yyrdl/libco-code-study)

### openresty运行机制，转载于 [definitely an openresty guide](http://www.staticshin.com/programming/definitely-an-open-resty-guide/#organization)

> Events coming on the master process are passed along to the worker processes or stored in a queue from where it is read by a worker process. The worker processes handle these events but they don't wait around for them to be completed. When they are notified of the completion they send back the response. This is what it looks like inside nginx
>
> An event happens ----&gt; worker sends the request to be processed in a handler -----&gt; worker starts servicing other events -----&gt; on completion of event it sends back the response.
>
> Concurrency in lua is implemented with the help of coroutines. A coroutine is a lightweight\(green\) thread that is spawned from the lua's execution environment. It is important to note that a coroutine is not an os level thread. It is a separate process with it's own stack and a line of execution that is runs in collaboration with lua's execution loop.

#### lua in wireshark

[https://wiki.wireshark.org/Lua/Taps](https://wiki.wireshark.org/Lua/Taps)





test update

