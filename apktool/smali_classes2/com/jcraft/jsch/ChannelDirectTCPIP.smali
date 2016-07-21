.class public Lcom/jcraft/jsch/ChannelDirectTCPIP;
.super Lcom/jcraft/jsch/Channel;


# static fields
.field private static final y:[B


# instance fields
.field u:Ljava/lang/String;

.field v:I

.field w:Ljava/lang/String;

.field x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "direct-tcpip"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->y:[B

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/high16 v1, 0x20000

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->w:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->x:I

    sget-object v0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->y:[B

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->d:[B

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->c(I)V

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->d(I)V

    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->e(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/IO;->a(Ljava/io/InputStream;)V

    return-void
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/IO;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method b()V
    .locals 1

    new-instance v0, Lcom/jcraft/jsch/IO;

    invoke-direct {v0}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j:Lcom/jcraft/jsch/IO;

    return-void
.end method

.method public b(I)V
    .locals 4

    iput p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->s:I

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is down"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j:Lcom/jcraft/jsch/IO;

    invoke-virtual {v1}, Lcom/jcraft/jsch/IO;->c()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j:Lcom/jcraft/jsch/IO;

    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->a(Lcom/jcraft/jsch/Channel;)V

    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j:Lcom/jcraft/jsch/IO;

    iget-object v1, v1, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->k:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->k:Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DirectTCPIP thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/jcraft/jsch/Session;->j:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->k:Ljava/lang/Thread;

    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->j:Z

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->m()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->u:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->w:Ljava/lang/String;

    return-void
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->v:I

    return-void
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->x:I

    return-void
.end method

.method protected l()Lcom/jcraft/jsch/Packet;
    .locals 3

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->u:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->w:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x54

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v2, 0x5a

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->d:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->b:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->f:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->g:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->u:Ljava/lang/String;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->v:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->w:Ljava/lang/String;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->x:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    return-object v1
.end method

.method public run()V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->m()V

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->i:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j()Lcom/jcraft/jsch/Session;

    move-result-object v2

    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->k:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j:Lcom/jcraft/jsch/IO;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j:Lcom/jcraft/jsch/IO;

    iget-object v3, v3, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->f()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->h()V

    :goto_2
    return-void

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j:Lcom/jcraft/jsch/IO;

    iget-object v3, v3, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    iget-object v4, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    const/16 v5, 0xe

    iget-object v6, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v6, v6

    add-int/lit8 v6, v6, -0xe

    add-int/lit8 v6, v6, -0x54

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gtz v3, :cond_3

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->f()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->o:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->o:Z

    :cond_2
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->h()V

    goto :goto_2

    :cond_3
    :try_start_2
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v4, 0x5e

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget v4, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->c:I

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->b(I)V

    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-boolean v4, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->n:Z

    if-eqz v4, :cond_4

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    :try_start_5
    invoke-virtual {v2, v1, p0, v3}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method
