.class Lcom/jcraft/jsch/UserAuthKeyboardInteractive;
.super Lcom/jcraft/jsch/UserAuth;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jcraft/jsch/Session;)Z
    .locals 14

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->a(Lcom/jcraft/jsch/Session;)Z

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->a:Lcom/jcraft/jsch/UserInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->a:Lcom/jcraft/jsch/UserInfo;

    instance-of v0, v0, Lcom/jcraft/jsch/UIKeyboardInteractive;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/jcraft/jsch/Session;->o:I

    const/16 v2, 0x16

    if-eq v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/jcraft/jsch/Session;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v0, p1, Lcom/jcraft/jsch/Session;->q:[B

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v12

    move-object v2, v0

    move v0, v6

    :goto_1
    iget v3, p1, Lcom/jcraft/jsch/Session;->l:I

    iget v4, p1, Lcom/jcraft/jsch/Session;->k:I

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v12}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    const-string v4, "ssh-connection"

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    const-string v4, "keyboard-interactive"

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    sget-object v4, Lcom/jcraft/jsch/Util;->a:[B

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    sget-object v4, Lcom/jcraft/jsch/Util;->a:[B

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v3}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    move v7, v0

    move-object v8, v2

    move v0, v9

    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->n()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x34

    if-ne v2, v3, :cond_4

    move v6, v9

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x35

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->d()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->g()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->g()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->j()[B

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->a:Lcom/jcraft/jsch/UserInfo;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->a:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v3, v2}, Lcom/jcraft/jsch/UserInfo;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/16 v3, 0x33

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->d()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->g()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->g()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->g()I

    move-result v3

    if-eqz v3, :cond_6

    new-instance v0, Lcom/jcraft/jsch/JSchPartialAuthException;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-nez v0, :cond_0

    iget v0, p1, Lcom/jcraft/jsch/Session;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/jcraft/jsch/Session;->l:I

    if-eqz v7, :cond_12

    new-instance v0, Lcom/jcraft/jsch/JSchAuthCancelException;

    const-string v1, "keyboard-interactive"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v0, 0x3c

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->g()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->g()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v13

    new-array v4, v13, [Ljava/lang/String;

    new-array v5, v13, [Z

    move v11, v6

    :goto_3
    if-lt v11, v13, :cond_a

    if-eqz v8, :cond_c

    array-length v0, v4

    if-ne v0, v9, :cond_c

    aget-boolean v0, v5, v6

    if-nez v0, :cond_c

    aget-object v0, v4, v6

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v11, "password:"

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_c

    new-array v0, v9, [[B

    aput-object v8, v0, v6

    move-object v8, v10

    :goto_4
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->a(B)V

    if-lez v13, :cond_11

    if-eqz v0, :cond_8

    array-length v2, v0

    if-eq v13, v2, :cond_11

    :cond_8
    if-nez v0, :cond_10

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v13}, Lcom/jcraft/jsch/Buffer;->a(I)V

    move v2, v6

    :goto_5
    if-lt v2, v13, :cond_f

    :goto_6
    if-nez v0, :cond_9

    move v7, v9

    :cond_9
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    move v0, v6

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->g()I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v9

    :goto_7
    aput-boolean v0, v5, v11

    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_3

    :cond_b
    move v0, v6

    goto :goto_7

    :cond_c
    if-gtz v13, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    :cond_d
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->a:Lcom/jcraft/jsch/UserInfo;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->a:Lcom/jcraft/jsch/UserInfo;

    check-cast v0, Lcom/jcraft/jsch/UIKeyboardInteractive;

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/UIKeyboardInteractive;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13

    array-length v0, v3

    new-array v2, v0, [[B

    move v0, v6

    :goto_8
    array-length v4, v3

    if-lt v0, v4, :cond_e

    move-object v0, v2

    goto :goto_4

    :cond_e
    aget-object v4, v3, v0

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_f
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    sget-object v4, Lcom/jcraft/jsch/Util;->a:[B

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_10
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v6}, Lcom/jcraft/jsch/Buffer;->a(I)V

    goto :goto_6

    :cond_11
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v13}, Lcom/jcraft/jsch/Buffer;->a(I)V

    move v2, v6

    :goto_9
    if-ge v2, v13, :cond_9

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_12
    move v0, v7

    move-object v2, v8

    goto/16 :goto_1

    :cond_13
    move-object v0, v10

    goto/16 :goto_4
.end method
