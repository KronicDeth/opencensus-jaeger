

# opencensus_jaeger #

Copyright (c) 2019 Ilya Khaprov <<i.khaprov@gmail.com>>.

__Version:__ 0.0.1

OpenCensus Jaeger Reporter
=====

[![Hex.pm][Hex badge]][Hex link]
[![Hex.pm Downloads][Hex downloads badge]][Hex link]
[![Build Status][Travis badge]][Travis link]
[![Coverage Status][Coveralls badge]][Coveralls link]

To use, add `opencensus_jaeger` dependency as a runtime application (in rebar3 this means add to the `applications` list of `.app.src`) and set as the reporter in the `opencensus` configuration:

``` erlang
{opencensus, [
    {reporters, [{oc_reporter_jaeger, [{address, "http://localhost:9411/api/v2/spans"},
                                       {service_name, <<"service">>}
                                       {service_tags, %{<<"key">> => <<"value">>}}]}]},
    ...]}`''

## License

MIT

[Hex badge]: https://img.shields.io/hexpm/v/opencensus_jaeger.svg?maxAge=2592000?style=plastic
[Hex link]: https://hex.pm/packages/opencensus_jaeger
[Hex downloads badge]: https://img.shields.io/hexpm/dt/opencensus_jaeger.svg?maxAge=2592000
[Travis badge]: https://travis-ci.org/opencensus-beam/opencensus_jaeger.svg?branch=version-3
[Travis link]: https://travis-ci.org/opencensus-beam/opencensus_jaeger
[Coveralls badge]: https://coveralls.io/repos/github/opencensus-beam/opencensus_jaeger/badge.svg?branch=master
[Coveralls link]: https://coveralls.io/github/opencensus-beam/opencensus_jaeger?branch=master


## Modules ##


<table width="100%" border="0" summary="list of modules">
<tr><td><a href="oc_reporter_jaeger.md" class="module">oc_reporter_jaeger</a></td></tr>
<tr><td><a href="oc_reporter_jaeger_transport_udp.md" class="module">oc_reporter_jaeger_transport_udp</a></td></tr>
<tr><td><a href="opencensus_jaeger.md" class="module">opencensus_jaeger</a></td></tr>
<tr><td><a href="repl.md" class="module">repl</a></td></tr></table>
