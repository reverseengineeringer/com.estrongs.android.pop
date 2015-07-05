.class Lcom/jcraft/jsch/UserAuthPublicKey;
.super Lcom/jcraft/jsch/UserAuth;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jcraft/jsch/Session;)Z
    .locals 13

    const/4 v7, 0x5

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->a(Lcom/jcraft/jsch/Session;)Z

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->i()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/jcraft/jsch/IdentityRepository;->a()Ljava/util/Vector;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_0

    monitor-exit v9

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v10

    move v8, v2

    :goto_1
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v8, v0, :cond_2

    :cond_1
    monitor-exit v9

    move v0, v2

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/jcraft/jsch/Session;->l:I

    iget v1, p1, Lcom/jcraft/jsch/Session;->k:I

    if-lt v0, v1, :cond_3

    monitor-exit v9

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v9, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Identity;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->a()[B

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    const/16 v6, 0x32

    invoke-virtual {v1, v6}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v10}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    const-string v6, "ssh-connection"

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    const-string v6, "publickey"

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->n()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/16 v6, 0x3c

    if-ne v1, v6, :cond_7

    :cond_5
    const/16 v6, 0x3c

    if-eq v1, v6, :cond_8

    :cond_6
    :goto_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_7
    const/16 v6, 0x33

    if-eq v1, v6, :cond_5

    const/16 v6, 0x35

    if-ne v1, v6, :cond_5

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->d()I

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->g()I

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->g()I

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v1

    iget-object v6, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->j()[B

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->a:Lcom/jcraft/jsch/UserInfo;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->a:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v6, v1}, Lcom/jcraft/jsch/UserInfo;->d(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_8
    move v1, v7

    :cond_9
    :try_start_1
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->d()Z

    move-result v6

    if-eqz v6, :cond_14

    if-nez v5, :cond_14

    iget-object v6, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->a:Lcom/jcraft/jsch/UserInfo;

    if-nez v6, :cond_a

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "USERAUTH fail"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->d()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->a:Lcom/jcraft/jsch/UserInfo;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Passphrase for "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Lcom/jcraft/jsch/UserInfo;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    new-instance v0, Lcom/jcraft/jsch/JSchAuthCancelException;

    const-string v1, "publickey"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v6, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->a:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v6}, Lcom/jcraft/jsch/UserInfo;->b()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_14

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v6

    :goto_4
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->d()Z

    move-result v11

    if-eqz v11, :cond_c

    if-eqz v6, :cond_e

    :cond_c
    invoke-interface {v0, v6}, Lcom/jcraft/jsch/Identity;->a([B)Z

    move-result v11

    if-eqz v11, :cond_e

    if-eqz v6, :cond_13

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->i()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v1

    instance-of v1, v1, Lcom/jcraft/jsch/IdentityRepository$Wrapper;

    if-eqz v1, :cond_13

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->i()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v1

    check-cast v1, Lcom/jcraft/jsch/IdentityRepository$Wrapper;

    invoke-virtual {v1}, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->c()V

    move-object v1, v6

    :goto_5
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->d([B)V

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->d()Z

    move-result v1

    if-nez v1, :cond_6

    if-nez v4, :cond_12

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->a()[B

    move-result-object v1

    :goto_6
    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    const/16 v6, 0x32

    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4, v10}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    const-string v6, "ssh-connection"

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    const-string v6, "publickey"

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->a()[B

    move-result-object v1

    array-length v4, v1

    add-int/lit8 v6, v4, 0x4

    iget-object v11, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    iget v11, v11, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/2addr v6, v11

    add-int/lit8 v6, v6, -0x5

    new-array v6, v6, [B

    const/4 v11, 0x0

    ushr-int/lit8 v12, v4, 0x18

    int-to-byte v12, v12

    aput-byte v12, v6, v11

    const/4 v11, 0x1

    ushr-int/lit8 v12, v4, 0x10

    int-to-byte v12, v12

    aput-byte v12, v6, v11

    const/4 v11, 0x2

    ushr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, v6, v11

    const/4 v11, 0x3

    int-to-byte v12, v4

    aput-byte v12, v6, v11

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-static {v1, v11, v6, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v11, 0x5

    add-int/lit8 v4, v4, 0x4

    iget-object v12, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    iget v12, v12, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/lit8 v12, v12, -0x5

    invoke-static {v1, v11, v6, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v0, v6}, Lcom/jcraft/jsch/Identity;->b([B)[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    :cond_d
    :goto_7
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->n()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x34

    if-ne v0, v1, :cond_f

    monitor-exit v9

    move v0, v3

    goto/16 :goto_0

    :cond_e
    invoke-static {v6}, Lcom/jcraft/jsch/Util;->d([B)V

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_9

    move-object v1, v5

    goto/16 :goto_5

    :cond_f
    const/16 v1, 0x35

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->g()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->g()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->j()[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->a:Lcom/jcraft/jsch/UserInfo;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->a:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v1, v0}, Lcom/jcraft/jsch/UserInfo;->d(Ljava/lang/String;)V

    goto :goto_7

    :cond_10
    const/16 v1, 0x33

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->g()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->g()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->g()I

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Lcom/jcraft/jsch/JSchPartialAuthException;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    iget v0, p1, Lcom/jcraft/jsch/Session;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/jcraft/jsch/Session;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :cond_12
    move-object v1, v4

    goto/16 :goto_6

    :cond_13
    move-object v1, v6

    goto/16 :goto_5

    :cond_14
    move-object v6, v5

    goto/16 :goto_4
.end method
