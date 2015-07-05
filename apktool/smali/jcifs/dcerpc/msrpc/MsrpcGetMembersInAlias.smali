.class public Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;
.super Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/msrpc/SamrAliasHandle;Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;-><init>(Ljcifs/dcerpc/rpc$policy_handle;Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;)V

    iput-object p2, p0, Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;->sids:Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;->ptype:I

    const/4 v0, 0x3

    iput v0, p0, Ljcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;->flags:I

    return-void
.end method
