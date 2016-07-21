.class public Ljcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;
.super Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjcifs/dcerpc/msrpc/LsaPolicyHandle;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;

    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Ljcifs/dcerpc/msrpc/lsarpc$LsarOpenPolicy2;-><init>(Ljava/lang/String;Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;ILjcifs/dcerpc/rpc$policy_handle;)V

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;->object_attributes:Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;

    const/16 v1, 0x18

    iput v1, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->length:I

    new-instance v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    invoke-direct {v0}, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;-><init>()V

    const/16 v1, 0xc

    iput v1, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->length:I

    const/4 v1, 0x2

    iput-short v1, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->impersonation_level:S

    const/4 v1, 0x1

    iput-byte v1, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->context_mode:B

    iput-byte v2, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->effective_only:B

    iget-object v1, p0, Ljcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;->object_attributes:Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;

    iput-object v0, v1, Ljcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Ljcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    iput v2, p0, Ljcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;->ptype:I

    const/4 v0, 0x3

    iput v0, p0, Ljcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;->flags:I

    return-void
.end method
