.class public Ljcifs/dcerpc/msrpc/MsrpcSamrOpenDomain;
.super Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/msrpc/SamrPolicyHandle;ILjcifs/dcerpc/rpc$sid_t;Ljcifs/dcerpc/msrpc/SamrDomainHandle;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Ljcifs/dcerpc/msrpc/samr$SamrOpenDomain;-><init>(Ljcifs/dcerpc/rpc$policy_handle;ILjcifs/dcerpc/rpc$sid_t;Ljcifs/dcerpc/rpc$policy_handle;)V

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/msrpc/MsrpcSamrOpenDomain;->ptype:I

    const/4 v0, 0x3

    iput v0, p0, Ljcifs/dcerpc/msrpc/MsrpcSamrOpenDomain;->flags:I

    return-void
.end method
