.class public Lcom/estrongs/fs/b/ao;
.super Lcom/estrongs/fs/b/r;


# instance fields
.field protected A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field protected B:Lcom/estrongs/fs/b/ab;

.field public C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private L:I

.field private M:Z

.field private N:Lcom/estrongs/a/a;

.field private O:Z

.field private P:Z

.field a:Z

.field b:Z


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/d;Ljava/util/List;Lcom/estrongs/fs/h;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/d;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Lcom/estrongs/fs/h;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/fs/b/r;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;Lcom/estrongs/fs/h;)V

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ao;->a:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ao;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ao;->A:Ljava/util/List;

    iput-object v1, p0, Lcom/estrongs/fs/b/ao;->B:Lcom/estrongs/fs/b/ab;

    iput-object v1, p0, Lcom/estrongs/fs/b/ao;->D:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/fs/b/ao;->E:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ao;->F:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ao;->G:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ao;->H:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ao;->I:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ao;->J:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ao;->K:Ljava/util/List;

    iput v3, p0, Lcom/estrongs/fs/b/ao;->L:I

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ao;->M:Z

    iput-boolean v3, p0, Lcom/estrongs/fs/b/ao;->O:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ao;->P:Z

    invoke-interface {p3}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->x:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/ao;->a:Z

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/estrongs/fs/b/ao;->canRestart:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/estrongs/fs/b/ao;->task_type:I

    const-string v0, "task_type"

    iget v1, p0, Lcom/estrongs/fs/b/ao;->task_type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ao;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {p3}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->x:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->u(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/estrongs/fs/b/ao;->b:Z

    goto :goto_0
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

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/b/ao;->a(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/estrongs/fs/b/ao;->L:I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/a/a;->g(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/estrongs/fs/b/ao;->L:I

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

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Lcom/estrongs/android/util/am;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->J:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/estrongs/android/util/am;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/fs/b/ao;->F:Ljava/util/List;

    iget-object v3, p0, Lcom/estrongs/fs/b/ao;->G:Ljava/util/List;

    iget-object v4, p0, Lcom/estrongs/fs/b/ao;->H:Ljava/util/List;

    iget-object v5, p0, Lcom/estrongs/fs/b/ao;->I:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/b/ao;->a(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->K:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_6

    move v0, v1

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_6

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ao;->taskStopped()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    invoke-direct {p0, v3, p2, p3}, Lcom/estrongs/fs/b/ao;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    aget-object v4, v2, v0

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    aget-object v4, v2, v0

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_5
    aget-object v4, v2, v0

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Lcom/estrongs/android/util/am;->aw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->c:Lcom/estrongs/fs/d;

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/d;->e(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-static {v1}, Lcom/estrongs/fs/util/j;->a(Ljava/io/InputStream;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {v1}, Lcom/estrongs/fs/util/j;->a(Ljava/io/InputStream;)V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "Move"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exist failed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/estrongs/android/util/am;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/estrongs/fs/util/j;->a(Ljava/io/InputStream;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/estrongs/fs/util/j;->a(Ljava/io/InputStream;)V

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->c:Lcom/estrongs/fs/d;

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z
    :try_end_2
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "Move"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exist failed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/estrongs/android/util/am;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/ao;->N:Lcom/estrongs/a/a;

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/fs/b/ao;->O:Z

    return-void
.end method

.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->D:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/fs/b/ao;->D:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/fs/b/ao;->E:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/estrongs/fs/b/r;->handleMessage(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected i()V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/fs/b/ao;->O:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/fs/b/ao;->M:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/util/bd;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->J:Ljava/util/List;

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/d;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->K:Ljava/util/List;

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/d;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->I:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/media/d;->a(Ljava/util/List;Ljava/util/Set;)V
    :try_end_0
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/media/MediaStoreInsertException;->printStackTrace()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/cd;->b()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lcom/estrongs/fs/impl/k/b;->c()Lcom/estrongs/fs/impl/k/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->J:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/k/b;->b(Ljava/util/List;)V

    invoke-static {}, Lcom/estrongs/fs/impl/k/b;->c()Lcom/estrongs/fs/impl/k/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->K:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/k/b;->c(Ljava/util/List;)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {}, Lcom/estrongs/fs/impl/i/b;->c()Lcom/estrongs/fs/impl/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->J:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/i/b;->b(Ljava/util/List;)V

    invoke-static {}, Lcom/estrongs/fs/impl/i/b;->c()Lcom/estrongs/fs/impl/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->K:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/i/b;->c(Ljava/util/List;)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-static {}, Lcom/estrongs/fs/impl/q/b;->c()Lcom/estrongs/fs/impl/q/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->J:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/q/b;->b(Ljava/util/List;)V

    invoke-static {}, Lcom/estrongs/fs/impl/q/b;->c()Lcom/estrongs/fs/impl/q/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->K:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/q/b;->c(Ljava/util/List;)V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {}, Lcom/estrongs/fs/impl/k/b;->c()Lcom/estrongs/fs/impl/k/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->F:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/k/b;->a(Ljava/util/List;)V

    :cond_6
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-static {}, Lcom/estrongs/fs/impl/i/b;->c()Lcom/estrongs/fs/impl/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->G:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/i/b;->a(Ljava/util/List;)V

    :cond_7
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/q/b;->c()Lcom/estrongs/fs/impl/q/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->H:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/q/b;->a(Ljava/util/List;)V
    :try_end_1
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->F:Ljava/util/List;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->G:Ljava/util/List;

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->H:Ljava/util/List;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->I:Ljava/util/List;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->A:Ljava/util/List;

    return-object v0
.end method

.method protected postTask()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/fs/b/r;->postTask()V

    iget-boolean v0, p0, Lcom/estrongs/fs/b/ao;->P:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ao;->i()V

    :cond_0
    return-void
.end method

.method public removeProgressListener(Lcom/estrongs/a/a/l;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/fs/b/r;->removeProgressListener(Lcom/estrongs/a/a/l;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->B:Lcom/estrongs/fs/b/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->B:Lcom/estrongs/fs/b/ab;

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/b/ab;->removeProgressListener(Lcom/estrongs/a/a/l;)V

    :cond_0
    return-void
.end method

.method public task()Z
    .locals 14

    iget-boolean v0, p0, Lcom/estrongs/fs/b/ao;->o:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    new-instance v1, Lcom/estrongs/a/q;

    const-string v2, "Error"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ao;->setTaskResult(ILjava/lang/Object;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/fs/b/ao;->l:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/a/a/m;->l:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/a/a/m;->m:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/a/a/m;->o:Z

    :cond_2
    iget-boolean v0, p0, Lcom/estrongs/fs/b/ao;->a:Z

    if-eqz v0, :cond_1f

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->c:J

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/a/a/m;->m:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/a/a/m;->l:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ao;->onProgress(Lcom/estrongs/a/a/m;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aO(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/ao;->P:Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v4, v0

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_1b

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ao;->taskStopped()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/estrongs/fs/b/ao;->P:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ao;->i()V

    :cond_3
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/ao;->L:I

    invoke-virtual {v1, v7, v2}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/ao;->L:I

    invoke-virtual {v1, v6, v2}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v9, v0, Lcom/estrongs/fs/b/u;->b:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/estrongs/android/util/am;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v8, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ao;->sendMessage(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ao;->onProgress(Lcom/estrongs/a/a/m;)V

    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/estrongs/android/util/bd;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/io/File;

    invoke-static {v8}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {v9}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    :goto_3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->h(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->h(Ljava/lang/String;)Z

    move-result v2

    xor-int v10, v0, v2

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->N:Lcom/estrongs/a/a;

    if-nez v0, :cond_8

    move-object v2, p0

    :goto_4
    const-class v11, Lcom/estrongs/a/a/h;

    const/4 v0, 0x4

    new-array v12, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v9, v12, v0

    const/4 v0, 0x1

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v0

    const/4 v13, 0x2

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    aput-object v0, v12, v13

    const/4 v0, 0x3

    iget-object v13, p0, Lcom/estrongs/fs/b/ao;->c:Lcom/estrongs/fs/d;

    invoke-virtual {v13, v9}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v13

    aput-object v13, v12, v0

    invoke-virtual {v2, v11, v12}, Lcom/estrongs/a/a;->getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/d;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/h;

    iget v2, v0, Lcom/estrongs/a/a/h;->g:I

    const/4 v11, 0x2

    if-ne v2, v11, :cond_9

    const/4 v0, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v8, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ao;->sendMessage(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ao;->onProgress(Lcom/estrongs/a/a/m;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcom/estrongs/fs/b/ao;->P:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ao;->i()V

    :cond_6
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/b/ao;->L:I

    invoke-virtual {v0, v7, v1}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/b/ao;->L:I

    invoke-virtual {v0, v6, v1}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_7
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->N:Lcom/estrongs/a/a;

    move-object v2, v0

    goto :goto_4

    :cond_9
    iget v2, v0, Lcom/estrongs/a/a/h;->g:I

    const/4 v11, 0x1

    if-ne v2, v11, :cond_17

    if-eqz v10, :cond_b

    const/16 v1, 0x10

    new-instance v2, Lcom/estrongs/a/q;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v3, 0x7f0b01e9

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/FexApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/ao;->setTaskResult(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/estrongs/fs/b/ao;->P:Z

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ao;->i()V

    :cond_a
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/ao;->L:I

    invoke-virtual {v1, v7, v2}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/ao;->L:I

    invoke-virtual {v1, v6, v2}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    goto/16 :goto_0

    :cond_b
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcom/estrongs/fs/b/ao;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/estrongs/fs/o;

    iget-object v2, p0, Lcom/estrongs/fs/b/ao;->n:Lcom/estrongs/fs/h;

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/o;-><init>(Lcom/estrongs/fs/h;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v8, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ao;->sendMessage(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ao;->onProgress(Lcom/estrongs/a/a/m;)V

    invoke-direct {p0, v8, v9}, Lcom/estrongs/fs/b/ao;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/b/ao;->M:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lcom/estrongs/fs/b/ao;->P:Z

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ao;->i()V

    :cond_c
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/ao;->L:I

    invoke-virtual {v1, v7, v2}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/ao;->L:I

    invoke-virtual {v1, v6, v2}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    throw v0

    :cond_d
    :try_start_4
    invoke-virtual {p0}, Lcom/estrongs/fs/b/ao;->taskStopped()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v1, v0}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->n:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/fs/b/ao;->n:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v1, v0}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/estrongs/fs/b/ao;->P:Z

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ao;->i()V

    :cond_e
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/ao;->L:I

    invoke-virtual {v1, v7, v2}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/ao;->L:I

    invoke-virtual {v1, v6, v2}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    goto/16 :goto_0

    :cond_f
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/fs/b/ao;->n:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_11
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_12
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    invoke-static {v0, v2, v10}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    :cond_13
    :goto_8
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_15

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->g(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/a/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_15
    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->A:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v8, v9}, Lcom/estrongs/fs/b/ao;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/b/ao;->M:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/estrongs/fs/o;

    iget-object v2, p0, Lcom/estrongs/fs/b/ao;->n:Lcom/estrongs/fs/h;

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/o;-><init>(Lcom/estrongs/fs/h;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    :goto_9
    const/4 v0, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v8, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ao;->sendMessage(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ao;->onProgress(Lcom/estrongs/a/a/m;)V

    goto/16 :goto_2

    :cond_17
    iget v2, v0, Lcom/estrongs/a/a/h;->g:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v10, 0x3

    if-ne v2, v10, :cond_19

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/estrongs/fs/b/ao;->P:Z

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ao;->i()V

    :cond_18
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/ao;->L:I

    invoke-virtual {v1, v7, v2}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/ao;->L:I

    invoke-virtual {v1, v6, v2}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    goto/16 :goto_0

    :cond_19
    :try_start_6
    iget v0, v0, Lcom/estrongs/a/a/h;->g:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_13

    new-instance v0, Ljava/io/File;

    invoke-static {v9}, Lcom/estrongs/fs/util/j;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v2, v10

    const/4 v10, 0x1

    aput-object v8, v2, v10

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/ao;->sendMessage(I[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v1}, Lcom/estrongs/fs/b/ao;->onProgress(Lcom/estrongs/a/a/m;)V

    move-object v1, v0

    goto/16 :goto_8

    :cond_1a
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_9

    :cond_1b
    iget-boolean v0, p0, Lcom/estrongs/fs/b/ao;->P:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ao;->i()V

    :cond_1c
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/b/ao;->L:I

    invoke-virtual {v0, v7, v1}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/b/ao;->L:I

    invoke-virtual {v0, v6, v1}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    goto/16 :goto_5

    :cond_1d
    iput-object v5, p0, Lcom/estrongs/fs/b/ao;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ao;->a()V

    :cond_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->b:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/estrongs/android/util/am;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    :goto_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_1f
    iget-boolean v0, p0, Lcom/estrongs/fs/b/ao;->b:Z

    if-eqz v0, :cond_1e

    :try_start_7
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->c:Lcom/estrongs/fs/d;

    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->x:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/fs/b/ao;->n:Lcom/estrongs/fs/h;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/fs/d;->a(Ljava/util/List;Lcom/estrongs/fs/h;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_20
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_21
    invoke-super {p0}, Lcom/estrongs/fs/b/r;->task()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->D:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->D:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/fs/b/ao;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_22
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->E:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->E:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/fs/b/ao;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    :cond_23
    const/16 v0, 0x2710

    new-instance v1, Lcom/estrongs/a/q;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ao;->setTaskResult(ILjava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_24
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->C:Ljava/util/List;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/estrongs/fs/b/ao;->d:I

    if-nez v0, :cond_26

    :cond_25
    new-instance v0, Lcom/estrongs/fs/b/ab;

    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->c:Lcom/estrongs/fs/d;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/fs/b/ab;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/estrongs/fs/b/ao;->B:Lcom/estrongs/fs/b/ab;

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->B:Lcom/estrongs/fs/b/ab;

    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->C:Ljava/util/List;

    iput-object v1, v0, Lcom/estrongs/fs/b/ab;->j:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->B:Lcom/estrongs/fs/b/ab;

    iget-object v0, v0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    const/4 v1, 0x3

    iput v1, v0, Lcom/estrongs/a/a/m;->i:I

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->B:Lcom/estrongs/fs/b/ab;

    iget-object v0, v0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/a/a/m;->k:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->B:Lcom/estrongs/fs/b/ab;

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ao;->getProgressListeners()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/ab;->addProgressListeners(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->B:Lcom/estrongs/fs/b/ab;

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ao;->getTaskDecisionListener()Lcom/estrongs/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/ab;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->B:Lcom/estrongs/fs/b/ab;

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/b/ab;->setParentTask(Lcom/estrongs/a/a;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->B:Lcom/estrongs/fs/b/ab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/ab;->execute(Z)V

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->A:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->B:Lcom/estrongs/fs/b/ab;

    iget-object v1, v1, Lcom/estrongs/fs/b/ab;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_26
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
