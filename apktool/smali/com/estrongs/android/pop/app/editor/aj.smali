.class public Lcom/estrongs/android/pop/app/editor/aj;
.super Lcom/estrongs/android/pop/app/editor/a;


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/a;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->a:Ljava/io/File;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/aj;->a:Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/m;->i(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->c:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "fail to open file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->c:Ljava/lang/Object;

    invoke-static {v0, p1, p2, p3}, Lcom/estrongs/fs/impl/local/m;->a(Ljava/lang/Object;[BII)I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, -0x1

    :cond_1
    return v0
.end method

.method public a()J
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/m;->i(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->c:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "fail to open file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->c:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/estrongs/fs/impl/local/m;->a(Ljava/lang/Object;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/m;->i(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->c:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "fail to open file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/estrongs/fs/impl/local/m;->a(Ljava/lang/Object;JI)J

    return-void
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/m;->d(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/estrongs/fs/c;->e:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->c:Ljava/lang/Object;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/m;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->c:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public d()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/m;->j(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/m;->e(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/m;->d(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/estrongs/fs/c;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/aj;->b:Ljava/lang/String;

    return-object v0
.end method
