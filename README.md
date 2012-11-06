Render Monkey
=============

This is a set of proof-of-concept node servers and ruby clients for rendering json / ejs template pairs.

Implemented three ways:

**socket.js & socket_client.rb** - Uses a unix socket.

**server.js & server_client.rb** - Uses a http server.

**cli.js && cli_client.rb** -- Users a command line app.


Benchmarking
------------

Each pair above can be executed independantly, or you can do the following to see some basic comparsions of all three approaches:

````bash
foreman start
./bench
````

This runs 1,000 identical renders against all 3 methods:

````
user     system      total        real
socket  1.390000   0.150000   1.540000 (  2.264131)
server 41.820000   0.270000  42.090000 ( 44.117210)
cli     0.260000   0.880000  74.250000 ( 75.808645)
````

