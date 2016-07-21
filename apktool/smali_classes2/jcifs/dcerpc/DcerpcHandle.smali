.class public abstract Ljcifs/dcerpc/DcerpcHandle;
.super Ljava/lang/Object;

# interfaces
.implements Ljcifs/dcerpc/DcerpcConstants;


# static fields
.field private static call_id:I


# instance fields
.field protected binding:Ljcifs/dcerpc/DcerpcBinding;

.field protected max_recv:I

.field protected max_xmit:I

.field protected securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

.field protected state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Ljcifs/dcerpc/DcerpcHandle;->call_id:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10b8

    iput v0, p0, Ljcifs/dcerpc/DcerpcHandle;->max_xmit:I

    iget v0, p0, Ljcifs/dcerpc/DcerpcHandle;->max_xmit:I

    iput v0, p0, Ljcifs/dcerpc/DcerpcHandle;->max_recv:I

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/DcerpcHandle;->state:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    return-void
.end method

.method public static getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;
    .locals 3

    const-string v0, "ncacn_np:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljcifs/dcerpc/DcerpcPipeHandle;

    invoke-direct {v0, p0, p1}, Ljcifs/dcerpc/DcerpcPipeHandle;-><init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V

    return-object v0

    :cond_0
    new-instance v0, Ljcifs/dcerpc/DcerpcException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DCERPC transport not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/dcerpc/DcerpcException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static parseBinding(Ljava/lang/String;)Ljcifs/dcerpc/DcerpcBinding;
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    const/4 v4, 0x0

    move-object v0, v2

    move-object v1, v2

    move-object v3, v2

    move v5, v4

    move v6, v4

    :cond_0
    aget-char v8, v7, v4

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    array-length v4, v7

    :cond_1
    :goto_0
    add-int/lit8 v4, v4, 0x1

    array-length v8, v7

    if-lt v4, v8, :cond_0

    if-eqz v0, :cond_2

    iget-object v1, v0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    if-nez v1, :cond_8

    :cond_2
    new-instance v0, Ljcifs/dcerpc/DcerpcException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid binding URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/dcerpc/DcerpcException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/16 v9, 0x3a

    if-ne v8, v9, :cond_1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :pswitch_2
    const/16 v9, 0x5c

    if-ne v8, v9, :cond_3

    add-int/lit8 v5, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x2

    :pswitch_3
    const/16 v9, 0x5b

    if-ne v8, v9, :cond_1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "127.0.0.1"

    :cond_4
    new-instance v0, Ljcifs/dcerpc/DcerpcBinding;

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Ljcifs/dcerpc/DcerpcBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x5

    goto :goto_0

    :pswitch_4
    const/16 v9, 0x3d

    if-ne v8, v9, :cond_5

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v5, v4, 0x1

    goto :goto_0

    :cond_5
    const/16 v9, 0x2c

    if-eq v8, v9, :cond_6

    const/16 v9, 0x5d

    if-ne v8, v9, :cond_1

    :cond_6
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    if-nez v1, :cond_7

    const-string v1, "endpoint"

    :cond_7
    invoke-virtual {v0, v1, v8}, Ljcifs/dcerpc/DcerpcBinding;->setOption(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_0

    :cond_8
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public bind()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Ljcifs/dcerpc/DcerpcHandle;->state:I

    new-instance v0, Ljcifs/dcerpc/DcerpcBind;

    iget-object v1, p0, Ljcifs/dcerpc/DcerpcHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    invoke-direct {v0, v1, p0}, Ljcifs/dcerpc/DcerpcBind;-><init>(Ljcifs/dcerpc/DcerpcBinding;Ljcifs/dcerpc/DcerpcHandle;)V

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput v1, p0, Ljcifs/dcerpc/DcerpcHandle;->state:I

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public abstract close()V
.end method

.method protected abstract doReceiveFragment([BZ)V
.end method

.method protected abstract doSendFragment([BIIZ)V
.end method

.method public getPrincipal()Ljava/security/Principal;
    .locals 1

    instance-of v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;

    if-eqz v0, :cond_0

    check-cast p0, Ljcifs/dcerpc/DcerpcPipeHandle;

    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->pipe:Ljcifs/smb/SmbNamedPipe;

    invoke-virtual {v0}, Ljcifs/smb/SmbNamedPipe;->getPrincipal()Ljava/security/Principal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;

    if-eqz v0, :cond_0

    check-cast p0, Ljcifs/dcerpc/DcerpcPipeHandle;

    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->pipe:Ljcifs/smb/SmbNamedPipe;

    invoke-virtual {v0}, Ljcifs/smb/SmbNamedPipe;->getServer()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V
    .locals 12

    const/16 v0, 0x18

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v4, 0x0

    iget v1, p0, Ljcifs/dcerpc/DcerpcHandle;->state:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljcifs/dcerpc/DcerpcHandle;->bind()V

    :cond_0
    const/4 v5, 0x1

    invoke-static {}, Ljcifs/smb/BufferCache;->getBuffer()[B

    move-result-object v1

    :try_start_0
    new-instance v7, Ljcifs/dcerpc/ndr/NdrBuffer;

    const/4 v2, 0x0

    invoke-direct {v7, v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;-><init>([BI)V

    const/4 v2, 0x3

    iput v2, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    sget v2, Ljcifs/dcerpc/DcerpcHandle;->call_id:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Ljcifs/dcerpc/DcerpcHandle;->call_id:I

    iput v2, p1, Ljcifs/dcerpc/DcerpcMessage;->call_id:I

    invoke-virtual {p1, v7}, Ljcifs/dcerpc/DcerpcMessage;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    iget-object v2, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    iget-object v2, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    invoke-interface {v2, v7}, Ljcifs/dcerpc/DcerpcSecurityProvider;->wrap(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_1
    invoke-virtual {v7}, Ljcifs/dcerpc/ndr/NdrBuffer;->getLength()I

    move-result v2

    add-int/lit8 v8, v2, -0x18

    move v6, v4

    :goto_0
    if-ge v6, v8, :cond_5

    sub-int v2, v8, v6

    add-int/lit8 v3, v2, 0x18

    iget v9, p0, Ljcifs/dcerpc/DcerpcHandle;->max_xmit:I

    if-le v3, v9, :cond_4

    iget v2, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    iget v2, p0, Ljcifs/dcerpc/DcerpcHandle;->max_xmit:I

    add-int/lit8 v2, v2, -0x18

    move v3, v5

    :goto_1
    add-int/lit8 v5, v2, 0x18

    iput v5, p1, Ljcifs/dcerpc/DcerpcMessage;->length:I

    if-lez v6, :cond_2

    iget v5, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    and-int/lit8 v5, v5, -0x2

    iput v5, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    :cond_2
    iget v5, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    and-int/lit8 v5, v5, 0x3

    if-eq v5, v11, :cond_3

    iput v6, v7, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    invoke-virtual {v7}, Ljcifs/dcerpc/ndr/NdrBuffer;->reset()V

    invoke-virtual {p1, v7}, Ljcifs/dcerpc/DcerpcMessage;->encode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    iget v5, p1, Ljcifs/dcerpc/DcerpcMessage;->alloc_hint:I

    invoke-virtual {v7, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    invoke-virtual {p1}, Ljcifs/dcerpc/DcerpcMessage;->getOpnum()I

    move-result v5

    invoke-virtual {v7, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    :cond_3
    iget v5, p1, Ljcifs/dcerpc/DcerpcMessage;->length:I

    invoke-virtual {p0, v1, v6, v5, v3}, Ljcifs/dcerpc/DcerpcHandle;->doSendFragment([BIIZ)V

    add-int/2addr v2, v6

    move v6, v2

    move v5, v3

    goto :goto_0

    :cond_4
    iget v3, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    iput v2, p1, Ljcifs/dcerpc/DcerpcMessage;->alloc_hint:I

    move v3, v4

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1, v5}, Ljcifs/dcerpc/DcerpcHandle;->doReceiveFragment([BZ)V

    invoke-virtual {v7}, Ljcifs/dcerpc/ndr/NdrBuffer;->reset()V

    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    invoke-virtual {v7}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v2

    invoke-virtual {v7, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->setLength(I)V

    iget-object v2, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    invoke-interface {v2, v7}, Ljcifs/dcerpc/DcerpcSecurityProvider;->unwrap(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    invoke-virtual {p1, v7}, Ljcifs/dcerpc/DcerpcMessage;->decode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    iget v2, p1, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    if-ne v2, v10, :cond_7

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljcifs/dcerpc/DcerpcMessage;->isFlagSet(I)Z

    move-result v2

    if-nez v2, :cond_7

    iget v0, p1, Ljcifs/dcerpc/DcerpcMessage;->length:I

    :cond_7
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_2
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/DcerpcMessage;->isFlagSet(I)Z

    move-result v4

    if-nez v4, :cond_b

    if-nez v3, :cond_8

    iget v2, p0, Ljcifs/dcerpc/DcerpcHandle;->max_recv:I

    new-array v3, v2, [B

    new-instance v2, Ljcifs/dcerpc/ndr/NdrBuffer;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;-><init>([BI)V

    :cond_8
    invoke-virtual {p0, v3, v5}, Ljcifs/dcerpc/DcerpcHandle;->doReceiveFragment([BZ)V

    invoke-virtual {v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->reset()V

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    invoke-virtual {v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v4

    invoke-virtual {v2, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->setLength(I)V

    iget-object v4, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    if-eqz v4, :cond_9

    iget-object v4, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    invoke-interface {v4, v2}, Ljcifs/dcerpc/DcerpcSecurityProvider;->unwrap(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_9
    invoke-virtual {v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->reset()V

    invoke-virtual {p1, v2}, Ljcifs/dcerpc/DcerpcMessage;->decode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    iget v4, p1, Ljcifs/dcerpc/DcerpcMessage;->length:I

    add-int/lit8 v6, v4, -0x18

    add-int v4, v0, v6

    array-length v7, v1

    if-le v4, v7, :cond_a

    add-int v4, v0, v6

    new-array v4, v4, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v1, v7, v4, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v4

    :cond_a
    const/16 v4, 0x18

    invoke-static {v3, v4, v1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v6

    goto :goto_2

    :cond_b
    new-instance v0, Ljcifs/dcerpc/ndr/NdrBuffer;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;-><init>([BI)V

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/DcerpcMessage;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    invoke-virtual {p1}, Ljcifs/dcerpc/DcerpcMessage;->getResult()Ljcifs/dcerpc/DcerpcException;

    move-result-object v0

    if-eqz v0, :cond_c

    throw v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    throw v0

    :cond_c
    return-void
.end method

.method public setDcerpcSecurityProvider(Ljcifs/dcerpc/DcerpcSecurityProvider;)V
    .locals 0

    iput-object p1, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/dcerpc/DcerpcHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcBinding;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
