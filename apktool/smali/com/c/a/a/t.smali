.class abstract Lcom/c/a/a/t;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a;


# instance fields
.field private a:Lb/a/a/e;

.field protected b:Z

.field protected c:J

.field protected d:I

.field protected e:Lb/b/a;

.field protected f:Lcom/c/a/a/i;

.field protected g:I

.field protected h:I

.field protected i:Z

.field private j:Ljava/io/InputStream;

.field private k:Ljava/io/OutputStream;

.field private l:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lb/a/a/e;Lcom/c/a/a/i;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4000

    iput v0, p0, Lcom/c/a/a/t;->d:I

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "obexConnectionParams is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean v2, p0, Lcom/c/a/a/t;->b:Z

    iput-object p1, p0, Lcom/c/a/a/t;->a:Lb/a/a/e;

    iput-object p2, p0, Lcom/c/a/a/t;->f:Lcom/c/a/a/i;

    iget v0, p2, Lcom/c/a/a/i;->c:I

    iput v0, p0, Lcom/c/a/a/t;->d:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/c/a/a/t;->c:J

    iput v2, p0, Lcom/c/a/a/t;->g:I

    iput v2, p0, Lcom/c/a/a/t;->h:I

    :try_start_0
    invoke-interface {p1}, Lb/a/a/e;->c()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/a/t;->k:Ljava/io/OutputStream;

    invoke-interface {p1}, Lb/a/a/e;->a()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/a/t;->j:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0}, Lcom/c/a/a/t;->e()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "close error"

    invoke-static {v1, v0}, Lcom/c/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {p0}, Lcom/c/a/a/t;->e()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    throw v0

    :catch_2
    move-exception v1

    const-string v2, "close error"

    invoke-static {v2, v1}, Lcom/c/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static c()Lcom/c/a/a/j;
    .locals 1

    new-instance v0, Lcom/c/a/a/j;

    invoke-direct {v0}, Lcom/c/a/a/j;-><init>()V

    return-object v0
.end method

.method public static d()Lb/b/c;
    .locals 1

    invoke-static {}, Lcom/c/a/a/t;->c()Lcom/c/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method static f(Lb/b/c;)V
    .locals 0

    invoke-static {p0}, Lcom/c/a/a/j;->a(Lb/b/c;)V

    return-void
.end method


