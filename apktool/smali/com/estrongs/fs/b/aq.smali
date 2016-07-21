.class public Lcom/estrongs/fs/b/aq;
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

.field private Q:Z

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

    iput-boolean v2, p0, Lcom/estrongs/fs/b/aq;->a:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/aq;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/aq;->A:Ljava/util/List;

    iput-object v1, p0, Lcom/estrongs/fs/b/aq;->B:Lcom/estrongs/fs/b/ab;

    iput-object v1, p0, Lcom/estrongs/fs/b/aq;->D:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/fs/b/aq;->E:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/aq;->F:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/aq;->G:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/aq;->H:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/aq;->I:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/aq;->J:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/aq;->K:Ljava/util/List;

    iput v3, p0, Lcom/estrongs/fs/b/aq;->L:I

    iput-boolean v2, p0, Lcom/estrongs/fs/b/aq;->M:Z

    iput-boolean v3, p0, Lcom/estrongs/fs/b/aq;->O:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/aq;->P:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/aq;->Q:Z

    invoke-interface {p3}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->x:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/aq;->a:Z

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/estrongs/fs/b/aq;->canRestart:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/estrongs/fs/b/aq;->task_type:I

    const-string v0, "task_type"

    iget v1, p0, Lcom/estrongs/fs/b/aq;->task_type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/aq;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {p3}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->x:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->w(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/estrongs/fs/b/aq;->b:Z

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

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/b/aq;->a(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/estrongs/fs/b/aq;->L:I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/a/a;->g(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/estrongs/fs/b/aq;->L:I

    invoke-static {}, Lcom/estrongs/android/util/bk;->f()Z

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

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bC(Ljava/lang/String;)Z

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
    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->J:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->bC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/fs/b/aq;->F:Ljava/util/List;

    iget-object v3, p0, Lcom/estrongs/fs/b/aq;->G:Ljava/util/List;

    iget-object v4, p0, Lcom/estrongs/fs/b/aq;->H:Ljava/util/List;

    iget-object v5, p0, Lcom/estrongs/fs/b/aq;->I:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/b/aq;->a(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->K:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/estrongs/fs/b/aq;->J:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/estrongs/android/scanner/l;->a()Lcom/estrongs/android/scanner/l;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/l;->a(Ljava/util/List;)V

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lcom/estrongs/android/scanner/l;->a()Lcom/estrongs/android/scanner/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/scanner/l;->b(Ljava/util/List;)V

    :cond_3
    invoke-static {}, Lcom/estrongs/android/scanner/l;->a()Lcom/estrongs/android/scanner/l;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/l;->a(Z)V

    return-void
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

    invoke-virtual {p0}, Lcom/estrongs/fs/b/aq;->taskStopped()Z

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

    invoke-direct {p0, v3, p2, p3}, Lcom/estrongs/fs/b/aq;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

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

    invoke-static {v4, v5, v7}, Lcom/estrongs/fs/impl/local/i;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

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

    invoke-static {v0, v1, v7}, Lcom/estrongs/fs/impl/local/i;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aG(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->c:Lcom/estrongs/fs/d;

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

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->d(Ljava/lang/String;Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->c:Lcom/estrongs/fs/d;

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

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/aq;->N:Lcom/estrongs/a/a;

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/fs/b/aq;->O:Z

    return-void
.end method

.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->D:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/fs/b/aq;->D:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/fs/b/aq;->E:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/estrongs/fs/b/r;->handleMessage(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected i()V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/fs/b/aq;->O:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/fs/b/aq;->M:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/util/bk;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->J:Ljava/util/List;

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/e;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->K:Ljava/util/List;

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/e;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->I:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/media/e;->a(Ljava/util/List;Ljava/util/Set;)V
    :try_end_0
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/media/MediaStoreInsertException;->printStackTrace()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/cm;->b()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lcom/estrongs/fs/impl/p/c;->b()Lcom/estrongs/fs/impl/p/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/aq;->J:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/p/c;->b(Ljava/util/List;)V

    invoke-static {}, Lcom/estrongs/fs/impl/p/c;->b()Lcom/estrongs/fs/impl/p/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/aq;->K:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/p/c;->c(Ljava/util/List;)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {}, Lcom/estrongs/fs/impl/n/d;->b()Lcom/estrongs/fs/impl/n/d;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/aq;->J:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/n/d;->b(Ljava/util/List;)V

    invoke-static {}, Lcom/estrongs/fs/impl/n/d;->b()Lcom/estrongs/fs/impl/n/d;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/aq;->K:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/n/d;->c(Ljava/util/List;)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-static {}, Lcom/estrongs/fs/impl/v/c;->b()Lcom/estrongs/fs/impl/v/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/aq;->J:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/v/c;->b(Ljava/util/List;)V

    invoke-static {}, Lcom/estrongs/fs/impl/v/c;->b()Lcom/estrongs/fs/impl/v/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/aq;->K:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/v/c;->c(Ljava/util/List;)V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {}, Lcom/estrongs/fs/impl/p/c;->b()Lcom/estrongs/fs/impl/p/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/aq;->F:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/p/c;->a(Ljava/util/List;)V

    :cond_6
    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-static {}, Lcom/estrongs/fs/impl/n/d;->b()Lcom/estrongs/fs/impl/n/d;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/aq;->G:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/n/d;->a(Ljava/util/List;)V

    :cond_7
    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/v/c;->b()Lcom/estrongs/fs/impl/v/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/aq;->H:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/v/c;->a(Ljava/util/List;)V
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

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->F:Ljava/util/List;

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

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->G:Ljava/util/List;

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

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->H:Ljava/util/List;

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

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->I:Ljava/util/List;

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

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->A:Ljava/util/List;

    return-object v0
.end method

.method protected postTask()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/fs/b/r;->postTask()V

    iget-boolean v0, p0, Lcom/estrongs/fs/b/aq;->Q:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/fs/b/aq;->i()V

    :cond_0
    return-void
.end method

.method public removeProgressListener(Lcom/estrongs/a/a/l;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/fs/b/r;->removeProgressListener(Lcom/estrongs/a/a/l;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->B:Lcom/estrongs/fs/b/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->B:Lcom/estrongs/fs/b/ab;

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/b/ab;->removeProgressListener(Lcom/estrongs/a/a/l;)V

    :cond_0
    return-void
.end method

.method public task()Z
    .locals 15

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->n:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/estrongs/android/util/ap;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    instance-of v4, v0, Lcom/estrongs/fs/impl/local/f;

    if-eqz v4, :cond_1

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/estrongs/android/util/ap;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/fs/b/aq;->P:Z

    :cond_2
    iget-boolean v0, p0, Lcom/estrongs/fs/b/aq;->o:Z

    if-eqz v0, :cond_4

    const/16 v0, 0xe

    new-instance v1, Lcom/estrongs/a/q;

    const-string v2, "Error"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/aq;->setTaskResult(ILjava/lang/Object;)V

    const/4 v0, 0x0

    :cond_3
    :goto_1
    return v0

    :cond_4
    iget-boolean v0, p0, Lcom/estrongs/fs/b/aq;->l:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->processData:Lcom/estrongs/a/a/m;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/a/a/m;->l:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->processData:Lcom/estrongs/a/a/m;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/a/a/m;->m:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->processData:Lcom/estrongs/a/a/m;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/a/a/m;->o:Z

    :cond_5
    invoke-static {}, Lcom/estrongs/android/scanner/l;->a()Lcom/estrongs/android/scanner/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/l;->e()V

    iget-boolean v0, p0, Lcom/estrongs/fs/b/aq;->a:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->processData:Lcom/estrongs/a/a/m;

    iget-object v1, p0, Lcom/estrongs/fs/b/aq;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->c:J

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->processData:Lcom/estrongs/a/a/m;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/a/a/m;->m:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->processData:Lcom/estrongs/a/a/m;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/a/a/m;->l:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/aq;->onProgress(Lcom/estrongs/a/a/m;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/aq;->Q:Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v4, v0

    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_1e

    invoke-virtual {p0}, Lcom/estrongs/fs/b/aq;->taskStopped()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    invoke-direct {p0, v6}, Lcom/estrongs/fs/b/aq;->a(Ljava/util/List;)V

    iget-boolean v1, p0, Lcom/estrongs/fs/b/aq;->Q:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/estrongs/fs/b/aq;->i()V

    :cond_6
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/aq;->L:I

    invoke-virtual {v1, v8, v2}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/aq;->L:I

    invoke-virtual {v1, v7, v2}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    goto/16 :goto_1

    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v10, v0, Lcom/estrongs/fs/b/u;->b:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/estrongs/android/util/ap;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v9, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/aq;->sendMessage(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/aq;->onProgress(Lcom/estrongs/a/a/m;)V

    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/estrongs/android/util/bk;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/io/File;

    invoke-static {v9}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {v10}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    :goto_4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/i;->h(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/i;->h(Ljava/lang/String;)Z

    move-result v2

    xor-int v11, v0, v2

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->N:Lcom/estrongs/a/a;

    if-nez v0, :cond_b

    move-object v2, p0

    :goto_5
    const-class v12, Lcom/estrongs/a/a/h;

    const/4 v0, 0x4

    new-array v13, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v10, v13, v0

    const/4 v0, 0x1

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v13, v0

    const/4 v14, 0x2

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    aput-object v0, v13, v14

    const/4 v0, 0x3

    iget-object v14, p0, Lcom/estrongs/fs/b/aq;->c:Lcom/estrongs/fs/d;

    invoke-virtual {v14, v10}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v14

    aput-object v14, v13, v0

    invoke-virtual {v2, v12, v13}, Lcom/estrongs/a/a;->getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/d;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/h;

    iget v2, v0, Lcom/estrongs/a/a/h;->g:I

    const/4 v12, 0x2

    if-ne v2, v12, :cond_c

    const/4 v0, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v9, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/aq;->sendMessage(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/aq;->onProgress(Lcom/estrongs/a/a/m;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    invoke-direct {p0, v6}, Lcom/estrongs/fs/b/aq;->a(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/estrongs/fs/b/aq;->Q:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/estrongs/fs/b/aq;->i()V

    :cond_9
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/b/aq;->L:I

    invoke-virtual {v0, v8, v1}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/b/aq;->L:I

    invoke-virtual {v0, v7, v1}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    :goto_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_a
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->N:Lcom/estrongs/a/a;

    move-object v2, v0

    goto/16 :goto_5

    :cond_c
    iget v2, v0, Lcom/estrongs/a/a/h;->g:I

    const/4 v12, 0x1

    if-ne v2, v12, :cond_1a

    if-eqz v11, :cond_e

    const/16 v1, 0x10

    new-instance v2, Lcom/estrongs/a/q;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v3, 0x7f08049c

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/FexApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/aq;->setTaskResult(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    invoke-direct {p0, v6}, Lcom/estrongs/fs/b/aq;->a(Ljava/util/List;)V

    iget-boolean v1, p0, Lcom/estrongs/fs/b/aq;->Q:Z

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/estrongs/fs/b/aq;->i()V

    :cond_d
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/aq;->L:I

    invoke-virtual {v1, v8, v2}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/aq;->L:I

    invoke-virtual {v1, v7, v2}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    goto/16 :goto_1

    :cond_e
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcom/estrongs/fs/b/aq;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/estrongs/fs/z;

    iget-object v2, p0, Lcom/estrongs/fs/b/aq;->n:Lcom/estrongs/fs/h;

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/z;-><init>(Lcom/estrongs/fs/h;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v9, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/aq;->sendMessage(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/aq;->onProgress(Lcom/estrongs/a/a/m;)V

    invoke-direct {p0, v9, v10}, Lcom/estrongs/fs/b/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/b/aq;->M:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    invoke-direct {p0, v6}, Lcom/estrongs/fs/b/aq;->a(Ljava/util/List;)V

    iget-boolean v1, p0, Lcom/estrongs/fs/b/aq;->Q:Z

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/estrongs/fs/b/aq;->i()V

    :cond_f
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/aq;->L:I

    invoke-virtual {v1, v8, v2}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/aq;->L:I

    invoke-virtual {v1, v7, v2}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    throw v0

    :cond_10
    :try_start_4
    invoke-virtual {p0}, Lcom/estrongs/fs/b/aq;->taskStopped()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->f:Ljava/util/ArrayList;

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

    :goto_7
    invoke-virtual {v1, v0}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->n:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/fs/b/aq;->n:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v1, v0}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x0

    invoke-direct {p0, v6}, Lcom/estrongs/fs/b/aq;->a(Ljava/util/List;)V

    iget-boolean v1, p0, Lcom/estrongs/fs/b/aq;->Q:Z

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/estrongs/fs/b/aq;->i()V

    :cond_11
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/aq;->L:I

    invoke-virtual {v1, v8, v2}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/aq;->L:I

    invoke-virtual {v1, v7, v2}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    goto/16 :goto_1

    :cond_12
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->f:Ljava/util/ArrayList;

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

    goto :goto_7

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/fs/b/aq;->n:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_14
    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_15
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    invoke-static {v0, v2, v11}, Lcom/estrongs/fs/impl/local/i;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    :cond_16
    :goto_9
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/fs/impl/local/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/i;->a(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_18

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/i;->g(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/a/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    :cond_17
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/fs/impl/local/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_18
    if-eqz v0, :cond_1d

    iget-object v2, p0, Lcom/estrongs/fs/b/aq;->A:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v9, v10}, Lcom/estrongs/fs/b/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/b/aq;->M:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/estrongs/fs/z;

    iget-object v3, p0, Lcom/estrongs/fs/b/aq;->n:Lcom/estrongs/fs/h;

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/estrongs/fs/z;-><init>(Lcom/estrongs/fs/h;Ljava/lang/String;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_a
    const/4 v0, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v9, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/aq;->sendMessage(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/aq;->onProgress(Lcom/estrongs/a/a/m;)V

    goto/16 :goto_3

    :cond_1a
    iget v2, v0, Lcom/estrongs/a/a/h;->g:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v11, 0x3

    if-ne v2, v11, :cond_1c

    const/4 v0, 0x0

    invoke-direct {p0, v6}, Lcom/estrongs/fs/b/aq;->a(Ljava/util/List;)V

    iget-boolean v1, p0, Lcom/estrongs/fs/b/aq;->Q:Z

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lcom/estrongs/fs/b/aq;->i()V

    :cond_1b
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/aq;->L:I

    invoke-virtual {v1, v8, v2}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/aq;->L:I

    invoke-virtual {v1, v7, v2}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    goto/16 :goto_1

    :cond_1c
    :try_start_6
    iget v0, v0, Lcom/estrongs/a/a/h;->g:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_16

    new-instance v0, Ljava/io/File;

    invoke-static {v10}, Lcom/estrongs/fs/util/j;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v2, v11

    const/4 v11, 0x1

    aput-object v9, v2, v11

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/aq;->sendMessage(I[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/estrongs/fs/b/aq;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v1}, Lcom/estrongs/fs/b/aq;->onProgress(Lcom/estrongs/a/a/m;)V

    move-object v1, v0

    goto/16 :goto_9

    :cond_1d
    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_a

    :cond_1e
    invoke-direct {p0, v6}, Lcom/estrongs/fs/b/aq;->a(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/estrongs/fs/b/aq;->Q:Z

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/estrongs/fs/b/aq;->i()V

    :cond_1f
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/b/aq;->L:I

    invoke-virtual {v0, v8, v1}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/b/aq;->L:I

    invoke-virtual {v0, v7, v1}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    goto/16 :goto_6

    :cond_20
    iput-object v5, p0, Lcom/estrongs/fs/b/aq;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/estrongs/fs/b/aq;->a()V

    :cond_21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_24

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->b:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/estrongs/android/util/ap;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    :goto_c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_22
    iget-boolean v0, p0, Lcom/estrongs/fs/b/aq;->b:Z

    if-eqz v0, :cond_21

    :try_start_7
    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->c:Lcom/estrongs/fs/d;

    iget-object v1, p0, Lcom/estrongs/fs/b/aq;->x:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/fs/b/aq;->n:Lcom/estrongs/fs/h;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/fs/d;->a(Ljava/util/List;Lcom/estrongs/fs/h;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_23
    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_24
    invoke-super {p0}, Lcom/estrongs/fs/b/r;->task()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->D:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->D:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/fs/b/aq;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_25
    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->E:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->E:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/fs/b/aq;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    :cond_26
    const/16 v0, 0x2710

    new-instance v1, Lcom/estrongs/a/q;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/aq;->setTaskResult(ILjava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_27
    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->C:Ljava/util/List;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/estrongs/fs/b/aq;->d:I

    if-nez v0, :cond_29

    :cond_28
    new-instance v0, Lcom/estrongs/fs/b/ab;

    iget-object v1, p0, Lcom/estrongs/fs/b/aq;->c:Lcom/estrongs/fs/d;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/fs/b/ab;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/estrongs/fs/b/aq;->B:Lcom/estrongs/fs/b/ab;

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->B:Lcom/estrongs/fs/b/ab;

    iget-object v1, p0, Lcom/estrongs/fs/b/aq;->C:Ljava/util/List;

    iput-object v1, v0, Lcom/estrongs/fs/b/ab;->l:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->B:Lcom/estrongs/fs/b/ab;

    iget-object v0, v0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    const/4 v1, 0x3

    iput v1, v0, Lcom/estrongs/a/a/m;->i:I

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->B:Lcom/estrongs/fs/b/ab;

    iget-object v0, v0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/a/a/m;->k:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->B:Lcom/estrongs/fs/b/ab;

    invoke-virtual {p0}, Lcom/estrongs/fs/b/aq;->getProgressListeners()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/ab;->addProgressListeners(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->B:Lcom/estrongs/fs/b/ab;

    invoke-virtual {p0}, Lcom/estrongs/fs/b/aq;->getTaskDecisionListener()Lcom/estrongs/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/ab;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->B:Lcom/estrongs/fs/b/ab;

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/b/ab;->setParentTask(Lcom/estrongs/a/a;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->B:Lcom/estrongs/fs/b/ab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/ab;->execute(Z)V

    iget-object v0, p0, Lcom/estrongs/fs/b/aq;->A:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/fs/b/aq;->B:Lcom/estrongs/fs/b/ab;

    iget-object v1, v1, Lcom/estrongs/fs/b/ab;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_29
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_2a
    move v0, v1

    goto/16 :goto_0
.end method
