.class public Lcom/c/a/a/s;
.super Lcom/c/a/a/t;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static a:I

.field private static p:I


# instance fields
.field private j:Lb/b/f;

.field private k:Lcom/c/a/a/p;

.field private l:Z

.field private volatile m:Z

.field private n:Ljava/lang/Object;

.field private o:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/c/a/a/s;->a:I

    return-void
.end method

.method constructor <init>(Lb/a/a/e;Lb/b/f;Lb/b/a;Lcom/c/a/a/i;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p4}, Lcom/c/a/a/t;-><init>(Lb/a/a/e;Lcom/c/a/a/i;)V

    iput-boolean v0, p0, Lcom/c/a/a/s;->l:Z

    iput-boolean v0, p0, Lcom/c/a/a/s;->m:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/s;->n:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/c/a/a/s;->i:Z

    iput-object p2, p0, Lcom/c/a/a/s;->j:Lb/b/f;

    iput-object p3, p0, Lcom/c/a/a/s;->e:Lb/b/a;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OBEXServerSessionThread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/c/a/a/s;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/c/a/a/s;->o:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/c/a/a/s;->o:Ljava/lang/Thread;

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method

.method private a([B)V
    .locals 9

    const/16 v8, 0x10

    const/4 v7, 0x7

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v0, "Connect operation"

    invoke-static {v0}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    aget-byte v0, p1, v5

    if-eq v0, v8, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported client OBEX version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    if-ge v0, v7, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupted OBEX data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x5

    aget-byte v0, p1, v0

    const/4 v1, 0x6

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Lcom/c/a/a/v;->a(BB)I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_2

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid MTU "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iput v0, p0, Lcom/c/a/a/s;->d:I

    const-string v0, "mtu selected"

    iget v1, p0, Lcom/c/a/a/s;->d:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/c/a/a;->a(Ljava/lang/String;J)V

    invoke-static {}, Lcom/c/a/a/s;->c()Lcom/c/a/a/j;

    move-result-object v2

    invoke-static {p1, v7}, Lcom/c/a/a/j;->b([BI)Lcom/c/a/a/j;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/c/a/a/s;->a(Lcom/c/a/a/j;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0xc1

    :goto_0
    const/4 v1, 0x4

    new-array v1, v1, [B

    aput-byte v8, v1, v4

    aput-byte v4, v1, v6

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/c/a/a/s;->f:Lcom/c/a/a/i;

    iget v4, v4, Lcom/c/a/a/i;->c:I

    invoke-static {v4}, Lcom/c/a/a/v;->a(I)B

    move-result v4

    aput-byte v4, v1, v3

    iget-object v3, p0, Lcom/c/a/a/s;->f:Lcom/c/a/a/i;

    iget v3, v3, Lcom/c/a/a/i;->c:I

    invoke-static {v3}, Lcom/c/a/a/v;->b(I)B

    move-result v3

    aput-byte v3, v1, v5

    invoke-virtual {p0, v0, v1, v2}, Lcom/c/a/a/s;->a(I[BLcom/c/a/a/j;)V

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_3

    iput-boolean v6, p0, Lcom/c/a/a/s;->b:Z

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0, v1, v2}, Lcom/c/a/a/s;->b(Lcom/c/a/a/j;Lcom/c/a/a/j;)V

    const/16 v0, 0xd0

    :try_start_0
    iget-object v3, p0, Lcom/c/a/a/s;->j:Lb/b/f;

    invoke-virtual {v3, v1, v2}, Lb/b/f;->a(Lb/b/c;Lb/b/c;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "onConnect"

    invoke-static {v3, v1}, Lcom/c/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a([BZ)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Put/Delete operation"

    invoke-static {v0}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/c/a/a/s;->i()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/c/a/a/j;->b([BI)Lcom/c/a/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/a/s;->j:Lb/b/f;

    invoke-virtual {p0, v0, v1}, Lcom/c/a/a/s;->a(Lcom/c/a/a/j;Lb/b/f;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0xc1

    invoke-virtual {p0, v0, v3}, Lcom/c/a/a/s;->a(ILcom/c/a/a/j;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/c/a/a/j;->c()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/c/a/a/s;->b(Lcom/c/a/a/j;)V

    goto :goto_0

    :cond_2
    const-string v1, "Put operation"

    invoke-static {v1}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/c/a/a/r;

    invoke-direct {v1, p0, v0, p2}, Lcom/c/a/a/r;-><init>(Lcom/c/a/a/s;Lcom/c/a/a/j;Z)V

    iput-object v1, p0, Lcom/c/a/a/s;->k:Lcom/c/a/a/p;

    :try_start_0
    iget-object v0, p0, Lcom/c/a/a/s;->j:Lb/b/f;

    iget-object v1, p0, Lcom/c/a/a/s;->k:Lcom/c/a/a/p;

    invoke-virtual {v0, v1}, Lb/b/f;->a(Lb/b/d;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/c/a/a/s;->k:Lcom/c/a/a/p;

    iget-boolean v1, v1, Lcom/c/a/a/p;->e:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/c/a/a/s;->k:Lcom/c/a/a/p;

    invoke-virtual {v1, v0}, Lcom/c/a/a/p;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    iget-object v0, p0, Lcom/c/a/a/s;->k:Lcom/c/a/a/p;

    invoke-virtual {v0}, Lcom/c/a/a/p;->e()V

    iput-object v3, p0, Lcom/c/a/a/s;->k:Lcom/c/a/a/p;

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0xd3

    :try_start_2
    const-string v2, "onPut"

    invoke-static {v2, v0}, Lcom/c/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/c/a/a/s;->k:Lcom/c/a/a/p;

    invoke-virtual {v1}, Lcom/c/a/a/p;->e()V

    iput-object v3, p0, Lcom/c/a/a/s;->k:Lcom/c/a/a/p;

    throw v0
.end method

.method private b(Lcom/c/a/a/j;)V
    .locals 4

    const-string v0, "Delete operation"

    invoke-static {v0}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/c/a/a/s;->c()Lcom/c/a/a/j;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/c/a/a/s;->b(Lcom/c/a/a/j;Lcom/c/a/a/j;)V

    :try_start_0
    iget-object v0, p0, Lcom/c/a/a/s;->j:Lb/b/f;

    invoke-virtual {v0, p1, v2}, Lb/b/f;->c(Lb/b/c;Lb/b/c;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/c/a/a/s;->a(ILcom/c/a/a/j;)V

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    const/16 v0, 0xd3

    const-string v3, "onDelete"

    invoke-static {v3, v1}, Lcom/c/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b([B)V
    .locals 4

    const-string v0, "Disconnect operation"

    invoke-static {v0}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/c/a/a/s;->i()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/c/a/a/j;->b([BI)Lcom/c/a/a/j;

    move-result-object v1

    invoke-static {}, Lcom/c/a/a/s;->c()Lcom/c/a/a/j;

    move-result-object v2

    const/16 v0, 0xa0

    :try_start_0
    iget-object v3, p0, Lcom/c/a/a/s;->j:Lb/b/f;

    invoke-virtual {v3, v1, v2}, Lb/b/f;->b(Lb/b/c;Lb/b/c;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/c/a/a/s;->b:Z

    invoke-virtual {p0, v0, v2}, Lcom/c/a/a/s;->a(ILcom/c/a/a/j;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const/16 v0, 0xd3

    const-string v3, "onDisconnect"

    invoke-static {v3, v1}, Lcom/c/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private b([BZ)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Get operation"

    invoke-static {v0}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/c/a/a/s;->i()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/c/a/a/j;->b([BI)Lcom/c/a/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/a/s;->j:Lb/b/f;

    invoke-virtual {p0, v0, v1}, Lcom/c/a/a/s;->a(Lcom/c/a/a/j;Lb/b/f;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0xc1

    invoke-virtual {p0, v0, v3}, Lcom/c/a/a/s;->a(ILcom/c/a/a/j;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/c/a/a/q;

    invoke-direct {v1, p0, v0, p2}, Lcom/c/a/a/q;-><init>(Lcom/c/a/a/s;Lcom/c/a/a/j;Z)V

    iput-object v1, p0, Lcom/c/a/a/s;->k:Lcom/c/a/a/p;

    :try_start_0
    iget-object v0, p0, Lcom/c/a/a/s;->j:Lb/b/f;

    iget-object v1, p0, Lcom/c/a/a/s;->k:Lcom/c/a/a/p;

    invoke-virtual {v0, v1}, Lb/b/f;->b(Lb/b/d;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/c/a/a/s;->k:Lcom/c/a/a/p;

    iget-boolean v1, v1, Lcom/c/a/a/p;->e:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/c/a/a/s;->k:Lcom/c/a/a/p;

    invoke-virtual {v1, v0}, Lcom/c/a/a/p;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    iget-object v0, p0, Lcom/c/a/a/s;->k:Lcom/c/a/a/p;

    invoke-virtual {v0}, Lcom/c/a/a/p;->e()V

    iput-object v3, p0, Lcom/c/a/a/s;->k:Lcom/c/a/a/p;

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0xd3

    :try_start_2
    const-string v2, "onGet"

    invoke-static {v2, v0}, Lcom/c/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/c/a/a/s;->k:Lcom/c/a/a/p;

    invoke-virtual {v1}, Lcom/c/a/a/p;->e()V

    iput-object v3, p0, Lcom/c/a/a/s;->k:Lcom/c/a/a/p;

    throw v0
.end method

.method private c([BZ)V
    .locals 5

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "SetPath operation"

    invoke-static {v0}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/c/a/a/s;->i()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    array-length v0, p1

    if-ge v0, v3, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupted OBEX data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1, v3}, Lcom/c/a/a/j;->b([BI)Lcom/c/a/a/j;

    move-result-object v3

    aget-byte v0, p1, v4

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_3

    :goto_2
    const-string v2, "setPath backup"

    invoke-static {v2, v0}, Lcom/c/a/a;->a(Ljava/lang/String;Z)V

    const-string v2, "setPath create"

    invoke-static {v2, v1}, Lcom/c/a/a;->a(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/c/a/a/s;->j:Lb/b/f;

    invoke-virtual {p0, v3, v2}, Lcom/c/a/a/s;->a(Lcom/c/a/a/j;Lb/b/f;)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v0, 0xc1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/c/a/a/s;->a(ILcom/c/a/a/j;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/c/a/a/s;->c()Lcom/c/a/a/j;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/c/a/a/s;->b(Lcom/c/a/a/j;Lcom/c/a/a/j;)V

    :try_start_0
    iget-object v4, p0, Lcom/c/a/a/s;->j:Lb/b/f;

    invoke-virtual {v4, v3, v2, v0, v1}, Lb/b/f;->a(Lb/b/c;Lb/b/c;ZZ)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_3
    invoke-virtual {p0, v0, v2}, Lcom/c/a/a/s;->a(ILcom/c/a/a/j;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const/16 v0, 0xd3

    const-string v3, "onSetPath"

    invoke-static {v3, v1}, Lcom/c/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static declared-synchronized g()I
    .locals 3

    const-class v1, Lcom/c/a/a/s;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/c/a/a/s;->p:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/c/a/a/s;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private h()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "OBEXServerSession handleRequest"

    invoke-static {v2}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/c/a/a/s;->m:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/c/a/a/s;->f()[B
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    iput-boolean v0, p0, Lcom/c/a/a/s;->m:Z

    const/4 v2, 0x0

    :try_start_1
    aget-byte v2, v3, v2

    and-int/lit16 v4, v2, 0xff

    and-int/lit16 v2, v4, 0x80

    if-eqz v2, :cond_2

    move v2, v0

    :goto_0
    if-eqz v2, :cond_0

    const-string v5, "OBEXServerSession got operation finalPacket"

    invoke-static {v5}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    :cond_0
    sparse-switch v4, :sswitch_data_0

    const/16 v2, 0xd1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/c/a/a/s;->a(ILcom/c/a/a/j;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iput-boolean v1, p0, Lcom/c/a/a/s;->m:Z

    iget-object v1, p0, Lcom/c/a/a/s;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/c/a/a/s;->n:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    return v0

    :catch_0
    move-exception v0

    iget-boolean v2, p0, Lcom/c/a/a/s;->b:Z

    if-eqz v2, :cond_1

    throw v0

    :cond_1
    const-string v0, "OBEXServerSession got EOF"

    invoke-static {v0}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/c/a/a/s;->e()V

    move v0, v1

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_0

    :sswitch_0
    :try_start_3
    invoke-direct {p0, v3}, Lcom/c/a/a/s;->a([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/c/a/a/s;->m:Z

    throw v0

    :sswitch_1
    :try_start_4
    invoke-direct {p0, v3}, Lcom/c/a/a/s;->b([B)V

    goto :goto_1

    :sswitch_2
    invoke-direct {p0, v3, v2}, Lcom/c/a/a/s;->a([BZ)V

    goto :goto_1

    :sswitch_3
    invoke-direct {p0, v3, v2}, Lcom/c/a/a/s;->c([BZ)V

    goto :goto_1

    :sswitch_4
    invoke-direct {p0}, Lcom/c/a/a/s;->j()V

    goto :goto_1

    :sswitch_5
    invoke-direct {p0, v3, v2}, Lcom/c/a/a/s;->b([BZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_5
        0x5 -> :sswitch_3
        0x80 -> :sswitch_0
        0x81 -> :sswitch_1
        0x82 -> :sswitch_2
        0x83 -> :sswitch_5
        0x85 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method

.method private i()Z
    .locals 2

    iget-boolean v0, p0, Lcom/c/a/a/s;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xc0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/c/a/a/s;->a(ILcom/c/a/a/j;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Abort operation"

    invoke-static {v0}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/c/a/a/s;->i()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/c/a/a/s;->k:Lcom/c/a/a/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/c/a/a/s;->k:Lcom/c/a/a/p;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/c/a/a/p;->e:Z

    iget-object v0, p0, Lcom/c/a/a/s;->k:Lcom/c/a/a/p;

    invoke-virtual {v0}, Lcom/c/a/a/p;->e()V

    iput-object v2, p0, Lcom/c/a/a/s;->k:Lcom/c/a/a/p;

    const/16 v0, 0xa0

    invoke-virtual {p0, v0, v2}, Lcom/c/a/a/s;->a(ILcom/c/a/a/j;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xc0

    invoke-virtual {p0, v0, v2}, Lcom/c/a/a/s;->a(ILcom/c/a/a/j;)V

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lcom/c/a/a/s;->o:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method a(Lcom/c/a/a/j;)Z
    .locals 1

    iget-object v0, p0, Lcom/c/a/a/s;->j:Lb/b/f;

    invoke-virtual {p0, p1, v0}, Lcom/c/a/a/s;->a(Lcom/c/a/a/j;Lb/b/f;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b()Z
    .locals 1

    invoke-super {p0}, Lcom/c/a/a/t;->b()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/s;->l:Z

    :goto_0
    iget-boolean v0, p0, Lcom/c/a/a/s;->m:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/c/a/a/s;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/c/a/a/s;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/s;->n:Ljava/lang/Object;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/c/a/a/s;->m:Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/c/a/a/s;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OBEXServerSession close"

    invoke-static {v0}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/c/a/a/s;->k:Lcom/c/a/a/p;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/a/a/s;->k:Lcom/c/a/a/p;

    invoke-virtual {v0}, Lcom/c/a/a/p;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/s;->k:Lcom/c/a/a/p;

    :cond_2
    invoke-super {p0}, Lcom/c/a/a/t;->e()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public run()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/c/a/a/s;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/c/a/a/s;->l:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/c/a/a/s;->h()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OBEXServerSession ends"

    invoke-static {v0}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    :try_start_1
    invoke-super {p0}, Lcom/c/a/a/t;->e()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "OBEXServerSession close error"

    invoke-static {v1, v0}, Lcom/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string v0, "OBEXServerSession ends"

    invoke-static {v0}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    :try_start_2
    invoke-super {p0}, Lcom/c/a/a/t;->e()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "OBEXServerSession close error"

    invoke-static {v1, v0}, Lcom/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    const-class v1, Lcom/c/a/a/s;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget v2, Lcom/c/a/a/s;->a:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/c/a/a/s;->a:I

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-boolean v1, p0, Lcom/c/a/a/s;->b:Z

    if-eqz v1, :cond_2

    const-string v1, "OBEXServerSession error"

    invoke-static {v1, v0}, Lcom/c/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    const-string v0, "OBEXServerSession ends"

    invoke-static {v0}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    :try_start_6
    invoke-super {p0}, Lcom/c/a/a/t;->e()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "OBEXServerSession close error"

    invoke-static {v1, v0}, Lcom/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    const-string v1, "OBEXServerSession ends"

    invoke-static {v1}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    :try_start_9
    invoke-super {p0}, Lcom/c/a/a/t;->e()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :goto_2
    throw v0

    :cond_2
    :try_start_a
    const-string v1, "OBEXServerSession error"

    invoke-static {v1, v0}, Lcom/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    :catch_4
    move-exception v1

    const-string v2, "OBEXServerSession close error"

    invoke-static {v2, v1}, Lcom/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
