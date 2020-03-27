// Code generated by protoc-gen-go. DO NOT EDIT.
// source: go/src/messagepb/stickynote.proto

package messagepb

import (
	context "context"
	fmt "fmt"
	proto "github.com/golang/protobuf/proto"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
	math "math"
)

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal
var _ = fmt.Errorf
var _ = math.Inf

// This is a compile-time assertion to ensure that this generated file
// is compatible with the proto package it is being compiled against.
// A compilation error at this line likely means your copy of the
// proto package needs to be updated.
const _ = proto.ProtoPackageIsVersion3 // please upgrade the proto package

type StickyNoteRequest struct {
	Message              string   `protobuf:"bytes,1,opt,name=message,proto3" json:"message,omitempty"`
	Size                 int32    `protobuf:"varint,2,opt,name=size,proto3" json:"size,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *StickyNoteRequest) Reset()         { *m = StickyNoteRequest{} }
func (m *StickyNoteRequest) String() string { return proto.CompactTextString(m) }
func (*StickyNoteRequest) ProtoMessage()    {}
func (*StickyNoteRequest) Descriptor() ([]byte, []int) {
	return fileDescriptor_aa4cf67145a55ec7, []int{0}
}

func (m *StickyNoteRequest) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_StickyNoteRequest.Unmarshal(m, b)
}
func (m *StickyNoteRequest) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_StickyNoteRequest.Marshal(b, m, deterministic)
}
func (m *StickyNoteRequest) XXX_Merge(src proto.Message) {
	xxx_messageInfo_StickyNoteRequest.Merge(m, src)
}
func (m *StickyNoteRequest) XXX_Size() int {
	return xxx_messageInfo_StickyNoteRequest.Size(m)
}
func (m *StickyNoteRequest) XXX_DiscardUnknown() {
	xxx_messageInfo_StickyNoteRequest.DiscardUnknown(m)
}

var xxx_messageInfo_StickyNoteRequest proto.InternalMessageInfo

func (m *StickyNoteRequest) GetMessage() string {
	if m != nil {
		return m.Message
	}
	return ""
}

func (m *StickyNoteRequest) GetSize() int32 {
	if m != nil {
		return m.Size
	}
	return 0
}

type StickyNoteResponse struct {
	Image                []byte   `protobuf:"bytes,1,opt,name=image,proto3" json:"image,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *StickyNoteResponse) Reset()         { *m = StickyNoteResponse{} }
func (m *StickyNoteResponse) String() string { return proto.CompactTextString(m) }
func (*StickyNoteResponse) ProtoMessage()    {}
func (*StickyNoteResponse) Descriptor() ([]byte, []int) {
	return fileDescriptor_aa4cf67145a55ec7, []int{1}
}

func (m *StickyNoteResponse) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_StickyNoteResponse.Unmarshal(m, b)
}
func (m *StickyNoteResponse) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_StickyNoteResponse.Marshal(b, m, deterministic)
}
func (m *StickyNoteResponse) XXX_Merge(src proto.Message) {
	xxx_messageInfo_StickyNoteResponse.Merge(m, src)
}
func (m *StickyNoteResponse) XXX_Size() int {
	return xxx_messageInfo_StickyNoteResponse.Size(m)
}
func (m *StickyNoteResponse) XXX_DiscardUnknown() {
	xxx_messageInfo_StickyNoteResponse.DiscardUnknown(m)
}

var xxx_messageInfo_StickyNoteResponse proto.InternalMessageInfo

func (m *StickyNoteResponse) GetImage() []byte {
	if m != nil {
		return m.Image
	}
	return nil
}

type SayHelloRequest struct {
	Message              string   `protobuf:"bytes,1,opt,name=message,proto3" json:"message,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *SayHelloRequest) Reset()         { *m = SayHelloRequest{} }
func (m *SayHelloRequest) String() string { return proto.CompactTextString(m) }
func (*SayHelloRequest) ProtoMessage()    {}
func (*SayHelloRequest) Descriptor() ([]byte, []int) {
	return fileDescriptor_aa4cf67145a55ec7, []int{2}
}

func (m *SayHelloRequest) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_SayHelloRequest.Unmarshal(m, b)
}
func (m *SayHelloRequest) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_SayHelloRequest.Marshal(b, m, deterministic)
}
func (m *SayHelloRequest) XXX_Merge(src proto.Message) {
	xxx_messageInfo_SayHelloRequest.Merge(m, src)
}
func (m *SayHelloRequest) XXX_Size() int {
	return xxx_messageInfo_SayHelloRequest.Size(m)
}
func (m *SayHelloRequest) XXX_DiscardUnknown() {
	xxx_messageInfo_SayHelloRequest.DiscardUnknown(m)
}

var xxx_messageInfo_SayHelloRequest proto.InternalMessageInfo

func (m *SayHelloRequest) GetMessage() string {
	if m != nil {
		return m.Message
	}
	return ""
}

type SayHelloResponse struct {
	Message              string   `protobuf:"bytes,1,opt,name=message,proto3" json:"message,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *SayHelloResponse) Reset()         { *m = SayHelloResponse{} }
func (m *SayHelloResponse) String() string { return proto.CompactTextString(m) }
func (*SayHelloResponse) ProtoMessage()    {}
func (*SayHelloResponse) Descriptor() ([]byte, []int) {
	return fileDescriptor_aa4cf67145a55ec7, []int{3}
}

func (m *SayHelloResponse) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_SayHelloResponse.Unmarshal(m, b)
}
func (m *SayHelloResponse) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_SayHelloResponse.Marshal(b, m, deterministic)
}
func (m *SayHelloResponse) XXX_Merge(src proto.Message) {
	xxx_messageInfo_SayHelloResponse.Merge(m, src)
}
func (m *SayHelloResponse) XXX_Size() int {
	return xxx_messageInfo_SayHelloResponse.Size(m)
}
func (m *SayHelloResponse) XXX_DiscardUnknown() {
	xxx_messageInfo_SayHelloResponse.DiscardUnknown(m)
}

