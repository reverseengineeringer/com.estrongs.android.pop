.class public Lcom/estrongs/fs/util/g;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field public b:I

.field public c:I

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field p:Z

.field private q:Lcom/estrongs/fs/util/h;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->a:J

    iput v2, p0, Lcom/estrongs/fs/util/g;->b:I

    iput v2, p0, Lcom/estrongs/fs/util/g;->c:I

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->d:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->e:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->f:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->g:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->h:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->i:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->j:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->k:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->l:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->m:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->n:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->o:J

    iput-boolean v2, p0, Lcom/estrongs/fs/util/g;->p:Z

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/util/h;)V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->a:J

    iput v2, p0, Lcom/estrongs/fs/util/g;->b:I

    iput v2, p0, Lcom/estrongs/fs/util/g;->c:I

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->d:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->e:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->f:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->g:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->h:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->i:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->j:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->k:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->l:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->m:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->n:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->o:J

    iput-boolean v2, p0, Lcom/estrongs/fs/util/g;->p:Z

    iput-object p1, p0, Lcom/estrongs/fs/util/g;->q:Lcom/estrongs/fs/util/h;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->a:J

    iput v2, p0, Lcom/estrongs/fs/util/g;->b:I

    iput v2, p0, Lcom/estrongs/fs/util/g;->c:I

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->d:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->e:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->f:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->g:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->h:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->i:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->j:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->k:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->l:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->m:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->n:J

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->o:J

    iput-boolean v2, p0, Lcom/estrongs/fs/util/g;->p:Z

    invoke-virtual {p0, p1}, Lcom/estrongs/fs/util/g;->a(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/util/g;->p:Z

    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/estrongs/fs/util/g;->p:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/fs/util/g;->q:Lcom/estrongs/fs/util/h;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/fs/util/g;->q:Lcom/estrongs/fs/util/h;

    invoke-interface {v1, p1}, Lcom/estrongs/fs/util/h;->a(Ljava/io/File;)V

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->bl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/local/l;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "/"

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/estrongs/fs/i;->c:Lcom/estrongs/fs/i;

    sget-object v2, Lcom/estrongs/a/b/o;->a:Lcom/estrongs/a/b/o;

    invoke-static {v0, v1, v2}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    iget-boolean v2, p0, Lcom/estrongs/fs/util/g;->p:Z

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/estrongs/fs/util/g;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, p0, Lcom/estrongs/fs/util/g;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/fs/util/g;->c:I

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/estrongs/fs/i;->c:Lcom/estrongs/fs/i;

    sget-object v2, Lcom/estrongs/a/b/o;->a:Lcom/estrongs/a/b/o;

    invoke-static {v0, v1, v2}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    iget-boolean v2, p0, Lcom/estrongs/fs/util/g;->p:Z

    if-nez v2, :cond_0

    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/estrongs/fs/util/g;->a(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/estrongs/fs/util/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/fs/util/g;->b:I

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->e(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/estrongs/fs/util/g;->a(Ljava/lang/String;J)V

    iget-wide v2, p0, Lcom/estrongs/fs/util/g;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->a:J

    goto/16 :goto_0

    :cond_5
    const-string v1, "/"

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/estrongs/fs/util/g;->p:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_6

    array-length v3, v2

    move v1, v0

    :goto_3
    if-ge v1, v3, :cond_6

    aget-object v4, v2, v1

    iget-boolean v5, p0, Lcom/estrongs/fs/util/g;->p:Z

    if-nez v5, :cond_0

    :try_start_2
    invoke-virtual {p0, v4}, Lcom/estrongs/fs/util/g;->a(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    iget v1, p0, Lcom/estrongs/fs/util/g;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/estrongs/fs/util/g;->c:I

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    :goto_5
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-boolean v4, p0, Lcom/estrongs/fs/util/g;->p:Z

    if-nez v4, :cond_0

    :try_start_3
    invoke-virtual {p0, v3}, Lcom/estrongs/fs/util/g;->a(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/StackOverflowError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    iget v0, p0, Lcom/estrongs/fs/util/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/fs/util/g;->b:I

    invoke-virtual {p0, p1}, Lcom/estrongs/fs/util/g;->b(Ljava/io/File;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/estrongs/fs/util/g;->a(Ljava/lang/String;J)V

    iget-wide v2, p0, Lcom/estrongs/fs/util/g;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->a:J

    goto/16 :goto_0

    :catch_2
    move-exception v4

    goto :goto_4

    :catch_3
    move-exception v3

    goto :goto_6
.end method

.method public a(Ljava/lang/String;J)V
    .locals 4

    const-wide/16 v2, 0x1

    invoke-static {p1}, Lcom/estrongs/android/util/bc;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bc;->C(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v0, p0, Lcom/estrongs/fs/util/g;->j:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->j:J

    iget-wide v0, p0, Lcom/estrongs/fs/util/g;->k:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->k:J

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/estrongs/android/util/bc;->e(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v0, p0, Lcom/estrongs/fs/util/g;->f:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->f:J

    iget-wide v0, p0, Lcom/estrongs/fs/util/g;->g:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->g:J

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/estrongs/android/util/bc;->g(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v0, p0, Lcom/estrongs/fs/util/g;->h:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->h:J

    iget-wide v0, p0, Lcom/estrongs/fs/util/g;->i:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->i:J

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/estrongs/android/util/bc;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v0, p0, Lcom/estrongs/fs/util/g;->d:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->d:J

    iget-wide v0, p0, Lcom/estrongs/fs/util/g;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->e:J

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/estrongs/android/util/bc;->j(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/estrongs/android/util/bc;->u(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/estrongs/android/util/bc;->y(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/estrongs/android/util/bc;->v(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/estrongs/android/util/bc;->m(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-wide v0, p0, Lcom/estrongs/fs/util/g;->l:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->l:J

    iget-wide v0, p0, Lcom/estrongs/fs/util/g;->m:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->m:J

    goto :goto_0

    :cond_5
    iget-wide v0, p0, Lcom/estrongs/fs/util/g;->n:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->n:J

    iget-wide v0, p0, Lcom/estrongs/fs/util/g;->o:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/fs/util/g;->o:J

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/util/g;->a(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/fs/util/g;->a:J

    return-wide v0
.end method

.method protected b(Ljava/io/File;)J
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/util/g;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/util/g;->c:I

    return v0
.end method
