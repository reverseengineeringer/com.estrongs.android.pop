.class public Lcom/estrongs/fs/b/ar;
.super Lcom/estrongs/a/a;


# instance fields
.field private a:Lcom/estrongs/fs/h;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/app/Activity;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->f:Ljava/util/List;

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->g:Ljava/util/List;

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->h:Ljava/util/List;

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->j:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/fs/b/ar;->k:I

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ar;->l:Z

    iput-object p1, p0, Lcom/estrongs/fs/b/ar;->d:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    iput-object p4, p0, Lcom/estrongs/fs/b/ar;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/fs/b/ar;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->processData:Lcom/estrongs/a/a/m;

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/a/a/m;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v2, v0, Lcom/estrongs/a/a/m;->p:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v2, v0, Lcom/estrongs/a/a/m;->l:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v2, v0, Lcom/estrongs/a/a/m;->m:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v2, v0, Lcom/estrongs/a/a/m;->n:Z

    return-void
.end method

.method private a(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_1

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v1, v7, v6

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/b/ar;->a(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/estrongs/fs/b/ar;->k:I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/a/a;->g(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/estrongs/fs/b/ar;->k:I

    invoke-static {}, Lcom/estrongs/android/util/bd;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method protected a()V
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/fs/b/ar;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->b()Z

    move-result v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/estrongs/android/util/bd;->f()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/fs/b/ar;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/media/d;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/media/MediaStoreInsertException;->printStackTrace()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/cd;->b()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/d;->f(Ljava/lang/String;)I

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/d;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/d;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/media/d;->a(Ljava/util/List;Ljava/util/Set;)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/fs/b/ar;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/estrongs/fs/impl/k/b;->c()Lcom/estrongs/fs/impl/k/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/fs/b/ar;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/fs/impl/k/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/estrongs/fs/impl/i/b;->c()Lcom/estrongs/fs/impl/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/fs/b/ar;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/fs/impl/i/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/estrongs/fs/impl/q/b;->c()Lcom/estrongs/fs/impl/q/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/fs/b/ar;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/fs/impl/q/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    if-eqz v1, :cond_9

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/estrongs/fs/impl/k/b;->c()Lcom/estrongs/fs/impl/k/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/k/b;->b(Ljava/lang/String;)I

    invoke-static {}, Lcom/estrongs/fs/impl/i/b;->c()Lcom/estrongs/fs/impl/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/i/b;->b(Ljava/lang/String;)I

    invoke-static {}, Lcom/estrongs/fs/impl/q/b;->c()Lcom/estrongs/fs/impl/q/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/q/b;->b(Ljava/lang/String;)I

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    invoke-static {}, Lcom/estrongs/fs/impl/k/b;->c()Lcom/estrongs/fs/impl/k/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/k/b;->a(Ljava/util/List;)V

    :cond_a
    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    invoke-static {}, Lcom/estrongs/fs/impl/i/b;->c()Lcom/estrongs/fs/impl/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/i/b;->a(Ljava/util/List;)V

    :cond_b
    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/q/b;->c()Lcom/estrongs/fs/impl/q/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/q/b;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/estrongs/fs/impl/k/b;->c()Lcom/estrongs/fs/impl/k/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/k/b;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/fs/impl/i/b;->c()Lcom/estrongs/fs/impl/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/i/b;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/fs/impl/q/b;->c()Lcom/estrongs/fs/impl/q/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/q/b;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected postTask()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/a/a;->postTask()V

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ar;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/fs/b/ar;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/a/p;->a:I

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h(Z)V

    :cond_2
    return-void
.end method

.method public task()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    if-nez v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->processData:Lcom/estrongs/a/a/m;

    const-wide/16 v2, 0x1

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->c:J

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->processData:Lcom/estrongs/a/a/m;

    const-wide/16 v2, 0x1

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->e:J

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ar;->onProgress(Lcom/estrongs/a/a/m;)V

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ar;->taskStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->processData:Lcom/estrongs/a/a/m;

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ar;->onProgress(Lcom/estrongs/a/a/m;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->d:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    iget-object v2, p0, Lcom/estrongs/fs/b/ar;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/fs/b/ar;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/pop/utils/aj;->a(Landroid/app/Activity;Lcom/estrongs/fs/h;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_6

    if-eqz v6, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->h:Ljava/util/List;

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->j:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/fs/b/ar;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/estrongs/fs/b/ar;->f:Ljava/util/List;

    iget-object v4, p0, Lcom/estrongs/fs/b/ar;->g:Ljava/util/List;

    iget-object v5, p0, Lcom/estrongs/fs/b/ar;->h:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/b/ar;->a(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-boolean v8, p0, Lcom/estrongs/fs/b/ar;->l:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ar;->a()V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->N(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->P(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/fs/b/ar;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    move v0, v7

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    iget-object v2, p0, Lcom/estrongs/fs/b/ar;->j:Ljava/lang/String;

    iget v3, p0, Lcom/estrongs/fs/b/ar;->k:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/h;Ljava/lang/String;I)V

    goto :goto_1

    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->processData:Lcom/estrongs/a/a/m;

    const-wide/16 v2, 0x1

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->d:J

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->processData:Lcom/estrongs/a/a/m;

    const-wide/16 v2, 0x1

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->f:J

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ar;->onProgress(Lcom/estrongs/a/a/m;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ar;->setTaskResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->h:Ljava/util/List;

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->j:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/fs/b/ar;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/estrongs/fs/b/ar;->f:Ljava/util/List;

    iget-object v4, p0, Lcom/estrongs/fs/b/ar;->g:Ljava/util/List;

    iget-object v5, p0, Lcom/estrongs/fs/b/ar;->h:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/b/ar;->a(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-boolean v8, p0, Lcom/estrongs/fs/b/ar;->l:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ar;->a()V

    :cond_7
    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->N(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->P(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/fs/b/ar;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    iget-object v2, p0, Lcom/estrongs/fs/b/ar;->j:Ljava/lang/String;

    iget v3, p0, Lcom/estrongs/fs/b/ar;->k:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/h;Ljava/lang/String;I)V

    move v0, v6

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v6, v7

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, 0x2710

    new-instance v2, Lcom/estrongs/a/q;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/ar;->setTaskResult(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v6, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->h:Ljava/util/List;

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->j:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/fs/b/ar;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/estrongs/fs/b/ar;->f:Ljava/util/List;

    iget-object v4, p0, Lcom/estrongs/fs/b/ar;->g:Ljava/util/List;

    iget-object v5, p0, Lcom/estrongs/fs/b/ar;->h:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/b/ar;->a(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-boolean v8, p0, Lcom/estrongs/fs/b/ar;->l:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ar;->a()V

    :cond_a
    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->N(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->P(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/fs/b/ar;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    iget-object v2, p0, Lcom/estrongs/fs/b/ar;->j:Ljava/lang/String;

    iget v3, p0, Lcom/estrongs/fs/b/ar;->k:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/h;Ljava/lang/String;I)V

    move v0, v6

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v6, v0

    :goto_3
    if-eqz v7, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ar;->h:Ljava/util/List;

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->j:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/fs/b/ar;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/estrongs/fs/b/ar;->f:Ljava/util/List;

    iget-object v4, p0, Lcom/estrongs/fs/b/ar;->g:Ljava/util/List;

    iget-object v5, p0, Lcom/estrongs/fs/b/ar;->h:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/b/ar;->a(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-boolean v8, p0, Lcom/estrongs/fs/b/ar;->l:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ar;->a()V

    :cond_d
    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->N(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->P(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/fs/b/ar;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_4
    throw v6

    :cond_10
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ar;->a:Lcom/estrongs/fs/h;

    iget-object v2, p0, Lcom/estrongs/fs/b/ar;->j:Ljava/lang/String;

    iget v3, p0, Lcom/estrongs/fs/b/ar;->k:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/h;Ljava/lang/String;I)V

    goto :goto_4

    :catchall_1
    move-exception v0

    move v7, v6

    move-object v6, v0

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    move v7, v6

    move-object v6, v0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :cond_11
    move v0, v6

    goto/16 :goto_0

    :cond_12
    move v0, v6

    goto/16 :goto_0
.end method
