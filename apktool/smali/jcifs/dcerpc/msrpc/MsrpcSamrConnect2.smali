.class public Ljcifs/dcerpc/msrpc/MsrpcSamrConnect2;
.super Ljcifs/dcerpc/msrpc/samr$SamrConnect2;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjcifs/dcerpc/msrpc/SamrPolicyHandle;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Ljcifs/dcerpc/msrpc/samr$SamrConnect2;-><init>(Ljava/lang/String;ILjcifs/dcerpc/rpc$policy_handle;)V

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect2;->ptype:I

    const/4 v0, 0x3

    iput v0, p0, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect2;->flags:I

    return-void
.end method
