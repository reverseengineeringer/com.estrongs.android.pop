.class Lcom/jcraft/jsch/ChannelSession;
.super Lcom/jcraft/jsch/Channel;


# static fields
.field private static u:[B


# instance fields
.field protected A:I

.field protected B:I

.field protected C:I

.field protected D:I

.field protected E:[B

.field protected v:Z

.field protected w:Z

.field protected x:Ljava/util/Hashtable;

.field protected y:Z

.field protected z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "session"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/ChannelSession;->u:[B

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->v:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->w:Z

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSession;->x:Ljava/util/Hashtable;

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->y:Z

    const-string v0, "vt100"

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->z:Ljava/lang/String;

    const/16 v0, 0x50

    iput v0, p0, Lcom/jcraft/jsch/ChannelSession;->A:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/jcraft/jsch/ChannelSession;->B:I

    const/16 v0, 0x280

    iput v0, p0, Lcom/jcraft/jsch/ChannelSession;->C:I

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSession;->D:I

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSession;->E:[B

    sget-object v0, Lcom/jcraft/jsch/ChannelSession;->u:[B

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->d:[B

    new-instance v0, Lcom/jcraft/jsch/IO;

    invoke-direct {v0}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->j:Lcom/jcraft/jsch/IO;

    return-void
.end method

.method private a(Ljava/lang/Object;)[B
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object p1

    :goto_0
    return-object p1

    :cond_0
    check-cast p1, [B

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSession;->v:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSession;->y:Z

    return-void
.end method

.method protected n()V
    .locals 7

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSession;->j()Lcom/jcraft/jsch/Session;

    move-result-object v2

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->v:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/RequestAgentForwarding;

    invoke-direct {v0}, Lcom/jcraft/jsch/RequestAgentForwarding;-><init>()V

    invoke-virtual {v0, v2, p0}, Lcom/jcraft/jsch/Request;->a(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->w:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/jcraft/jsch/RequestX11;

    invoke-direct {v0}, Lcom/jcraft/jsch/RequestX11;-><init>()V

    invoke-virtual {v0, v2, p0}, Lcom/jcraft/jsch/Request;->a(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    :cond_1
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->y:Z

    if-eqz v0, :cond_3

    new-instance v1, Lcom/jcraft/jsch/RequestPtyReq;

    invoke-direct {v1}, Lcom/jcraft/jsch/RequestPtyReq;-><init>()V

    move-object v0, v1

    check-cast v0, Lcom/jcraft/jsch/RequestPtyReq;

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSession;->z:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/RequestPtyReq;->a(Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Lcom/jcraft/jsch/RequestPtyReq;

    iget v3, p0, Lcom/jcraft/jsch/ChannelSession;->A:I

    iget v4, p0, Lcom/jcraft/jsch/ChannelSession;->B:I

    iget v5, p0, Lcom/jcraft/jsch/ChannelSession;->C:I

    iget v6, p0, Lcom/jcraft/jsch/ChannelSession;->D:I

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/jcraft/jsch/RequestPtyReq;->a(IIII)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->E:[B

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/jcraft/jsch/RequestPtyReq;

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSession;->E:[B

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/RequestPtyReq;->a([B)V

    :cond_2
    invoke-virtual {v1, v2, p0}, Lcom/jcraft/jsch/Request;->a(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->x:Ljava/util/Hashtable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->x:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->x:Ljava/util/Hashtable;

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-instance v1, Lcom/jcraft/jsch/RequestEnv;

    invoke-direct {v1}, Lcom/jcraft/jsch/RequestEnv;-><init>()V

    move-object v0, v1

    check-cast v0, Lcom/jcraft/jsch/RequestEnv;

    invoke-direct {p0, v4}, Lcom/jcraft/jsch/ChannelSession;->a(Ljava/lang/Object;)[B

    move-result-object v4

    invoke-direct {p0, v5}, Lcom/jcraft/jsch/ChannelSession;->a(Ljava/lang/Object;)[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/jcraft/jsch/RequestEnv;->a([B[B)V

    invoke-virtual {v1, v2, p0}, Lcom/jcraft/jsch/Request;->a(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    goto :goto_0
.end method

.method public run()V
    .locals 6

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSession;->i:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSession;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSession;->k:Ljava/lang/Thread;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSession;->j:Lcom/jcraft/jsch/IO;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSession;->j:Lcom/jcraft/jsch/IO;

    iget-object v2, v2, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_3

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSession;->k:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    monitor-enter v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->k:Ljava/lang/Thread;

    return-void

    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSession;->j:Lcom/jcraft/jsch/IO;

    iget-object v2, v2, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    iget-object v3, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    const/16 v4, 0xe

    iget-object v5, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0xe

    add-int/lit8 v5, v5, -0x54

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSession;->f()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    iget-boolean v3, p0, Lcom/jcraft/jsch/ChannelSession;->n:Z

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v3, 0x5e

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget v3, p0, Lcom/jcraft/jsch/ChannelSession;->c:I

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->b(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSession;->j()Lcom/jcraft/jsch/Session;

    move-result-object v3

    invoke-virtual {v3, v1, p0, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
