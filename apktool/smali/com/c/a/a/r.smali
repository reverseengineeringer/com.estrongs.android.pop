.class Lcom/c/a/a/r;
.super Lcom/c/a/a/p;

# interfaces
.implements Lcom/c/a/a/l;
.implements Lcom/c/a/a/o;


# direct methods
.method protected constructor <init>(Lcom/c/a/a/s;Lcom/c/a/a/j;Z)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/c/a/a/p;-><init>(Lcom/c/a/a/s;Lcom/c/a/a/j;)V

    new-instance v0, Lcom/c/a/a/m;

    invoke-direct {v0, p0}, Lcom/c/a/a/m;-><init>(Lcom/c/a/a/k;)V

    iput-object v0, p0, Lcom/c/a/a/r;->l:Lcom/c/a/a/m;

    invoke-virtual {p0, p2, p3}, Lcom/c/a/a/r;->a(Lb/b/c;Z)V

    return-void
.end method

.method private g()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/r;->e:Z

    iget-object v0, p0, Lcom/c/a/a/r;->a:Lcom/c/a/a/s;

    const/16 v1, 0xa0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/c/a/a/s;->a(ILcom/c/a/a/j;)V

    invoke-virtual {p0}, Lcom/c/a/a/r;->e()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation aborted by client"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 2

    iget-boolean v0, p0, Lcom/c/a/a/r;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "operation closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/c/a/a/r;->m:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "input stream already open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "openInputStream"

    invoke-static {v0}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/r;->m:Z

    iget-object v0, p0, Lcom/c/a/a/r;->l:Lcom/c/a/a/m;

    return-object v0
.end method

