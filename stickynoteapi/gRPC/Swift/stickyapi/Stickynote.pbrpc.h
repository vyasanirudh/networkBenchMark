#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "Stickynote.pbobjc.h"
#endif

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>
#endif

@class SayHelloRequest;
@class SayHelloResponse;
@class StickyNoteRequest;
@class StickyNoteResponse;

#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#endif

@class GRPCUnaryProtoCall;
@class GRPCStreamingProtoCall;
@class GRPCCallOptions;
@protocol GRPCProtoResponseHandler;
@class GRPCProtoCall;


NS_ASSUME_NONNULL_BEGIN

@protocol StickyNote2 <NSObject>

#pragma mark Get(StickyNoteRequest) returns (StickyNoteResponse)

- (GRPCUnaryProtoCall *)getWithMessage:(StickyNoteRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark Update(stream StickyNoteRequest) returns (stream StickyNoteResponse)

- (GRPCStreamingProtoCall *)updateWithResponseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark SayHello(SayHelloRequest) returns (SayHelloResponse)

- (GRPCUnaryProtoCall *)sayHelloWithMessage:(SayHelloRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

@end

/**
 * The methods in this protocol belong to a set of old APIs that have been deprecated. They do not
 * recognize call options provided in the initializer. Using the v2 protocol is recommended.
 */
@protocol StickyNote <NSObject>

#pragma mark Get(StickyNoteRequest) returns (StickyNoteResponse)

- (void)getWithRequest:(StickyNoteRequest *)request handler:(void(^)(StickyNoteResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetWithRequest:(StickyNoteRequest *)request handler:(void(^)(StickyNoteResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Update(stream StickyNoteRequest) returns (stream StickyNoteResponse)

- (void)updateWithRequestsWriter:(GRXWriter *)requestWriter eventHandler:(void(^)(BOOL done, StickyNoteResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToUpdateWithRequestsWriter:(GRXWriter *)requestWriter eventHandler:(void(^)(BOOL done, StickyNoteResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark SayHello(SayHelloRequest) returns (SayHelloResponse)

- (void)sayHelloWithRequest:(SayHelloRequest *)request handler:(void(^)(SayHelloResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToSayHelloWithRequest:(SayHelloRequest *)request handler:(void(^)(SayHelloResponse *_Nullable response, NSError *_Nullable error))handler;


@end


#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface StickyNote : GRPCProtoService<StickyNote2, StickyNote>
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions;
// The following methods belong to a set of old APIs that have been deprecated.
- (instancetype)initWithHost:(NSString *)host;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
#endif

NS_ASSUME_NONNULL_END

