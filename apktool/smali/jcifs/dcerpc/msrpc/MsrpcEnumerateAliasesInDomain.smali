.class public Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;
.super Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/msrpc/SamrDomainHandle;ILjcifs/dcerpc/msrpc/samr$SamrSamArray;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;-><init>(Ljcifs/dcerpc/rpc$policy_handle;IILjcifs/dcerpc/msrpc/samr$SamrSamArray;I)V

    iput-object p3, p0, Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;->sam:Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    iput v2, p0, Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;->ptype:I

    const/4 v0, 0x3

    iput v0, p0, Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;->flags:I

    return-void
.end method