.method public a(Lcom/c/a/a/m;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/c/a/a/r;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/c/a/a/r;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v3, v0}, Lcom/c/a/a/m;->a([BZ)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "server operation reply continue"

    invoke-static {v0}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/c/a/a/r;->a:Lcom/c/a/a/s;

    const/16 v1, 0x90

    iget-object v2, p0, Lcom/c/a/a/r;->c:Lcom/c/a/a/j;

    invoke-virtual {v0, v1, v2}, Lcom/c/a/a/s;->a(ILcom/c/a/a/j;)V

    iput-object v3, p0, Lcom/c/a/a/r;->c:Lcom/c/a/a/j;

    invoke-virtual {p0}, Lcom/c/a/a/r;->f()Z

    goto :goto_0
.end method

.method public a(Z[B)V
    .locals 3

    iget-object v0, p0, Lcom/c/a/a/r;->a:Lcom/c/a/a/s;

    iget-boolean v0, v0, Lcom/c/a/a/s;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/c/a/a/r;->f()Z

    iget-object v0, p0, Lcom/c/a/a/r;->a:Lcom/c/a/a/s;

    iget-boolean v0, v0, Lcom/c/a/a/s;->i:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Client not requesting data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/c/a/a/t;->c()Lcom/c/a/a/j;

    move-result-object v1

    const/16 v2, 0x90

    const/16 v0, 0x48

    if-eqz p1, :cond_1

    const/16 v0, 0x49

    :cond_1
    invoke-virtual {v1, v0, p2}, Lcom/c/a/a/j;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/c/a/a/r;->c:Lcom/c/a/a/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/a/a/r;->c:Lcom/c/a/a/j;

    invoke-static {v1, v0}, Lcom/c/a/a/j;->a(Lb/b/c;Lb/b/c;)Lb/b/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/r;->c:Lcom/c/a/a/j;

    :cond_2
    iget-object v0, p0, Lcom/c/a/a/r;->a:Lcom/c/a/a/s;

    invoke-virtual {v0, v2, v1}, Lcom/c/a/a/s;->a(ILcom/c/a/a/j;)V

    invoke-virtual {p0}, Lcom/c/a/a/r;->f()Z

    return-void
.end method

.method public c()Ljava/io/OutputStream;
    .locals 2

    iget-boolean v0, p0, Lcom/c/a/a/r;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "operation closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/c/a/a/r;->j:Lcom/c/a/a/n;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "output stream already open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/c/a/a/n;

    iget-object v1, p0, Lcom/c/a/a/r;->a:Lcom/c/a/a/s;

    iget v1, v1, Lcom/c/a/a/s;->d:I

    invoke-direct {v0, v1, p0}, Lcom/c/a/a/n;-><init>(ILcom/c/a/a/l;)V

    iput-object v0, p0, Lcom/c/a/a/r;->j:Lcom/c/a/a/n;

    iget-object v0, p0, Lcom/c/a/a/r;->j:Lcom/c/a/a/n;

    return-object v0
.end method

.method public e()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "server close put operation"

    invoke-static {v0}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/c/a/a/r;->l:Lcom/c/a/a/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/r;->l:Lcom/c/a/a/m;

    invoke-virtual {v0}, Lcom/c/a/a/m;->close()V

    iput-object v1, p0, Lcom/c/a/a/r;->l:Lcom/c/a/a/m;

    :cond_0
    iget-object v0, p0, Lcom/c/a/a/r;->j:Lcom/c/a/a/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/c/a/a/r;->j:Lcom/c/a/a/n;

    invoke-virtual {v0}, Lcom/c/a/a/n;->close()V

    iput-object v1, p0, Lcom/c/a/a/r;->j:Lcom/c/a/a/n;

    :cond_1
    invoke-super {p0}, Lcom/c/a/a/p;->e()V

    return-void
.end method

.method protected f()Z
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/c/a/a/r;->a:Lcom/c/a/a/s;

    invoke-virtual {v0}, Lcom/c/a/a/s;->f()[B

    move-result-object v3

    aget-byte v0, v3, v2

    and-int/lit16 v4, v0, 0xff

    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    const-string v5, "server operation got final packet"

    invoke-static {v5}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/c/a/a/r;->f:Z

    :cond_0
    sparse-switch v4, :sswitch_data_0

    iput-boolean v1, p0, Lcom/c/a/a/r;->h:Z

    const-string v1, "server operation invalid request"

    invoke-static {v4}, Lcom/c/a/a/v;->c(I)Ljava/lang/String;

    move-result-object v2

    int-to-long v4, v4

    invoke-static {v1, v2, v4, v5}, Lcom/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/c/a/a/r;->a:Lcom/c/a/a/s;

    const/16 v2, 0xc0

    invoke-virtual {v1, v2, v6}, Lcom/c/a/a/s;->a(ILcom/c/a/a/j;)V

    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :sswitch_0
    aget-byte v2, v3, v2

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Lcom/c/a/a/j;->a(B[BI)Lcom/c/a/a/j;

    move-result-object v2

    iget-object v3, p0, Lcom/c/a/a/r;->a:Lcom/c/a/a/s;

    invoke-virtual {v3, v2}, Lcom/c/a/a/s;->a(Lcom/c/a/a/j;)Z

    move-result v3

    if-nez v3, :cond_2

    iput-boolean v1, p0, Lcom/c/a/a/r;->h:Z

    iget-object v1, p0, Lcom/c/a/a/r;->a:Lcom/c/a/a/s;

    const/16 v2, 0xc1

    invoke-virtual {v1, v2, v6}, Lcom/c/a/a/s;->a(ILcom/c/a/a/j;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/c/a/a/r;->b:Lb/b/c;

    invoke-static {v1, v2}, Lcom/c/a/a/j;->a(Lb/b/c;Lb/b/c;)Lb/b/c;

    invoke-virtual {p0, v2, v0}, Lcom/c/a/a/r;->a(Lb/b/c;Z)V

    goto :goto_1

    :sswitch_1
    invoke-direct {p0}, Lcom/c/a/a/r;->g()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x82 -> :sswitch_0
        0xff -> :sswitch_1
    .end sparse-switch
.end method