# virtual methods
.method protected a(ILcom/c/a/a/j;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/c/a/a/t;->a(I[BLcom/c/a/a/j;)V

    return-void
.end method

.method protected declared-synchronized a(I[BLcom/c/a/a/j;)V
    .locals 8

    const-wide/16 v6, -0x1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/c/a/a/t;->i:Z

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/c/a/a/t;->c:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    add-int/2addr v1, v0

    :cond_1
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    invoke-static {p3}, Lcom/c/a/a/j;->c(Lb/b/c;)[B

    move-result-object v0

    array-length v2, v0

    add-int/2addr v1, v2

    :cond_2
    iget v2, p0, Lcom/c/a/a/t;->d:I

    if-le v1, v2, :cond_3

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t sent more data than in MTU, len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mtu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/c/a/a/t;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_1
    iget v2, p0, Lcom/c/a/a/t;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/c/a/a/t;->g:I

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v2, p1, v1}, Lcom/c/a/a/j;->a(Ljava/io/OutputStream;II)V

    if-eqz p2, :cond_4

    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_4
    iget-wide v4, p0, Lcom/c/a/a/t;->c:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    const/16 v3, 0xcb

    iget-wide v4, p0, Lcom/c/a/a/t;->c:J

    invoke-static {v2, v3, v4, v5}, Lcom/c/a/a/j;->a(Ljava/io/OutputStream;IJ)V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "obex send ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/c/a/a/t;->g:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/c/a/a/v;->c(I)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, p1

    invoke-static {v0, v3, v4, v5}, Lcom/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/c/a/a/t;->k:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/c/a/a/t;->k:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obex sent ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/c/a/a/t;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") len"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/c/a/a;->a(Ljava/lang/String;J)V

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lcom/c/a/a/j;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/c/a/a/t;->l:Ljava/util/Vector;

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/t;->l:Ljava/util/Vector;

    :cond_7
    invoke-virtual {p3}, Lcom/c/a/a/j;->e()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    new-instance v2, Lcom/c/a/a/c;

    invoke-direct {v2, v0}, Lcom/c/a/a/c;-><init>([B)V

    iget-object v0, p0, Lcom/c/a/a/t;->l:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_8
    monitor-exit p0

    return-void
.end method

.method a(Lcom/c/a/a/j;Lcom/c/a/a/j;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/c/a/a/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/c/a/a/j;->f()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Authentication response is missing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/c/a/a/t;->a(Lcom/c/a/a/j;Lb/b/f;)Z

    return-void
.end method

.method a(Lcom/c/a/a/j;Lb/b/f;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/c/a/a/j;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/c/a/a/t;->e:Lb/b/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Authenticator required for authentication"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/c/a/a/t;->l:Ljava/util/Vector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/c/a/a/t;->l:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Authentication challenges had not been sent"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/c/a/a/t;->e:Lb/b/a;

    iget-object v1, p0, Lcom/c/a/a/t;->l:Ljava/util/Vector;

    invoke-static {p1, v0, p2, v1}, Lcom/c/a/a/b;->a(Lcom/c/a/a/j;Lb/b/a;Lb/b/f;Ljava/util/Vector;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/c/a/a/t;->l:Ljava/util/Vector;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/c/a/a/t;->l:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    :cond_3
    :goto_0
    return v0

    :catchall_0
    move-exception v0

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/c/a/a/t;->l:Ljava/util/Vector;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/c/a/a/t;->l:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Authentication response is missing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b(Lcom/c/a/a/j;Lcom/c/a/a/j;)V
    .locals 2

    invoke-virtual {p1}, Lcom/c/a/a/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/c/a/a/t;->e:Lb/b/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Authenticator required for authentication"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/c/a/a/t;->e:Lb/b/a;

    invoke-static {p1, p2, v0}, Lcom/c/a/a/b;->a(Lcom/c/a/a/j;Lcom/c/a/a/j;Lb/b/a;)V

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/c/a/a/t;->a:Lb/a/a/e;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/c/a/a/t;->a:Lb/a/a/e;

    iput-object v0, p0, Lcom/c/a/a/t;->a:Lb/a/a/e;

    :try_start_0
    iget-object v0, p0, Lcom/c/a/a/t;->j:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/t;->j:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/t;->j:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lcom/c/a/a/t;->k:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/c/a/a/t;->k:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/t;->k:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lb/a/a/e;->e()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lb/a/a/e;->e()V

    :cond_3
    throw v0
.end method

.method protected declared-synchronized f()[B
    .locals 7

    const/4 v6, 0x3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/c/a/a/t;->i:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Read packet out of order"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/c/a/a/t;->i:Z

    const/4 v0, 0x3

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/c/a/a/t;->j:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/c/a/a/t;->f:Lcom/c/a/a/i;

    invoke-static {v1, v2, v0}, Lcom/c/a/a/v;->a(Ljava/io/InputStream;Lcom/c/a/a/i;[B)V

    iget v1, p0, Lcom/c/a/a/t;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/c/a/a/t;->h:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obex received ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/c/a/a/t;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    invoke-static {v2}, Lcom/c/a/a/v;->a(B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v4, v3

    invoke-static {v1, v2, v4, v5}, Lcom/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v1, 0x1

    aget-byte v1, v0, v1

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Lcom/c/a/a/v;->a(BB)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-ne v2, v6, :cond_1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    if-lt v2, v6, :cond_2

    const v1, 0xffff

    if-le v2, v1, :cond_3

    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid packet length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-array v1, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/c/a/a/t;->j:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/c/a/a/t;->f:Lcom/c/a/a/i;

    array-length v5, v0

    array-length v0, v0

    sub-int v0, v2, v0

    invoke-static {v3, v4, v1, v5, v0}, Lcom/c/a/a/v;->a(Ljava/io/InputStream;Lcom/c/a/a/i;[BII)V

    iget-object v0, p0, Lcom/c/a/a/t;->j:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "has more data after read"

    iget-object v2, p0, Lcom/c/a/a/t;->j:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/c/a/a;->a(Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method
