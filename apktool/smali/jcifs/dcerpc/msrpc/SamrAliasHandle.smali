.class public Ljcifs/dcerpc/msrpc/SamrAliasHandle;
.super Ljcifs/dcerpc/rpc$policy_handle;


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrDomainHandle;II)V
    .locals 3

    invoke-direct {p0}, Ljcifs/dcerpc/rpc$policy_handle;-><init>()V

    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;

    invoke-direct {v0, p2, p3, p4, p0}, Ljcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;-><init>(Ljcifs/dcerpc/msrpc/SamrDomainHandle;IILjcifs/dcerpc/msrpc/SamrAliasHandle;)V

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    iget v1, v0, Ljcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;->retval:I

    if-eqz v1, :cond_0

    new-instance v1, Ljcifs/smb/SmbException;

    iget v0, v0, Ljcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;->retval:I

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v1

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method
