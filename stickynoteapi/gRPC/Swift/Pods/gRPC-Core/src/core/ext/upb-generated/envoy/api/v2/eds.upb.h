/* This file was generated by upbc (the upb compiler) from the input
 * file:
 *
 *     envoy/api/v2/eds.proto
 *
 * Do not edit -- your changes will be discarded when the file is
 * regenerated. */

#ifndef ENVOY_API_V2_EDS_PROTO_UPB_H_
#define ENVOY_API_V2_EDS_PROTO_UPB_H_

#if COCOAPODS==1
  #include  "third_party/upb/upb/generated_util.h"
#else
  #include  "upb/generated_util.h"
#endif
#if COCOAPODS==1
  #include  "third_party/upb/upb/msg.h"
#else
  #include  "upb/msg.h"
#endif
#if COCOAPODS==1
  #include  "third_party/upb/upb/decode.h"
#else
  #include  "upb/decode.h"
#endif
#if COCOAPODS==1
  #include  "third_party/upb/upb/encode.h"
#else
  #include  "upb/encode.h"
#endif

#if COCOAPODS==1
  #include  "third_party/upb/upb/port_def.inc"
#else
  #include  "upb/port_def.inc"
#endif

#ifdef __cplusplus
extern "C" {
#endif

struct envoy_api_v2_ClusterLoadAssignment;
struct envoy_api_v2_ClusterLoadAssignment_Policy;
struct envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload;
struct envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry;
typedef struct envoy_api_v2_ClusterLoadAssignment envoy_api_v2_ClusterLoadAssignment;
typedef struct envoy_api_v2_ClusterLoadAssignment_Policy envoy_api_v2_ClusterLoadAssignment_Policy;
typedef struct envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload;
typedef struct envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry;
extern const upb_msglayout envoy_api_v2_ClusterLoadAssignment_msginit;
extern const upb_msglayout envoy_api_v2_ClusterLoadAssignment_Policy_msginit;
extern const upb_msglayout envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload_msginit;
extern const upb_msglayout envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry_msginit;
struct envoy_api_v2_endpoint_Endpoint;
struct envoy_api_v2_endpoint_LocalityLbEndpoints;
struct envoy_type_FractionalPercent;
struct google_protobuf_Duration;
struct google_protobuf_UInt32Value;
extern const upb_msglayout envoy_api_v2_endpoint_Endpoint_msginit;
extern const upb_msglayout envoy_api_v2_endpoint_LocalityLbEndpoints_msginit;
extern const upb_msglayout envoy_type_FractionalPercent_msginit;
extern const upb_msglayout google_protobuf_Duration_msginit;
extern const upb_msglayout google_protobuf_UInt32Value_msginit;


/* envoy.api.v2.ClusterLoadAssignment */

UPB_INLINE envoy_api_v2_ClusterLoadAssignment *envoy_api_v2_ClusterLoadAssignment_new(upb_arena *arena) {
  return (envoy_api_v2_ClusterLoadAssignment *)upb_msg_new(&envoy_api_v2_ClusterLoadAssignment_msginit, arena);
}
UPB_INLINE envoy_api_v2_ClusterLoadAssignment *envoy_api_v2_ClusterLoadAssignment_parse(const char *buf, size_t size,
                        upb_arena *arena) {
  envoy_api_v2_ClusterLoadAssignment *ret = envoy_api_v2_ClusterLoadAssignment_new(arena);
  return (ret && upb_decode(buf, size, ret, &envoy_api_v2_ClusterLoadAssignment_msginit, arena)) ? ret : NULL;
}
UPB_INLINE char *envoy_api_v2_ClusterLoadAssignment_serialize(const envoy_api_v2_ClusterLoadAssignment *msg, upb_arena *arena, size_t *len) {
  return upb_encode(msg, &envoy_api_v2_ClusterLoadAssignment_msginit, arena, len);
}

UPB_INLINE upb_strview envoy_api_v2_ClusterLoadAssignment_cluster_name(const envoy_api_v2_ClusterLoadAssignment *msg) { return UPB_FIELD_AT(msg, upb_strview, UPB_SIZE(0, 0)); }
UPB_INLINE const struct envoy_api_v2_endpoint_LocalityLbEndpoints* const* envoy_api_v2_ClusterLoadAssignment_endpoints(const envoy_api_v2_ClusterLoadAssignment *msg, size_t *len) { return (const struct envoy_api_v2_endpoint_LocalityLbEndpoints* const*)_upb_array_accessor(msg, UPB_SIZE(12, 24), len); }
UPB_INLINE const envoy_api_v2_ClusterLoadAssignment_Policy* envoy_api_v2_ClusterLoadAssignment_policy(const envoy_api_v2_ClusterLoadAssignment *msg) { return UPB_FIELD_AT(msg, const envoy_api_v2_ClusterLoadAssignment_Policy*, UPB_SIZE(8, 16)); }
UPB_INLINE const envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry* const* envoy_api_v2_ClusterLoadAssignment_named_endpoints(const envoy_api_v2_ClusterLoadAssignment *msg, size_t *len) { return (const envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry* const*)_upb_array_accessor(msg, UPB_SIZE(16, 32), len); }

UPB_INLINE void envoy_api_v2_ClusterLoadAssignment_set_cluster_name(envoy_api_v2_ClusterLoadAssignment *msg, upb_strview value) {
  UPB_FIELD_AT(msg, upb_strview, UPB_SIZE(0, 0)) = value;
}
UPB_INLINE struct envoy_api_v2_endpoint_LocalityLbEndpoints** envoy_api_v2_ClusterLoadAssignment_mutable_endpoints(envoy_api_v2_ClusterLoadAssignment *msg, size_t *len) {
  return (struct envoy_api_v2_endpoint_LocalityLbEndpoints**)_upb_array_mutable_accessor(msg, UPB_SIZE(12, 24), len);
}
UPB_INLINE struct envoy_api_v2_endpoint_LocalityLbEndpoints** envoy_api_v2_ClusterLoadAssignment_resize_endpoints(envoy_api_v2_ClusterLoadAssignment *msg, size_t len, upb_arena *arena) {
  return (struct envoy_api_v2_endpoint_LocalityLbEndpoints**)_upb_array_resize_accessor(msg, UPB_SIZE(12, 24), len, UPB_SIZE(4, 8), UPB_TYPE_MESSAGE, arena);
}
UPB_INLINE struct envoy_api_v2_endpoint_LocalityLbEndpoints* envoy_api_v2_ClusterLoadAssignment_add_endpoints(envoy_api_v2_ClusterLoadAssignment *msg, upb_arena *arena) {
  struct envoy_api_v2_endpoint_LocalityLbEndpoints* sub = (struct envoy_api_v2_endpoint_LocalityLbEndpoints*)upb_msg_new(&envoy_api_v2_endpoint_LocalityLbEndpoints_msginit, arena);
  bool ok = _upb_array_append_accessor(
      msg, UPB_SIZE(12, 24), UPB_SIZE(4, 8), UPB_TYPE_MESSAGE, &sub, arena);
  if (!ok) return NULL;
  return sub;
}
UPB_INLINE void envoy_api_v2_ClusterLoadAssignment_set_policy(envoy_api_v2_ClusterLoadAssignment *msg, envoy_api_v2_ClusterLoadAssignment_Policy* value) {
  UPB_FIELD_AT(msg, envoy_api_v2_ClusterLoadAssignment_Policy*, UPB_SIZE(8, 16)) = value;
}
UPB_INLINE struct envoy_api_v2_ClusterLoadAssignment_Policy* envoy_api_v2_ClusterLoadAssignment_mutable_policy(envoy_api_v2_ClusterLoadAssignment *msg, upb_arena *arena) {
  struct envoy_api_v2_ClusterLoadAssignment_Policy* sub = (struct envoy_api_v2_ClusterLoadAssignment_Policy*)envoy_api_v2_ClusterLoadAssignment_policy(msg);
  if (sub == NULL) {
    sub = (struct envoy_api_v2_ClusterLoadAssignment_Policy*)upb_msg_new(&envoy_api_v2_ClusterLoadAssignment_Policy_msginit, arena);
    if (!sub) return NULL;
    envoy_api_v2_ClusterLoadAssignment_set_policy(msg, sub);
  }
  return sub;
}
UPB_INLINE envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry** envoy_api_v2_ClusterLoadAssignment_mutable_named_endpoints(envoy_api_v2_ClusterLoadAssignment *msg, size_t *len) {
  return (envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry**)_upb_array_mutable_accessor(msg, UPB_SIZE(16, 32), len);
}
UPB_INLINE envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry** envoy_api_v2_ClusterLoadAssignment_resize_named_endpoints(envoy_api_v2_ClusterLoadAssignment *msg, size_t len, upb_arena *arena) {
  return (envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry**)_upb_array_resize_accessor(msg, UPB_SIZE(16, 32), len, UPB_SIZE(4, 8), UPB_TYPE_MESSAGE, arena);
}
UPB_INLINE struct envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry* envoy_api_v2_ClusterLoadAssignment_add_named_endpoints(envoy_api_v2_ClusterLoadAssignment *msg, upb_arena *arena) {
  struct envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry* sub = (struct envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry*)upb_msg_new(&envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry_msginit, arena);
  bool ok = _upb_array_append_accessor(
      msg, UPB_SIZE(16, 32), UPB_SIZE(4, 8), UPB_TYPE_MESSAGE, &sub, arena);
  if (!ok) return NULL;
  return sub;
}

/* envoy.api.v2.ClusterLoadAssignment.Policy */

UPB_INLINE envoy_api_v2_ClusterLoadAssignment_Policy *envoy_api_v2_ClusterLoadAssignment_Policy_new(upb_arena *arena) {
  return (envoy_api_v2_ClusterLoadAssignment_Policy *)upb_msg_new(&envoy_api_v2_ClusterLoadAssignment_Policy_msginit, arena);
}
UPB_INLINE envoy_api_v2_ClusterLoadAssignment_Policy *envoy_api_v2_ClusterLoadAssignment_Policy_parse(const char *buf, size_t size,
                        upb_arena *arena) {
  envoy_api_v2_ClusterLoadAssignment_Policy *ret = envoy_api_v2_ClusterLoadAssignment_Policy_new(arena);
  return (ret && upb_decode(buf, size, ret, &envoy_api_v2_ClusterLoadAssignment_Policy_msginit, arena)) ? ret : NULL;
}
UPB_INLINE char *envoy_api_v2_ClusterLoadAssignment_Policy_serialize(const envoy_api_v2_ClusterLoadAssignment_Policy *msg, upb_arena *arena, size_t *len) {
  return upb_encode(msg, &envoy_api_v2_ClusterLoadAssignment_Policy_msginit, arena, len);
}

UPB_INLINE const envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload* const* envoy_api_v2_ClusterLoadAssignment_Policy_drop_overloads(const envoy_api_v2_ClusterLoadAssignment_Policy *msg, size_t *len) { return (const envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload* const*)_upb_array_accessor(msg, UPB_SIZE(12, 24), len); }
UPB_INLINE const struct google_protobuf_UInt32Value* envoy_api_v2_ClusterLoadAssignment_Policy_overprovisioning_factor(const envoy_api_v2_ClusterLoadAssignment_Policy *msg) { return UPB_FIELD_AT(msg, const struct google_protobuf_UInt32Value*, UPB_SIZE(4, 8)); }
UPB_INLINE const struct google_protobuf_Duration* envoy_api_v2_ClusterLoadAssignment_Policy_endpoint_stale_after(const envoy_api_v2_ClusterLoadAssignment_Policy *msg) { return UPB_FIELD_AT(msg, const struct google_protobuf_Duration*, UPB_SIZE(8, 16)); }
UPB_INLINE bool envoy_api_v2_ClusterLoadAssignment_Policy_disable_overprovisioning(const envoy_api_v2_ClusterLoadAssignment_Policy *msg) { return UPB_FIELD_AT(msg, bool, UPB_SIZE(0, 0)); }

UPB_INLINE envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload** envoy_api_v2_ClusterLoadAssignment_Policy_mutable_drop_overloads(envoy_api_v2_ClusterLoadAssignment_Policy *msg, size_t *len) {
  return (envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload**)_upb_array_mutable_accessor(msg, UPB_SIZE(12, 24), len);
}
UPB_INLINE envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload** envoy_api_v2_ClusterLoadAssignment_Policy_resize_drop_overloads(envoy_api_v2_ClusterLoadAssignment_Policy *msg, size_t len, upb_arena *arena) {
  return (envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload**)_upb_array_resize_accessor(msg, UPB_SIZE(12, 24), len, UPB_SIZE(4, 8), UPB_TYPE_MESSAGE, arena);
}
UPB_INLINE struct envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload* envoy_api_v2_ClusterLoadAssignment_Policy_add_drop_overloads(envoy_api_v2_ClusterLoadAssignment_Policy *msg, upb_arena *arena) {
  struct envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload* sub = (struct envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload*)upb_msg_new(&envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload_msginit, arena);
  bool ok = _upb_array_append_accessor(
      msg, UPB_SIZE(12, 24), UPB_SIZE(4, 8), UPB_TYPE_MESSAGE, &sub, arena);
  if (!ok) return NULL;
  return sub;
}
UPB_INLINE void envoy_api_v2_ClusterLoadAssignment_Policy_set_overprovisioning_factor(envoy_api_v2_ClusterLoadAssignment_Policy *msg, struct google_protobuf_UInt32Value* value) {
  UPB_FIELD_AT(msg, struct google_protobuf_UInt32Value*, UPB_SIZE(4, 8)) = value;
}
UPB_INLINE struct google_protobuf_UInt32Value* envoy_api_v2_ClusterLoadAssignment_Policy_mutable_overprovisioning_factor(envoy_api_v2_ClusterLoadAssignment_Policy *msg, upb_arena *arena) {
  struct google_protobuf_UInt32Value* sub = (struct google_protobuf_UInt32Value*)envoy_api_v2_ClusterLoadAssignment_Policy_overprovisioning_factor(msg);
  if (sub == NULL) {
    sub = (struct google_protobuf_UInt32Value*)upb_msg_new(&google_protobuf_UInt32Value_msginit, arena);
    if (!sub) return NULL;
    envoy_api_v2_ClusterLoadAssignment_Policy_set_overprovisioning_factor(msg, sub);
  }
  return sub;
}
UPB_INLINE void envoy_api_v2_ClusterLoadAssignment_Policy_set_endpoint_stale_after(envoy_api_v2_ClusterLoadAssignment_Policy *msg, struct google_protobuf_Duration* value) {
  UPB_FIELD_AT(msg, struct google_protobuf_Duration*, UPB_SIZE(8, 16)) = value;
}
UPB_INLINE struct google_protobuf_Duration* envoy_api_v2_ClusterLoadAssignment_Policy_mutable_endpoint_stale_after(envoy_api_v2_ClusterLoadAssignment_Policy *msg, upb_arena *arena) {
  struct google_protobuf_Duration* sub = (struct google_protobuf_Duration*)envoy_api_v2_ClusterLoadAssignment_Policy_endpoint_stale_after(msg);
  if (sub == NULL) {
    sub = (struct google_protobuf_Duration*)upb_msg_new(&google_protobuf_Duration_msginit, arena);
    if (!sub) return NULL;
    envoy_api_v2_ClusterLoadAssignment_Policy_set_endpoint_stale_after(msg, sub);
  }
  return sub;
}
UPB_INLINE void envoy_api_v2_ClusterLoadAssignment_Policy_set_disable_overprovisioning(envoy_api_v2_ClusterLoadAssignment_Policy *msg, bool value) {
  UPB_FIELD_AT(msg, bool, UPB_SIZE(0, 0)) = value;
}

/* envoy.api.v2.ClusterLoadAssignment.Policy.DropOverload */

UPB_INLINE envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload *envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload_new(upb_arena *arena) {
  return (envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload *)upb_msg_new(&envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload_msginit, arena);
}
UPB_INLINE envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload *envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload_parse(const char *buf, size_t size,
                        upb_arena *arena) {
  envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload *ret = envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload_new(arena);
  return (ret && upb_decode(buf, size, ret, &envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload_msginit, arena)) ? ret : NULL;
}
UPB_INLINE char *envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload_serialize(const envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload *msg, upb_arena *arena, size_t *len) {
  return upb_encode(msg, &envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload_msginit, arena, len);
}

UPB_INLINE upb_strview envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload_category(const envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload *msg) { return UPB_FIELD_AT(msg, upb_strview, UPB_SIZE(0, 0)); }
UPB_INLINE const struct envoy_type_FractionalPercent* envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload_drop_percentage(const envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload *msg) { return UPB_FIELD_AT(msg, const struct envoy_type_FractionalPercent*, UPB_SIZE(8, 16)); }

UPB_INLINE void envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload_set_category(envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload *msg, upb_strview value) {
  UPB_FIELD_AT(msg, upb_strview, UPB_SIZE(0, 0)) = value;
}
UPB_INLINE void envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload_set_drop_percentage(envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload *msg, struct envoy_type_FractionalPercent* value) {
  UPB_FIELD_AT(msg, struct envoy_type_FractionalPercent*, UPB_SIZE(8, 16)) = value;
}
UPB_INLINE struct envoy_type_FractionalPercent* envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload_mutable_drop_percentage(envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload *msg, upb_arena *arena) {
  struct envoy_type_FractionalPercent* sub = (struct envoy_type_FractionalPercent*)envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload_drop_percentage(msg);
  if (sub == NULL) {
    sub = (struct envoy_type_FractionalPercent*)upb_msg_new(&envoy_type_FractionalPercent_msginit, arena);
    if (!sub) return NULL;
    envoy_api_v2_ClusterLoadAssignment_Policy_DropOverload_set_drop_percentage(msg, sub);
  }
  return sub;
}

/* envoy.api.v2.ClusterLoadAssignment.NamedEndpointsEntry */

UPB_INLINE envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry *envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry_new(upb_arena *arena) {
  return (envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry *)upb_msg_new(&envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry_msginit, arena);
}
UPB_INLINE envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry *envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry_parse(const char *buf, size_t size,
                        upb_arena *arena) {
  envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry *ret = envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry_new(arena);
  return (ret && upb_decode(buf, size, ret, &envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry_msginit, arena)) ? ret : NULL;
}
UPB_INLINE char *envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry_serialize(const envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry *msg, upb_arena *arena, size_t *len) {
  return upb_encode(msg, &envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry_msginit, arena, len);
}

UPB_INLINE upb_strview envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry_key(const envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry *msg) { return UPB_FIELD_AT(msg, upb_strview, UPB_SIZE(0, 0)); }
UPB_INLINE const struct envoy_api_v2_endpoint_Endpoint* envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry_value(const envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry *msg) { return UPB_FIELD_AT(msg, const struct envoy_api_v2_endpoint_Endpoint*, UPB_SIZE(8, 16)); }

UPB_INLINE void envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry_set_key(envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry *msg, upb_strview value) {
  UPB_FIELD_AT(msg, upb_strview, UPB_SIZE(0, 0)) = value;
}
UPB_INLINE void envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry_set_value(envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry *msg, struct envoy_api_v2_endpoint_Endpoint* value) {
  UPB_FIELD_AT(msg, struct envoy_api_v2_endpoint_Endpoint*, UPB_SIZE(8, 16)) = value;
}
UPB_INLINE struct envoy_api_v2_endpoint_Endpoint* envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry_mutable_value(envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry *msg, upb_arena *arena) {
  struct envoy_api_v2_endpoint_Endpoint* sub = (struct envoy_api_v2_endpoint_Endpoint*)envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry_value(msg);
  if (sub == NULL) {
    sub = (struct envoy_api_v2_endpoint_Endpoint*)upb_msg_new(&envoy_api_v2_endpoint_Endpoint_msginit, arena);
    if (!sub) return NULL;
    envoy_api_v2_ClusterLoadAssignment_NamedEndpointsEntry_set_value(msg, sub);
  }
  return sub;
}

#ifdef __cplusplus
}  /* extern "C" */
#endif

#if COCOAPODS==1
  #include  "third_party/upb/upb/port_undef.inc"
#else
  #include  "upb/port_undef.inc"
#endif

#endif  /* ENVOY_API_V2_EDS_PROTO_UPB_H_ */
