.class public Ljcifs/dcerpc/msrpc/LsaPolicyHandle;
.super Ljcifs/dcerpc/rpc$policy_handle;


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljcifs/dcerpc/rpc$policy_handle;-><init>()V

    if-nez p2, :cond_0

    const-string p2, "\\\\"

    :cond_0
    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;

    invoke-direct {v0, p2, p3, p0}, Ljcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;-><init>(Ljava/lang/String;ILjcifs/dcerpc/msrpc/LsaPolicyHandle;)V

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    iget v1, v0, Ljcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;->retval:I

    if-eqz v1, :cond_1

    new-instance v1, Ljcifs/smb/SmbException;

    iget v0, v0, Ljcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;->retval:I

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v1

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method
