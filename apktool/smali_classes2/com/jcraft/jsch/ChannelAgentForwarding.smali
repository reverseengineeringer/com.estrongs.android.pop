.class Lcom/jcraft/jsch/ChannelAgentForwarding;
.super Lcom/jcraft/jsch/Channel;


# instance fields
.field private final A:B

.field private final B:B

.field private final C:B

.field private final D:B

.field private final E:B

.field private final F:B

.field private final G:B

.field private final H:B

.field private final I:B

.field private final J:B

.field private final K:B

.field private final L:B

.field private M:Lcom/jcraft/jsch/Buffer;

.field private N:Lcom/jcraft/jsch/Buffer;

.field private O:Lcom/jcraft/jsch/Packet;

.field private P:Lcom/jcraft/jsch/Buffer;

.field u:Z

.field private final v:B

.field private final w:B

.field private final x:B

.field private final y:B

.field private final z:B


# direct methods
.method constructor <init>()V
    .locals 4

    const/high16 v3, 0x20000

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    iput-byte v2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->v:B

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->w:B

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->x:B

    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:B

    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->z:B

    const/4 v0, 0x6

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->A:B

    const/4 v0, 0x7

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->B:B

    const/16 v0, 0x8

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:B

    const/16 v0, 0x9

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->D:B

    const/16 v0, 0xb

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->E:B

    const/16 v0, 0xc

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:B

    const/16 v0, 0xd

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->G:B

    const/16 v0, 0xe

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->H:B

    const/16 v0, 0x11

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->I:B

    const/16 v0, 0x12

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->J:B

    const/16 v0, 0x13

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->K:B

    const/16 v0, 0x1e

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->L:B

    iput-boolean v2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->u:Z

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->M:Lcom/jcraft/jsch/Buffer;

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->N:Lcom/jcraft/jsch/Buffer;

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->O:Lcom/jcraft/jsch/Packet;

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->P:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/ChannelAgentForwarding;->c(I)V

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/ChannelAgentForwarding;->d(I)V

    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->e(I)V

    const-string v0, "auth-agent@openssh.com"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->d:[B

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->M:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->M:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->k()V

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->P:Lcom/jcraft/jsch/Buffer;

    iput-boolean v2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->o:Z

    return-void
.end method

.method private a([B)V
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->O:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->N:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->N:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->c:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->N:Lcom/jcraft/jsch/Buffer;

    array-length v1, p1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->N:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->j()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->O:Lcom/jcraft/jsch/Packet;

    array-length v2, p1

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method a([BII)V
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/4 v0, 0x6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->O:Lcom/jcraft/jsch/Packet;

    if-nez v4, :cond_0

    new-instance v4, Lcom/jcraft/jsch/Buffer;

    iget v5, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->i:I

    invoke-direct {v4, v5}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->N:Lcom/jcraft/jsch/Buffer;

    new-instance v4, Lcom/jcraft/jsch/Packet;

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->N:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v4, v5}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->O:Lcom/jcraft/jsch/Packet;

    :cond_0
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->M:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->l()V

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->M:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v4, v4

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->M:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/2addr v5, p3

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->M:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->d:I

    add-int/2addr v4, p3

    new-array v4, v4, [B

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->M:Lcom/jcraft/jsch/Buffer;

    iget-object v5, v5, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->M:Lcom/jcraft/jsch/Buffer;

    iget-object v6, v6, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v6, v6

    invoke-static {v5, v3, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->M:Lcom/jcraft/jsch/Buffer;

    iput-object v4, v5, Lcom/jcraft/jsch/Buffer;->b:[B

    :cond_1
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->M:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4, p1, p2, p3}, Lcom/jcraft/jsch/Buffer;->a([BII)V

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->M:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->d()I

    move-result v4

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->M:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->a()I

    move-result v5

    if-le v4, v5, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->M:Lcom/jcraft/jsch/Buffer;

    iget v1, v0, Lcom/jcraft/jsch/Buffer;->d:I

    add-int/lit8 v1, v1, -0x4

    iput v1, v0, Lcom/jcraft/jsch/Buffer;->d:I

    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->M:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->g()I

    move-result v4

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->j()Lcom/jcraft/jsch/Session;
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    invoke-virtual {v5}, Lcom/jcraft/jsch/Session;->i()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v6

    invoke-virtual {v5}, Lcom/jcraft/jsch/Session;->c()Lcom/jcraft/jsch/UserInfo;

    move-result-object v5

    iget-object v7, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->P:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->k()V

    const/16 v7, 0xb

    if-ne v4, v7, :cond_6

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->P:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-interface {v6}, Lcom/jcraft/jsch/IdentityRepository;->a()Ljava/util/Vector;

    move-result-object v4

    monitor-enter v4

    move v2, v3

    move v1, v3

    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->P:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    :goto_2
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v3, v0, :cond_4

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->P:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->a()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->P:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->d([B)V

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->a([B)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSchException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :try_start_2
    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Identity;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->a()[B

    move-result-object v0

    if-eqz v0, :cond_16

    add-int/lit8 v0, v1, 0x1

    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Identity;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->a()[B

    move-result-object v0

    if-nez v0, :cond_5

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->P:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->P:Lcom/jcraft/jsch/Buffer;

    sget-object v1, Lcom/jcraft/jsch/Util;->a:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    const/4 v7, 0x1

    if-ne v4, v7, :cond_7

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->P:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->P:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->a(I)V

    goto :goto_3

    :cond_7
    const/16 v7, 0xd

    if-ne v4, v7, :cond_f

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->M:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->M:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v7

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->M:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->d()I

    invoke-interface {v6}, Lcom/jcraft/jsch/IdentityRepository;->a()Ljava/util/Vector;

    move-result-object v6

    monitor-enter v6

    move v1, v3

    :goto_6
    :try_start_3
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_8

    move-object v0, v2

    :goto_7
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_15

    invoke-interface {v0, v7}, Lcom/jcraft/jsch/Identity;->b([B)[B

    move-result-object v0

    :goto_8
    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->P:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(B)V

    goto/16 :goto_3

    :cond_8
    :try_start_4
    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Identity;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->a()[B

    move-result-object v3

    if-nez v3, :cond_a

    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_a
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->a()[B

    move-result-object v3

    invoke-static {v4, v3}, Lcom/jcraft/jsch/Util;->b([B[B)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->d()Z

    move-result v3

    if-eqz v3, :cond_c

    if-eqz v5, :cond_9

    :cond_b
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->d()Z

    move-result v3

    if-nez v3, :cond_d

    :cond_c
    :goto_9
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->d()Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_7

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "Passphrase for "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lcom/jcraft/jsch/UserInfo;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v5}, Lcom/jcraft/jsch/UserInfo;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    :try_start_5
    invoke-interface {v0, v3}, Lcom/jcraft/jsch/Identity;->a([B)Z
    :try_end_5
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_9

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_e
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->P:Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->P:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    goto/16 :goto_3

    :cond_f
    const/16 v2, 0x12

    if-ne v4, v2, :cond_10

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->M:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->j()[B

    move-result-object v1

    invoke-interface {v6, v1}, Lcom/jcraft/jsch/IdentityRepository;->b([B)Z

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->P:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->a(B)V

    goto/16 :goto_3

    :cond_10
    const/16 v2, 0x9

    if-ne v4, v2, :cond_11

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->P:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->a(B)V

    goto/16 :goto_3

    :cond_11
    const/16 v2, 0x13

    if-ne v4, v2, :cond_12

    invoke-interface {v6}, Lcom/jcraft/jsch/IdentityRepository;->b()V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->P:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->a(B)V

    goto/16 :goto_3

    :cond_12
    const/16 v2, 0x11

    if-ne v4, v2, :cond_14

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->M:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->a()I

    move-result v2

    new-array v2, v2, [B

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->M:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/Buffer;->d([B)V

    invoke-interface {v6, v2}, Lcom/jcraft/jsch/IdentityRepository;->a([B)Z

    move-result v2

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->P:Lcom/jcraft/jsch/Buffer;

    if-eqz v2, :cond_13

    :goto_a
    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->a(B)V

    goto/16 :goto_3

    :cond_13
    move v0, v1

    goto :goto_a

    :cond_14
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->M:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->M:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->b(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->P:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(B)V

    goto/16 :goto_3

    :catch_1
    move-exception v3

    goto/16 :goto_9

    :cond_15
    move-object v0, v2

    goto/16 :goto_8

    :cond_16
    move v0, v1

    goto/16 :goto_4
.end method

.method e()V
    .locals 0

    invoke-super {p0}, Lcom/jcraft/jsch/Channel;->e()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->f()V

    return-void
.end method

.method public run()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->n:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->h()V

    goto :goto_0
.end method