var xxx_messageInfo_SayHelloResponse proto.InternalMessageInfo

func (m *SayHelloResponse) GetMessage() string {
	if m != nil {
		return m.Message
	}
	return ""
}

func init() {
	proto.RegisterType((*StickyNoteRequest)(nil), "messagepb.StickyNoteRequest")
	proto.RegisterType((*StickyNoteResponse)(nil), "messagepb.StickyNoteResponse")
	proto.RegisterType((*SayHelloRequest)(nil), "messagepb.SayHelloRequest")
	proto.RegisterType((*SayHelloResponse)(nil), "messagepb.SayHelloResponse")
}

func init() {
	proto.RegisterFile("go/src/messagepb/stickynote.proto", fileDescriptor_aa4cf67145a55ec7)
}

var fileDescriptor_aa4cf67145a55ec7 = []byte{
	// 233 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0xe2, 0x52, 0x4c, 0xcf, 0xd7, 0x2f,
	0x2e, 0x4a, 0xd6, 0xcf, 0x4d, 0x2d, 0x2e, 0x4e, 0x4c, 0x4f, 0x2d, 0x48, 0xd2, 0x2f, 0x2e, 0xc9,
	0x4c, 0xce, 0xae, 0xcc, 0xcb, 0x2f, 0x49, 0xd5, 0x2b, 0x28, 0xca, 0x2f, 0xc9, 0x17, 0xe2, 0x84,
	0xcb, 0x29, 0x39, 0x72, 0x09, 0x06, 0x83, 0xa5, 0xfd, 0xf2, 0x4b, 0x52, 0x83, 0x52, 0x0b, 0x4b,
	0x53, 0x8b, 0x4b, 0x84, 0x24, 0xb8, 0xd8, 0xa1, 0x2a, 0x24, 0x18, 0x15, 0x18, 0x35, 0x38, 0x83,
	0x60, 0x5c, 0x21, 0x21, 0x2e, 0x96, 0xe2, 0xcc, 0xaa, 0x54, 0x09, 0x26, 0x05, 0x46, 0x0d, 0xd6,
	0x20, 0x30, 0x5b, 0x49, 0x8b, 0x4b, 0x08, 0xd9, 0x88, 0xe2, 0x82, 0xfc, 0xbc, 0xe2, 0x54, 0x21,
	0x11, 0x2e, 0xd6, 0xcc, 0x5c, 0x98, 0x09, 0x3c, 0x41, 0x10, 0x8e, 0x92, 0x36, 0x17, 0x7f, 0x70,
	0x62, 0xa5, 0x47, 0x6a, 0x4e, 0x4e, 0x3e, 0x41, 0xcb, 0x94, 0x74, 0xb8, 0x04, 0x10, 0x8a, 0xa1,
	0xc6, 0xe2, 0x54, 0x6d, 0xf4, 0x8c, 0x91, 0x8b, 0x0b, 0xe1, 0x0e, 0x21, 0x17, 0x2e, 0x66, 0xf7,
	0xd4, 0x12, 0x21, 0x19, 0x3d, 0xb8, 0x5f, 0xf5, 0x30, 0x3c, 0x2a, 0x25, 0x8b, 0x43, 0x16, 0x62,
	0x99, 0x12, 0x83, 0x90, 0x37, 0x17, 0x5b, 0x68, 0x41, 0x4a, 0x62, 0x49, 0x2a, 0x85, 0x06, 0x69,
	0x30, 0x1a, 0x30, 0x0a, 0xb9, 0x72, 0x71, 0xc0, 0xfc, 0x23, 0x24, 0x85, 0xac, 0x01, 0x35, 0x44,
	0xa4, 0xa4, 0xb1, 0xca, 0xc1, 0x8c, 0x4a, 0x62, 0x03, 0x47, 0xa2, 0x31, 0x20, 0x00, 0x00, 0xff,
	0xff, 0xe8, 0x4a, 0xf7, 0xb6, 0xe9, 0x01, 0x00, 0x00,
}

// Reference imports to suppress errors if they are not otherwise used.
var _ context.Context
var _ grpc.ClientConnInterface

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
const _ = grpc.SupportPackageIsVersion6

