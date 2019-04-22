%%
%% Autogenerated by Thrift Compiler ()
%%
%% DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
%%

-module('Jaeger.Thrift.Zipkincore.Types').

-include("Jaeger.Thrift.Zipkincore.Types.hrl").

-export([struct_info/1, struct_info_ext/1, enum_info/1, enum_names/0, struct_names/0, exception_names/0]).

struct_info('Jaeger.Thrift.Zipkin.Endpoint') ->
  {struct, [{1, i32},
          {2, i16},
          {3, string},
          {4, string}]}
;

struct_info('Jaeger.Thrift.Zipkin.Annotation') ->
  {struct, [{1, i64},
          {2, string},
          {3, {struct, {'Jaeger.Thrift.Zipkincore.Types', 'Jaeger.Thrift.Zipkin.Endpoint'}}}]}
;

struct_info('Jaeger.Thrift.Zipkin.BinaryAnnotation') ->
  {struct, [{1, string},
          {2, string},
          {3, i32},
          {4, {struct, {'Jaeger.Thrift.Zipkincore.Types', 'Jaeger.Thrift.Zipkin.Endpoint'}}}]}
;

struct_info('Jaeger.Thrift.Zipkin.Span') ->
  {struct, [{1, i64},
          {3, string},
          {4, i64},
          {5, i64},
          {6, {list, {struct, {'Jaeger.Thrift.Zipkincore.Types', 'Jaeger.Thrift.Zipkin.Annotation'}}}},
          {8, {list, {struct, {'Jaeger.Thrift.Zipkincore.Types', 'Jaeger.Thrift.Zipkin.BinaryAnnotation'}}}},
          {9, bool},
          {10, i64},
          {11, i64},
          {12, i64}]}
;

struct_info('Jaeger.Thrift.Zipkin.Response') ->
  {struct, [{1, bool}]}
;

struct_info(_) -> erlang:error(function_clause).

struct_info_ext('Jaeger.Thrift.Zipkin.Endpoint') ->
  {struct, [{1, undefined, i32, 'ipv4', undefined},
          {2, undefined, i16, 'port', undefined},
          {3, undefined, string, 'service_name', undefined},
          {4, optional, string, 'ipv6', undefined}]}
;

struct_info_ext('Jaeger.Thrift.Zipkin.Annotation') ->
  {struct, [{1, undefined, i64, 'timestamp', undefined},
          {2, undefined, string, 'value', undefined},
          {3, optional, {struct, {'Jaeger.Thrift.Zipkincore.Types', 'Jaeger.Thrift.Zipkin.Endpoint'}}, 'host', #'Jaeger.Thrift.Zipkin.Endpoint'{}}]}
;

struct_info_ext('Jaeger.Thrift.Zipkin.BinaryAnnotation') ->
  {struct, [{1, undefined, string, 'key', undefined},
          {2, undefined, string, 'value', undefined},
          {3, undefined, i32, 'annotation_type', undefined},
          {4, optional, {struct, {'Jaeger.Thrift.Zipkincore.Types', 'Jaeger.Thrift.Zipkin.Endpoint'}}, 'host', #'Jaeger.Thrift.Zipkin.Endpoint'{}}]}
;

struct_info_ext('Jaeger.Thrift.Zipkin.Span') ->
  {struct, [{1, undefined, i64, 'trace_id', undefined},
          {3, undefined, string, 'name', undefined},
          {4, undefined, i64, 'id', undefined},
          {5, optional, i64, 'parent_id', undefined},
          {6, undefined, {list, {struct, {'Jaeger.Thrift.Zipkincore.Types', 'Jaeger.Thrift.Zipkin.Annotation'}}}, 'annotations', []},
          {8, undefined, {list, {struct, {'Jaeger.Thrift.Zipkincore.Types', 'Jaeger.Thrift.Zipkin.BinaryAnnotation'}}}, 'binary_annotations', []},
          {9, optional, bool, 'debug', false},
          {10, optional, i64, 'timestamp', undefined},
          {11, optional, i64, 'duration', undefined},
          {12, optional, i64, 'trace_id_high', undefined}]}
;

struct_info_ext('Jaeger.Thrift.Zipkin.Response') ->
  {struct, [{1, required, bool, 'ok', undefined}]}
;

struct_info_ext(_) -> erlang:error(function_clause).

struct_names() ->
  ['Jaeger.Thrift.Zipkin.Endpoint', 'Jaeger.Thrift.Zipkin.Annotation', 'Jaeger.Thrift.Zipkin.BinaryAnnotation', 'Jaeger.Thrift.Zipkin.Span', 'Jaeger.Thrift.Zipkin.Response'].

enum_info('AnnotationType') ->
  [
    {'BOOL', 0},
    {'BYTES', 1},
    {'I16', 2},
    {'I32', 3},
    {'I64', 4},
    {'DOUBLE', 5},
    {'STRING', 6}
  ];

enum_info(_) -> erlang:error(function_clause).

enum_names() ->
  ['AnnotationType'].

exception_names() ->
  [].
