.class abstract Lcom/c/a/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/d;
.implements Lcom/c/a/a/k;


# instance fields
.field protected a:Lcom/c/a/a/s;

.field protected b:Lb/b/c;

.field protected c:Lcom/c/a/a/j;

.field protected d:Z

.field protected e:Z

.field protected f:Z

.field protected g:Z

.field protected h:Z

.field protected i:Z

.field protected j:Lcom/c/a/a/n;

.field protected k:Z

.field protected l:Lcom/c/a/a/m;

.field protected m:Z


# direct methods
.method protected constructor <init>(Lcom/c/a/a/s;Lcom/c/a/a/j;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/c/a/a/p;->d:Z

    iput-boolean v0, p0, Lcom/c/a/a/p;->e:Z

    iput-boolean v0, p0, Lcom/c/a/a/p;->f:Z

    iput-boolean v0, p0, Lcom/c/a/a/p;->g:Z

    iput-boolean v0, p0, Lcom/c/a/a/p;->h:Z

    iput-boolean v0, p0, Lcom/c/a/a/p;->i:Z

    iput-boolean v0, p0, Lcom/c/a/a/p;->k:Z

    iput-boolean v0, p0, Lcom/c/a/a/p;->m:Z

    iput-object p1, p0, Lcom/c/a/a/p;->a:Lcom/c/a/a/s;

    iput-object p2, p0, Lcom/c/a/a/p;->b:Lb/b/c;

    invoke-virtual {p2}, Lcom/c/a/a/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/c/a/a/t;->c()Lcom/c/a/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/a/p;->c:Lcom/c/a/a/j;

    iget-object v0, p0, Lcom/c/a/a/p;->a:Lcom/c/a/a/s;

    iget-object v1, p0, Lcom/c/a/a/p;->c:Lcom/c/a/a/j;

    invoke-virtual {v0, p2, v1}, Lcom/c/a/a/s;->b(Lcom/c/a/a/j;Lcom/c/a/a/j;)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(I)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "server operation reply final"

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/c/a/a;->b(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/c/a/a/p;->a:Lcom/c/a/a/s;

    iget-object v1, p0, Lcom/c/a/a/p;->c:Lcom/c/a/a/j;

    invoke-virtual {v0, p1, v1}, Lcom/c/a/a/s;->a(ILcom/c/a/a/j;)V

    iput-object v4, p0, Lcom/c/a/a/p;->c:Lcom/c/a/a/j;

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/c/a/a/p;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/c/a/a/p;->a:Lcom/c/a/a/s;

    invoke-virtual {v0}, Lcom/c/a/a/s;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "server waits to receive final packet"

    invoke-static {v0}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/c/a/a/p;->f()Z

    iget-boolean v0, p0, Lcom/c/a/a/p;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/p;->a:Lcom/c/a/a/s;

    invoke-virtual {v0, p1, v4}, Lcom/c/a/a/s;->a(ILcom/c/a/a/j;)V

    goto :goto_0

    :cond_1
    const-string v0, "sent final reply"

    invoke-static {v0}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected a(Lb/b/c;Z)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/c/a/a/p;->l:Lcom/c/a/a/m;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x48

    invoke-interface {p1, v0}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    if-nez v0, :cond_2

    const/16 v0, 0x49

    invoke-interface {p1, v0}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    if-eqz v0, :cond_2

    move p2, v1

    :cond_2
    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/c/a/a/p;->i:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server received Data eof: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    array-length v2, v0

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/c/a/a;->a(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/c/a/a/p;->l:Lcom/c/a/a/m;

    invoke-virtual {v1, v0, p2}, Lcom/c/a/a/m;->a([BZ)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/c/a/a/p;->l:Lcom/c/a/a/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/c/a/a/m;->a([BZ)V

    goto :goto_0
.end method

.method public b()Ljava/io/DataInputStream;
    .locals 2

    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/c/a/a/p;->a()Ljava/io/InputStream;

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

    iget-boolean v0, p0, Lcom/c/a/a/p;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "operation closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/c/a/a/p;->c:Lcom/c/a/a/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/a/a/p;->c:Lcom/c/a/a/j;

    invoke-static {v0, p1}, Lcom/c/a/a/j;->a(Lb/b/c;Lb/b/c;)Lb/b/c;

    :goto_0
    return-void

    :cond_2
    check-cast p1, Lcom/c/a/a/j;

    iput-object p1, p0, Lcom/c/a/a/p;->c:Lcom/c/a/a/j;

    goto :goto_0
.end method

.method public d()Ljava/io/DataOutputStream;
    .locals 2

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Lcom/c/a/a/p;->c()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/p;->d:Z

    return-void
.end method

.method protected abstract f()Z
.end method

.method public h()Lb/b/c;
    .locals 1

    iget-object v0, p0, Lcom/c/a/a/p;->b:Lb/b/c;

    invoke-static {v0}, Lcom/c/a/a/j;->b(Lb/b/c;)Lcom/c/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation object was created by an OBEX server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/c/a/a/p;->d:Z

    return v0
.end method