// StickyNoteClient is the client API for StickyNote service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type StickyNoteClient interface {
	Get(ctx context.Context, in *StickyNoteRequest, opts ...grpc.CallOption) (*StickyNoteResponse, error)
	Update(ctx context.Context, opts ...grpc.CallOption) (StickyNote_UpdateClient, error)
	SayHello(ctx context.Context, in *SayHelloRequest, opts ...grpc.CallOption) (*SayHelloResponse, error)
}

type stickyNoteClient struct {
	cc grpc.ClientConnInterface
}

func NewStickyNoteClient(cc grpc.ClientConnInterface) StickyNoteClient {
	return &stickyNoteClient{cc}
}

func (c *stickyNoteClient) Get(ctx context.Context, in *StickyNoteRequest, opts ...grpc.CallOption) (*StickyNoteResponse, error) {
	out := new(StickyNoteResponse)
	err := c.cc.Invoke(ctx, "/messagepb.StickyNote/Get", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *stickyNoteClient) Update(ctx context.Context, opts ...grpc.CallOption) (StickyNote_UpdateClient, error) {
	stream, err := c.cc.NewStream(ctx, &_StickyNote_serviceDesc.Streams[0], "/messagepb.StickyNote/Update", opts...)
	if err != nil {
		return nil, err
	}
	x := &stickyNoteUpdateClient{stream}
	return x, nil
}

type StickyNote_UpdateClient interface {
	Send(*StickyNoteRequest) error
	Recv() (*StickyNoteResponse, error)
	grpc.ClientStream
}

type stickyNoteUpdateClient struct {
	grpc.ClientStream
}

func (x *stickyNoteUpdateClient) Send(m *StickyNoteRequest) error {
	return x.ClientStream.SendMsg(m)
}

func (x *stickyNoteUpdateClient) Recv() (*StickyNoteResponse, error) {
	m := new(StickyNoteResponse)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *stickyNoteClient) SayHello(ctx context.Context, in *SayHelloRequest, opts ...grpc.CallOption) (*SayHelloResponse, error) {
	out := new(SayHelloResponse)
	err := c.cc.Invoke(ctx, "/messagepb.StickyNote/SayHello", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// StickyNoteServer is the server API for StickyNote service.
type StickyNoteServer interface {
	Get(context.Context, *StickyNoteRequest) (*StickyNoteResponse, error)
	Update(StickyNote_UpdateServer) error
	SayHello(context.Context, *SayHelloRequest) (*SayHelloResponse, error)
}

// UnimplementedStickyNoteServer can be embedded to have forward compatible implementations.
type UnimplementedStickyNoteServer struct {
}

func (*UnimplementedStickyNoteServer) Get(ctx context.Context, req *StickyNoteRequest) (*StickyNoteResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Get not implemented")
}
func (*UnimplementedStickyNoteServer) Update(srv StickyNote_UpdateServer) error {
	return status.Errorf(codes.Unimplemented, "method Update not implemented")
}
func (*UnimplementedStickyNoteServer) SayHello(ctx context.Context, req *SayHelloRequest) (*SayHelloResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SayHello not implemented")
}

func RegisterStickyNoteServer(s *grpc.Server, srv StickyNoteServer) {
	s.RegisterService(&_StickyNote_serviceDesc, srv)
}

func _StickyNote_Get_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(StickyNoteRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(StickyNoteServer).Get(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/messagepb.StickyNote/Get",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(StickyNoteServer).Get(ctx, req.(*StickyNoteRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _StickyNote_Update_Handler(srv interface{}, stream grpc.ServerStream) error {
	return srv.(StickyNoteServer).Update(&stickyNoteUpdateServer{stream})
}

type StickyNote_UpdateServer interface {
	Send(*StickyNoteResponse) error
	Recv() (*StickyNoteRequest, error)
	grpc.ServerStream
}

type stickyNoteUpdateServer struct {
	grpc.ServerStream
}

func (x *stickyNoteUpdateServer) Send(m *StickyNoteResponse) error {
	return x.ServerStream.SendMsg(m)
}

func (x *stickyNoteUpdateServer) Recv() (*StickyNoteRequest, error) {
	m := new(StickyNoteRequest)
	if err := x.ServerStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func _StickyNote_SayHello_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(SayHelloRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(StickyNoteServer).SayHello(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/messagepb.StickyNote/SayHello",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(StickyNoteServer).SayHello(ctx, req.(*SayHelloRequest))
	}
	return interceptor(ctx, in, info, handler)
}

var _StickyNote_serviceDesc = grpc.ServiceDesc{
	ServiceName: "messagepb.StickyNote",
	HandlerType: (*StickyNoteServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "Get",
			Handler:    _StickyNote_Get_Handler,
		},
		{
			MethodName: "SayHello",
			Handler:    _StickyNote_SayHello_Handler,
		},
	},
	Streams: []grpc.StreamDesc{
		{
			StreamName:    "Update",
			Handler:       _StickyNote_Update_Handler,
			ServerStreams: true,
			ClientStreams: true,
		},
	},
	Metadata: "go/src/messagepb/stickynote.proto",
}
