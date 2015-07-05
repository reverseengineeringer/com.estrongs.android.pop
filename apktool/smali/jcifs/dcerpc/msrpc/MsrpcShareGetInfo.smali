.class public Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;
.super Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x1f6

    new-instance v1, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;

    invoke-direct {v1}, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjcifs/dcerpc/ndr/NdrObject;)V

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;->ptype:I

    const/4 v0, 0x3

    iput v0, p0, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;->flags:I

    return-void
.end method


# virtual methods
.method public getSecurity()[Ljcifs/smb/ACE;
    .locals 4

    iget-object v0, p0, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;->info:Ljcifs/dcerpc/ndr/NdrObject;

    check-cast v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;

    iget-object v1, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    if-eqz v1, :cond_0

    new-instance v1, Ljcifs/smb/SecurityDescriptor;

    iget-object v2, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    const/4 v3, 0x0

    iget v0, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->sd_size:I

    invoke-direct {v1, v2, v3, v0}, Ljcifs/smb/SecurityDescriptor;-><init>([BII)V

    iget-object v0, v1, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
