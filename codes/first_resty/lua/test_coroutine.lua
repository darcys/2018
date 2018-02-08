function receive ()
    local status, value = coroutine.resume(producer)
    return value
end

function send (x)
    coroutine.yield(x)
end

function consumer ()
    while true do
        local x = receive()        -- receive from producer
        io.write(x, "\n")          -- consume new value
    end
end

producer = coroutine.create(
function ()
    while true do
        local x = io.read()     -- produce new value
        send(x)                 -- send to consumer
    end
end)

consumer()