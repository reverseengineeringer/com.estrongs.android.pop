.class Lcom/jcraft/jsch/UserAuthPassword;
.super Lcom/jcraft/jsch/UserAuth;


# instance fields
.field private final e:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->e:I

    return-void
.end method


# virtual methods
.method public a(Lcom/jcraft/jsch/Session;)Z
    .locals 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->a(Lcom/jcraft/jsch/Session;)Z

    iget-object v2, p1, Lcom/jcraft/jsch/Session;->q:[B

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPassword;->d:Ljava/lang/String;

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

    const/16 v3, 0x16

    if-eq v0, v3, :cond_0

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

    :cond_0
    :goto_0
    :try_start_0
    iget v0, p1, Lcom/jcraft/jsch/Session;->l:I

    iget v3, p1, Lcom/jcraft/jsch/Session;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v3, :cond_2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->d([B)V

    :cond_1
    move v0, v6

    :goto_1
    return v0

    :cond_2
    if-nez v2, :cond_16

    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->a:Lcom/jcraft/jsch/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_4

    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->d([B)V

    :cond_3
    move v0, v6

    goto :goto_1

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->a:Lcom/jcraft/jsch/UserInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Password for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/jcraft/jsch/UserInfo;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/jcraft/jsch/JSchAuthCancelException;

    const-string v1, "password"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->d([B)V

    :cond_5
    throw v0

    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->a:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v0}, Lcom/jcraft/jsch/UserInfo;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/jcraft/jsch/JSchAuthCancelException;

    const-string v1, "password"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v9

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x32

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v9}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    const-string v2, "ssh-connection"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    const-string v2, "password"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v8}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->n()B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0x34

    if-ne v0, v2, :cond_a

    if-eqz v8, :cond_9

    invoke-static {v8}, Lcom/jcraft/jsch/Util;->d([B)V

    :cond_9
    move v0, v7

    goto/16 :goto_1

    :cond_a
    const/16 v2, 0x35

    if-ne v0, v2, :cond_b

    :try_start_5
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->g()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->g()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v0

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->j()[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->a:Lcom/jcraft/jsch/UserInfo;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->a:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v2, v0}, Lcom/jcraft/jsch/UserInfo;->d(Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v8

    goto/16 :goto_2

    :cond_b
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->g()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->g()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v3

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()[B

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->a:Lcom/jcraft/jsch/UserInfo;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->a:Lcom/jcraft/jsch/UserInfo;

    instance-of v0, v0, Lcom/jcraft/jsch/UIKeyboardInteractive;

    if-nez v0, :cond_f

    :cond_c
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->a:Lcom/jcraft/jsch/UserInfo;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->a:Lcom/jcraft/jsch/UserInfo;

    const-string v1, "Password must be changed."

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/UserInfo;->d(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_d
    if-eqz v8, :cond_e

    invoke-static {v8}, Lcom/jcraft/jsch/Util;->d([B)V

    :cond_e
    move v0, v6

    goto/16 :goto_1

    :cond_f
    :try_start_6
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->a:Lcom/jcraft/jsch/UserInfo;

    check-cast v0, Lcom/jcraft/jsch/UIKeyboardInteractive;

    const-string v2, "Password Change Required"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "New Password: "

    aput-object v10, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Z

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/UIKeyboardInteractive;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Lcom/jcraft/jsch/JSchAuthCancelException;

    const-string v1, "password"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v9}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    const-string v3, "ssh-connection"

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    const-string v3, "password"

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v8}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->d([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    goto/16 :goto_4

    :cond_11
    const/16 v2, 0x33

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->g()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->g()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v0

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->g()I

    move-result v2

    if-eqz v2, :cond_12

    new-instance v1, Lcom/jcraft/jsch/JSchPartialAuthException;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    iget v0, p1, Lcom/jcraft/jsch/Session;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/jcraft/jsch/Session;->l:I

    if-eqz v8, :cond_15

    invoke-static {v8}, Lcom/jcraft/jsch/Util;->d([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_13
    if-eqz v8, :cond_14

    invoke-static {v8}, Lcom/jcraft/jsch/Util;->d([B)V

    :cond_14
    move v0, v6

    goto/16 :goto_1

    :cond_15
    move-object v2, v8

    goto/16 :goto_0

    :cond_16
    move-object v8, v2

    goto/16 :goto_3
.end method
