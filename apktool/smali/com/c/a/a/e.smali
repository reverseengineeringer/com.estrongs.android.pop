.class abstract Lcom/c/a/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/d;
.implements Lcom/c/a/a/k;
.implements Lcom/c/a/a/l;
.implements Lcom/c/a/a/o;


# instance fields
.field protected a:Lcom/c/a/a/h;

.field protected b:C

.field protected c:Lb/b/c;

.field protected d:Z

.field protected e:Z

.field protected f:Z

.field protected g:Lcom/c/a/a/n;

.field protected h:Z

.field protected i:Lcom/c/a/a/m;

.field protected j:Z

.field protected k:Z

.field protected l:Z

.field protected m:Z

.field protected n:Lcom/c/a/a/j;

.field protected o:Ljava/lang/Object;

.field private p:Z


# direct methods
.method constructor <init>(Lcom/c/a/a/h;CLcom/c/a/a/j;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/c/a/a/e;->h:Z

    iput-boolean v1, p0, Lcom/c/a/a/e;->j:Z

    iput-boolean v1, p0, Lcom/c/a/a/e;->k:Z

    iput-boolean v1, p0, Lcom/c/a/a/e;->l:Z

    iput-boolean v1, p0, Lcom/c/a/a/e;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/e;->n:Lcom/c/a/a/j;

    iput-boolean v1, p0, Lcom/c/a/a/e;->p:Z

    iput-object p1, p0, Lcom/c/a/a/e;->a:Lcom/c/a/a/h;

    iput-char p2, p0, Lcom/c/a/a/e;->b:C

    iput-boolean v1, p0, Lcom/c/a/a/e;->d:Z

    iput-boolean v1, p0, Lcom/c/a/a/e;->e:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/e;->o:Ljava/lang/Object;

    new-instance v0, Lcom/c/a/a/m;

    invoke-direct {v0, p0}, Lcom/c/a/a/m;-><init>(Lcom/c/a/a/k;)V

    iput-object v0, p0, Lcom/c/a/a/e;->i:Lcom/c/a/a/m;

    invoke-virtual {p0, p3}, Lcom/c/a/a/e;->a(Lcom/c/a/a/j;)V

    return-void
.end method

.method private b(Lcom/c/a/a/j;)V
    .locals 7

    const/4 v6, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/c/a/a/e;->a:Lcom/c/a/a/h;

    iget-char v1, p0, Lcom/c/a/a/e;->b:C

    invoke-virtual {v0, v1, p1}, Lcom/c/a/a/h;->a(ILcom/c/a/a/j;)V

    iget-object v0, p0, Lcom/c/a/a/e;->a:Lcom/c/a/a/h;

    invoke-virtual {v0}, Lcom/c/a/a/h;->f()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/c/a/a/j;->a(B[BI)Lcom/c/a/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/a/e;->a:Lcom/c/a/a/h;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/c/a/a/h;->a(Lcom/c/a/a/j;Lb/b/f;)Z

    invoke-virtual {v0}, Lcom/c/a/a/j;->b()I

    move-result v1

    const-string v2, "client operation got reply"

    invoke-static {v1}, Lcom/c/a/a/v;->c(I)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Lcom/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;J)V

    sparse-switch v1, :sswitch_data_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/c/a/a/e;->k:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/c/a/a/e;->f:Z

    invoke-virtual {p0, v0}, Lcom/c/a/a/e;->a(Lb/b/c;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/c/a/a/e;->a(Lb/b/c;Z)V

    :goto_0
    return-void

    :sswitch_0
    iget-boolean v1, p0, Lcom/c/a/a/e;->p:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/c/a/a/j;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "client resend request with auth response"

    invoke-static {v1}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/c/a/a/j;->b(Lb/b/c;)Lcom/c/a/a/j;

    move-result-object v1

    iget-object v2, p0, Lcom/c/a/a/e;->a:Lcom/c/a/a/h;

    invoke-virtual {v2, v0, v1}, Lcom/c/a/a/h;->b(Lcom/c/a/a/j;Lcom/c/a/a/j;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/e;->p:Z

    invoke-direct {p0, v1}, Lcom/c/a/a/e;->b(Lcom/c/a/a/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v6, p0, Lcom/c/a/a/e;->k:Z

    throw v0

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/c/a/a/e;->k:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/c/a/a/e;->f:Z

    invoke-virtual {p0, v0}, Lcom/c/a/a/e;->a(Lb/b/c;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Authentication Failure"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    invoke-virtual {p0, v0}, Lcom/c/a/a/e;->a(Lb/b/c;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/c/a/a/e;->a(Lb/b/c;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/a/e;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/a/e;->f:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v0}, Lcom/c/a/a/e;->a(Lb/b/c;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/c/a/a/e;->a(Lb/b/c;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/e;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x90 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xc1 -> :sswitch_0
    .end sparse-switch
.end method

.method private k()V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/c/a/a/e;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lcom/c/a/a/e;->e:Z

    iget-object v0, p0, Lcom/c/a/a/e;->i:Lcom/c/a/a/m;

    invoke-virtual {v0}, Lcom/c/a/a/m;->close()V

    invoke-direct {p0}, Lcom/c/a/a/e;->m()V

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/c/a/a/e;->e:Z

    iget-object v1, p0, Lcom/c/a/a/e;->i:Lcom/c/a/a/m;

    invoke-virtual {v1}, Lcom/c/a/a/m;->close()V

    invoke-direct {p0}, Lcom/c/a/a/e;->m()V

    throw v0
.end method

.method private l()V
    .locals 1

    :goto_0
    invoke-virtual {p0}, Lcom/c/a/a/e;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/c/a/a/e;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "operation expects operation end"

    invoke-static {v0}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/c/a/a/e;->i:Lcom/c/a/a/m;

    invoke-virtual {p0, v0}, Lcom/c/a/a/e;->a(Lcom/c/a/a/m;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/c/a/a/e;->g:Lcom/c/a/a/n;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/c/a/a/e;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/c/a/a/e;->g:Lcom/c/a/a/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/e;->g:Lcom/c/a/a/n;

    invoke-virtual {v0}, Lcom/c/a/a/n;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/e;->g:Lcom/c/a/a/n;

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


# virtual methods
.method protected a(Lb/b/c;)V
    .locals 1

    iget-object v0, p0, Lcom/c/a/a/e;->c:Lb/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/e;->c:Lb/b/c;

    invoke-static {p1, v0}, Lcom/c/a/a/j;->a(Lb/b/c;Lb/b/c;)Lb/b/c;

    :cond_0
    iput-object p1, p0, Lcom/c/a/a/e;->c:Lb/b/c;

    return-void
.end method

.method protected a(Lb/b/c;Z)V
    .locals 4

    const/4 v1, 0x1

    const/16 v0, 0x48

    invoke-interface {p1, v0}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    if-nez v0, :cond_0

    const/16 v0, 0x49

    invoke-interface {p1, v0}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/c/a/a/e;->m:Z

    move p2, v1

    :cond_0
    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client received Data eof: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    array-length v2, v0

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/c/a/a;->a(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/c/a/a/e;->i:Lcom/c/a/a/m;

    invoke-virtual {v1, v0, p2}, Lcom/c/a/a/m;->a([BZ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/c/a/a/e;->i:Lcom/c/a/a/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/c/a/a/m;->a([BZ)V

    goto :goto_0
.end method

.method protected a(Lcom/c/a/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/c/a/a/e;->n:Lcom/c/a/a/j;

    return-void
.end method

.method public a(Lcom/c/a/a/m;)V
    .locals 1

    iget-object v0, p0, Lcom/c/a/a/e;->n:Lcom/c/a/a/j;

    invoke-direct {p0, v0}, Lcom/c/a/a/e;->b(Lcom/c/a/a/j;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/e;->n:Lcom/c/a/a/j;

    return-void
.end method

.method public a(Z[B)V
    .locals 2

    iget-boolean v0, p0, Lcom/c/a/a/e;->l:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/c/a/a/e;->n:Lcom/c/a/a/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/c/a/a/e;->n:Lcom/c/a/a/j;

    invoke-direct {p0, v0}, Lcom/c/a/a/e;->b(Lcom/c/a/a/j;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/e;->n:Lcom/c/a/a/j;

    :cond_1
    const/16 v0, 0x48

    if-eqz p1, :cond_2

    iget-char v0, p0, Lcom/c/a/a/e;->b:C

    or-int/lit16 v0, v0, 0x80

    int-to-char v0, v0

    iput-char v0, p0, Lcom/c/a/a/e;->b:C

    const/16 v0, 0x49

    const-string v1, "client Request Phase ended"

    invoke-static {v1}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/c/a/a/e;->l:Z

    :cond_2
    invoke-static {}, Lcom/c/a/a/t;->c()Lcom/c/a/a/j;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/c/a/a/j;->a(ILjava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/c/a/a/e;->b(Lcom/c/a/a/j;)V

    goto :goto_0
.end method

.method public b()Ljava/io/DataInputStream;
    .locals 2

    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/c/a/a/e;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public b(Lb/b/c;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "headers are null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/c/a/a/j;->a(Lb/b/c;)V

    invoke-virtual {p0}, Lcom/c/a/a/e;->g()V

    iget-boolean v0, p0, Lcom/c/a/a/e;->l:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "the request phase has already ended"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/c/a/a/e;->n:Lcom/c/a/a/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/a/a/e;->n:Lcom/c/a/a/j;

    invoke-direct {p0, v0}, Lcom/c/a/a/e;->b(Lcom/c/a/a/j;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/e;->n:Lcom/c/a/a/j;

    :cond_2
    check-cast p1, Lcom/c/a/a/j;

    invoke-direct {p0, p1}, Lcom/c/a/a/e;->b(Lcom/c/a/a/j;)V

    return-void
.end method

.method public d()Ljava/io/DataOutputStream;
    .locals 2

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Lcom/c/a/a/e;->c()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public e()V
    .locals 3

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/c/a/a/e;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/c/a/a/e;->k()V

    iget-boolean v0, p0, Lcom/c/a/a/e;->d:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/c/a/a/e;->d:Z

    const-string v0, "client operation closed"

    invoke-static {v0}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/c/a/a/e;->k()V

    iget-boolean v1, p0, Lcom/c/a/a/e;->d:Z

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/c/a/a/e;->d:Z

    const-string v1, "client operation closed"

    invoke-static {v1}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    :cond_1
    throw v0
.end method

.method protected f()V
    .locals 1

    iget-boolean v0, p0, Lcom/c/a/a/e;->l:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "client ends Request Phase"

    invoke-static {v0}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/a/e;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/e;->l:Z

    iget-char v0, p0, Lcom/c/a/a/e;->b:C

    or-int/lit16 v0, v0, 0x80

    int-to-char v0, v0

    iput-char v0, p0, Lcom/c/a/a/e;->b:C

    iget-object v0, p0, Lcom/c/a/a/e;->n:Lcom/c/a/a/j;

    invoke-direct {p0, v0}, Lcom/c/a/a/e;->b(Lcom/c/a/a/j;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/e;->n:Lcom/c/a/a/j;

    goto :goto_0
.end method

.method protected g()V
    .locals 2

    iget-boolean v0, p0, Lcom/c/a/a/e;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "operation closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public h()Lb/b/c;
    .locals 1

    invoke-virtual {p0}, Lcom/c/a/a/e;->g()V

    invoke-virtual {p0}, Lcom/c/a/a/e;->f()V

    iget-object v0, p0, Lcom/c/a/a/e;->c:Lb/b/c;

    invoke-static {v0}, Lcom/c/a/a/j;->b(Lb/b/c;)Lcom/c/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    invoke-virtual {p0}, Lcom/c/a/a/e;->g()V

    invoke-virtual {p0}, Lcom/c/a/a/e;->f()V

    invoke-direct {p0}, Lcom/c/a/a/e;->m()V

    invoke-direct {p0}, Lcom/c/a/a/e;->l()V

    iget-object v0, p0, Lcom/c/a/a/e;->c:Lb/b/c;

    invoke-interface {v0}, Lb/b/c;->b()I

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/c/a/a/e;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/c/a/a/e;->k:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
