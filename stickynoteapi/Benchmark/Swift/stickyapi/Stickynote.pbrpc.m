#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import "Stickynote.pbrpc.h"
#import "Stickynote.pbobjc.h"
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriter+Immediate.h>


@implementation StickyNote

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"

// Designated initializer
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [super initWithHost:host
                 packageName:@"messagepb"
                 serviceName:@"StickyNote"
                 callOptions:callOptions];
}

- (instancetype)initWithHost:(NSString *)host {
  return [super initWithHost:host
                 packageName:@"messagepb"
                 serviceName:@"StickyNote"];
}

#pragma clang diagnostic pop

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName
                 callOptions:(GRPCCallOptions *)callOptions {
  return [self initWithHost:host callOptions:callOptions];
}

#pragma mark - Class Methods

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}

+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [[self alloc] initWithHost:host callOptions:callOptions];
}

#pragma mark - Method Implementations

#pragma mark Get(StickyNoteRequest) returns (StickyNoteResponse)

- (void)getWithRequest:(StickyNoteRequest *)request handler:(void(^)(StickyNoteResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetWithRequest:(StickyNoteRequest *)request handler:(void(^)(StickyNoteResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Get"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[StickyNoteResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getWithMessage:(StickyNoteRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"Get"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[StickyNoteResponse class]];
}

#pragma mark Update(stream StickyNoteRequest) returns (stream StickyNoteResponse)

- (void)updateWithRequestsWriter:(GRXWriter *)requestWriter eventHandler:(void(^)(BOOL done, StickyNoteResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToUpdateWithRequestsWriter:requestWriter eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUpdateWithRequestsWriter:(GRXWriter *)requestWriter eventHandler:(void(^)(BOOL done, StickyNoteResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"Update"
            requestsWriter:requestWriter
             responseClass:[StickyNoteResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
- (GRPCStreamingProtoCall *)updateWithResponseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"Update"
           responseHandler:handler
               callOptions:callOptions
             responseClass:[StickyNoteResponse class]];
}

#pragma mark SayHello(SayHelloRequest) returns (SayHelloResponse)

- (void)sayHelloWithRequest:(SayHelloRequest *)request handler:(void(^)(SayHelloResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSayHelloWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSayHelloWithRequest:(SayHelloRequest *)request handler:(void(^)(SayHelloResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SayHello"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[SayHelloResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)sayHelloWithMessage:(SayHelloRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"SayHello"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[SayHelloResponse class]];
}

@end
#endif
