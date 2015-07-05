.class Lcom/estrongs/a/b/q;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/estrongs/a/b/r;

.field b:Lcom/estrongs/a/b/r;

.field private c:Lcom/estrongs/fs/d;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/h;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/a/b/q;->c:Lcom/estrongs/fs/d;

    iput-object v1, p0, Lcom/estrongs/a/b/q;->a:Lcom/estrongs/a/b/r;

    iput-object v1, p0, Lcom/estrongs/a/b/q;->b:Lcom/estrongs/a/b/r;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/estrongs/a/b/r;

    invoke-direct {v1, v0}, Lcom/estrongs/a/b/r;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/estrongs/a/b/q;->a:Lcom/estrongs/a/b/r;

    iget-object v0, p0, Lcom/estrongs/a/b/q;->a:Lcom/estrongs/a/b/r;

    iget-object v0, v0, Lcom/estrongs/a/b/r;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    sget-object v1, Lcom/estrongs/fs/m;->a:Lcom/estrongs/fs/m;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/a/b/q;->a:Lcom/estrongs/a/b/r;

    invoke-direct {p0, v0}, Lcom/estrongs/a/b/q;->a(Lcom/estrongs/a/b/r;)Lcom/estrongs/a/b/r;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/a/b/q;->b:Lcom/estrongs/a/b/r;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/a/b/q;->a:Lcom/estrongs/a/b/r;

    iput-object v0, p0, Lcom/estrongs/a/b/q;->b:Lcom/estrongs/a/b/r;

    goto :goto_0
.end method

.method private a(Lcom/estrongs/a/b/r;)Lcom/estrongs/a/b/r;
    .locals 3

    iget v0, p1, Lcom/estrongs/a/b/r;->c:I

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/a/b/q;->c:Lcom/estrongs/fs/d;

    iget-object v2, p1, Lcom/estrongs/a/b/r;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/estrongs/a/b/r;

    invoke-direct {v0, v1}, Lcom/estrongs/a/b/r;-><init>(Ljava/util/List;)V

    invoke-static {p1, v0}, Lcom/estrongs/a/b/r;->a(Lcom/estrongs/a/b/r;Lcom/estrongs/a/b/r;)Lcom/estrongs/a/b/r;

    invoke-static {v0, p1}, Lcom/estrongs/a/b/r;->b(Lcom/estrongs/a/b/r;Lcom/estrongs/a/b/r;)Lcom/estrongs/a/b/r;
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/estrongs/fs/h;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/a/b/q;->a:Lcom/estrongs/a/b/r;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/a/b/q;->a:Lcom/estrongs/a/b/r;

    iget-boolean v0, v0, Lcom/estrongs/a/b/r;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/a/b/q;->a:Lcom/estrongs/a/b/r;

    iput-boolean v6, v0, Lcom/estrongs/a/b/r;->b:Z

    iget-object v0, p0, Lcom/estrongs/a/b/q;->a:Lcom/estrongs/a/b/r;

    iget-object v0, v0, Lcom/estrongs/a/b/r;->a:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/estrongs/a/b/q;->b:Lcom/estrongs/a/b/r;

    invoke-static {v0}, Lcom/estrongs/a/b/r;->a(Lcom/estrongs/a/b/r;)Lcom/estrongs/a/b/r;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/a/b/q;->b:Lcom/estrongs/a/b/r;

    iget v2, v0, Lcom/estrongs/a/b/r;->c:I

    iget-object v0, p0, Lcom/estrongs/a/b/q;->b:Lcom/estrongs/a/b/r;

    iget-object v0, v0, Lcom/estrongs/a/b/r;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/a/b/q;->b:Lcom/estrongs/a/b/r;

    invoke-static {v0}, Lcom/estrongs/a/b/r;->a(Lcom/estrongs/a/b/r;)Lcom/estrongs/a/b/r;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/a/b/q;->b:Lcom/estrongs/a/b/r;

    iget-object v0, p0, Lcom/estrongs/a/b/q;->b:Lcom/estrongs/a/b/r;

    invoke-static {v0, v1}, Lcom/estrongs/a/b/r;->a(Lcom/estrongs/a/b/r;Lcom/estrongs/a/b/r;)Lcom/estrongs/a/b/r;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/a/b/q;->b:Lcom/estrongs/a/b/r;

    iget-boolean v0, v0, Lcom/estrongs/a/b/r;->b:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/a/b/q;->b:Lcom/estrongs/a/b/r;

    iget-object v0, v0, Lcom/estrongs/a/b/r;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    sget-object v3, Lcom/estrongs/fs/m;->a:Lcom/estrongs/fs/m;

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/estrongs/a/b/q;->b:Lcom/estrongs/a/b/r;

    iget-object v0, v0, Lcom/estrongs/a/b/r;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    iget-object v1, p0, Lcom/estrongs/a/b/q;->b:Lcom/estrongs/a/b/r;

    iput-boolean v6, v1, Lcom/estrongs/a/b/r;->b:Z

    iget-object v1, p0, Lcom/estrongs/a/b/q;->b:Lcom/estrongs/a/b/r;

    invoke-direct {p0, v1}, Lcom/estrongs/a/b/q;->a(Lcom/estrongs/a/b/r;)Lcom/estrongs/a/b/r;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/a/b/q;->b:Lcom/estrongs/a/b/r;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/a/b/q;->b:Lcom/estrongs/a/b/r;

    iget-boolean v3, v0, Lcom/estrongs/a/b/r;->b:Z

    iget-object v0, p0, Lcom/estrongs/a/b/q;->b:Lcom/estrongs/a/b/r;

    iget-object v0, v0, Lcom/estrongs/a/b/r;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    iget-object v2, p0, Lcom/estrongs/a/b/q;->b:Lcom/estrongs/a/b/r;

    iget v4, v2, Lcom/estrongs/a/b/r;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/estrongs/a/b/r;->c:I

    iget-object v2, p0, Lcom/estrongs/a/b/q;->b:Lcom/estrongs/a/b/r;

    iput-boolean v5, v2, Lcom/estrongs/a/b/r;->b:Z

    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_4
    iput-object v1, p0, Lcom/estrongs/a/b/q;->a:Lcom/estrongs/a/b/r;

    move-object v0, v1

    goto/16 :goto_0
.end method
