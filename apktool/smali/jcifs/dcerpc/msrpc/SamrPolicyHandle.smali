.class public Ljcifs/dcerpc/msrpc/SamrPolicyHandle;
.super Ljcifs/dcerpc/rpc$policy_handle;


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljcifs/dcerpc/rpc$policy_handle;-><init>()V

    if-nez p2, :cond_0

    const-string p2, "\\\\"

    :cond_0
    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect4;

    invoke-direct {v0, p2, p3, p0}, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect4;-><init>(Ljava/lang/String;ILjcifs/dcerpc/msrpc/SamrPolicyHandle;)V

    :try_start_0
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V
    :try_end_0
    .catch Ljcifs/dcerpc/DcerpcException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcException;->getErrorCode()I

    move-result v1

    const v2, 0x1c010002

    if-eq v1, v2, :cond_1

    throw v0

    :cond_1
    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect2;

    invoke-direct {v0, p2, p3, p0}, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect2;-><init>(Ljava/lang/String;ILjcifs/dcerpc/msrpc/SamrPolicyHandle;)V

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method
