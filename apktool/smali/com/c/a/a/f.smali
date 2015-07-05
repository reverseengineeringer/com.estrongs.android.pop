.class Lcom/c/a/a/f;
.super Lcom/c/a/a/e;


# direct methods
.method constructor <init>(Lcom/c/a/a/h;Lcom/c/a/a/j;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2}, Lcom/c/a/a/e;-><init>(Lcom/c/a/a/h;CLcom/c/a/a/j;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 2

    invoke-virtual {p0}, Lcom/c/a/a/f;->g()V

    iget-boolean v0, p0, Lcom/c/a/a/f;->j:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "input stream already open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "openInputStream"

    invoke-static {v0}, Lcom/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/f;->j:Z

    invoke-virtual {p0}, Lcom/c/a/a/f;->f()V

    iget-object v0, p0, Lcom/c/a/a/f;->i:Lcom/c/a/a/m;

    return-object v0
.end method

.method public c()Ljava/io/OutputStream;
    .locals 2

    invoke-virtual {p0}, Lcom/c/a/a/f;->g()V

    iget-boolean v0, p0, Lcom/c/a/a/f;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "output already open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/c/a/a/f;->l:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "the request phase has already ended"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/f;->h:Z

    new-instance v0, Lcom/c/a/a/n;

    iget-object v1, p0, Lcom/c/a/a/f;->a:Lcom/c/a/a/h;

    iget v1, v1, Lcom/c/a/a/h;->d:I

    invoke-direct {v0, v1, p0}, Lcom/c/a/a/n;-><init>(ILcom/c/a/a/l;)V

    iput-object v0, p0, Lcom/c/a/a/f;->g:Lcom/c/a/a/n;

    iget-object v0, p0, Lcom/c/a/a/f;->g:Lcom/c/a/a/n;

    return-object v0
.end method
