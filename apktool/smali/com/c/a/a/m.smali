.class Lcom/c/a/a/m;
.super Ljava/io/InputStream;


# instance fields
.field public a:Z

.field private final b:Lcom/c/a/a/k;

.field private c:[B

.field private d:I

.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Z


# direct methods
.method constructor <init>(Lcom/c/a/a/k;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x4000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/c/a/a/m;->c:[B

    iput v1, p0, Lcom/c/a/a/m;->d:I

    iput v1, p0, Lcom/c/a/a/m;->e:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/m;->f:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/c/a/a/m;->a:Z

    iput-boolean v1, p0, Lcom/c/a/a/m;->g:Z

    iput-object p1, p0, Lcom/c/a/a/m;->b:Lcom/c/a/a/k;

    return-void
.end method


# virtual methods
.method a([BZ)V
    .locals 7

    iget-boolean v0, p0, Lcom/c/a/a/m;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/c/a/a/m;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/c/a/a/m;->f:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/c/a/a/m;->g:Z

    :cond_2
    if-eqz p1, :cond_5

    array-length v0, p1

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/c/a/a/m;->e:I

    array-length v2, p1

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/c/a/a/m;->c:[B

    array-length v2, v2

    if-le v0, v2, :cond_4

    array-length v0, p1

    iget v2, p0, Lcom/c/a/a/m;->e:I

    iget v3, p0, Lcom/c/a/a/m;->d:I

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/c/a/a/m;->c:[B

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lcom/c/a/a/m;->c:[B

    array-length v0, v0

    :cond_3
    new-array v0, v0, [B

    iget-object v2, p0, Lcom/c/a/a/m;->c:[B

    iget v3, p0, Lcom/c/a/a/m;->d:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/c/a/a/m;->e:I

    iget v6, p0, Lcom/c/a/a/m;->d:I

    sub-int/2addr v5, v6

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/c/a/a/m;->c:[B

    iget v0, p0, Lcom/c/a/a/m;->e:I

    iget v2, p0, Lcom/c/a/a/m;->d:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/c/a/a/m;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/c/a/a/m;->d:I

    :cond_4
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/c/a/a/m;->c:[B

    iget v3, p0, Lcom/c/a/a/m;->e:I

    array-length v4, p1

    invoke-static {p1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/c/a/a/m;->e:I

    array-length v2, p1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/c/a/a/m;->e:I

    :cond_5
    iget-object v0, p0, Lcom/c/a/a/m;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public available()I
    .locals 3

    iget-object v1, p0, Lcom/c/a/a/m;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/c/a/a/m;->e:I

    iget v2, p0, Lcom/c/a/a/m;->d:I

    sub-int/2addr v0, v2

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/m;->a:Z

    iget-object v1, p0, Lcom/c/a/a/m;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/c/a/a/m;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public read()I
    .locals 4

    const/4 v1, -0x1

    iget-boolean v0, p0, Lcom/c/a/a/m;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/c/a/a/m;->b:Lcom/c/a/a/k;

    invoke-interface {v0}, Lcom/c/a/a/k;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/c/a/a/m;->e:I

    iget v2, p0, Lcom/c/a/a/m;->d:I

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/c/a/a/m;->f:Ljava/lang/Object;

    monitor-enter v2

    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lcom/c/a/a/m;->g:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/c/a/a/m;->b:Lcom/c/a/a/k;

    instance-of v0, v0, Lcom/c/a/a/o;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/c/a/a/m;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/c/a/a/m;->b:Lcom/c/a/a/k;

    invoke-interface {v0}, Lcom/c/a/a/k;->j()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/c/a/a/m;->e:I

    iget v3, p0, Lcom/c/a/a/m;->d:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/c/a/a/m;->b:Lcom/c/a/a/k;

    check-cast v0, Lcom/c/a/a/o;

    invoke-interface {v0, p0}, Lcom/c/a/a/o;->a(Lcom/c/a/a/m;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/c/a/a/m;->e:I

    iget v3, p0, Lcom/c/a/a/m;->d:I

    if-ne v0, v3, :cond_3

    monitor-exit v2

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/c/a/a/m;->c:[B

    iget v1, p0, Lcom/c/a/a/m;->d:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/c/a/a/m;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
