.class Lcom/c/a/a/n;
.super Ljava/io/OutputStream;


# instance fields
.field private final a:Lcom/c/a/a/l;

.field private b:[B

.field private c:I

.field private d:Ljava/lang/Object;

.field private e:Z


# direct methods
.method constructor <init>(ILcom/c/a/a/l;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/n;->d:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/c/a/a/n;->e:Z

    iput-object p2, p0, Lcom/c/a/a/n;->a:Lcom/c/a/a/l;

    add-int/lit8 v0, p1, -0xb

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/c/a/a/n;->b:[B

    iput v1, p0, Lcom/c/a/a/n;->c:I

    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 6

    iget-object v1, p0, Lcom/c/a/a/n;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/c/a/a/n;->c:I

    new-array v0, v0, [B

    iget-object v2, p0, Lcom/c/a/a/n;->b:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/c/a/a/n;->c:I

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/c/a/a/n;->a:Lcom/c/a/a/l;

    invoke-interface {v2, p1, v0}, Lcom/c/a/a/l;->a(Z[B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/c/a/a/n;->c:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2

    iget-boolean v0, p0, Lcom/c/a/a/n;->e:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/c/a/a/n;->d:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/c/a/a/n;->e:Z

    iget-object v0, p0, Lcom/c/a/a/n;->a:Lcom/c/a/a/l;

    invoke-interface {v0}, Lcom/c/a/a/l;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/c/a/a/n;->a(Z)V

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public flush()V
    .locals 1

    iget v0, p0, Lcom/c/a/a/n;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/c/a/a/n;->a(Z)V

    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/c/a/a/n;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/c/a/a/n;->a:Lcom/c/a/a/l;

    invoke-interface {v1}, Lcom/c/a/a/l;->j()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/c/a/a/n;->e:Z

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_4
    if-nez p3, :cond_5

    :goto_0
    return-void

    :cond_5
    iget-object v2, p0, Lcom/c/a/a/n;->d:Ljava/lang/Object;

    monitor-enter v2

    move v1, v0

    :goto_1
    if-ge v1, p3, :cond_8

    :try_start_0
    iget-object v0, p0, Lcom/c/a/a/n;->b:[B

    array-length v0, v0

    iget v3, p0, Lcom/c/a/a/n;->c:I

    sub-int/2addr v0, v3

    sub-int v3, p3, v1

    if-ge v3, v0, :cond_6

    sub-int v0, p3, v1

    :cond_6
    add-int v3, p2, v1

    iget-object v4, p0, Lcom/c/a/a/n;->b:[B

    iget v5, p0, Lcom/c/a/a/n;->c:I

    invoke-static {p1, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/c/a/a/n;->c:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/c/a/a/n;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/c/a/a/n;->c:I

    iget-object v3, p0, Lcom/c/a/a/n;->b:[B

    array-length v3, v3

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lcom/c/a/a/n;->a:Lcom/c/a/a/l;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/c/a/a/n;->b:[B

    invoke-interface {v1, v3, v4}, Lcom/c/a/a/l;->a(Z[B)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/c/a/a/n;->c:I

    :cond_7
    move v1, v0

    goto :goto_1

    :cond_8
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
