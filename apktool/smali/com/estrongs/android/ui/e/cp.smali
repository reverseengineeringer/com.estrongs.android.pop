.class public Lcom/estrongs/android/ui/e/cp;
.super Lcom/estrongs/android/ui/e/c;


# instance fields
.field private A:[Ljava/lang/String;

.field private B:[Ljava/lang/String;

.field private C:Z

.field private j:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field protected k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/view/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field private m:[Ljava/lang/String;

.field private n:[Ljava/lang/String;

.field private o:[Ljava/lang/String;

.field private p:[Ljava/lang/String;

.field private q:[Ljava/lang/String;

.field private r:[Ljava/lang/String;

.field private s:[Ljava/lang/String;

.field private t:[Ljava/lang/String;

.field private u:[Ljava/lang/String;

.field private v:[Ljava/lang/String;

.field private w:[Ljava/lang/String;

.field private x:[Ljava/lang/String;

.field private y:[Ljava/lang/String;

.field private z:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZLandroid/widget/LinearLayout;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/e/c;-><init>(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/cp;->C:Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/e/cp;->k()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/fs/h;)Lcom/estrongs/a/a;
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/ui/e/cp;->b(Lcom/estrongs/fs/h;)Lcom/estrongs/a/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cp;->j:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    return-object v0
.end method

.method public static a(Lcom/estrongs/android/pop/view/FileExplorerActivity;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/view/FileExplorerActivity;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;ZLjava/util/List;Z)V

    return-void
.end method

.method public static a(Lcom/estrongs/android/pop/view/FileExplorerActivity;ZLjava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/view/FileExplorerActivity;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v3, 0x1

    new-instance v6, Lcom/estrongs/fs/b/w;

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1, p2, v3}, Lcom/estrongs/fs/b/w;-><init>(Lcom/estrongs/fs/d;ILjava/util/List;Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s()V

    const v0, 0x7f0b0347

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0b0348

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/estrongs/android/ui/e/cq;

    invoke-direct {v5, v6, p0}, Lcom/estrongs/android/ui/e/cq;-><init>(Lcom/estrongs/fs/b/w;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/estrongs/android/ui/dialog/ProgressDialog;

    move-result-object v2

    new-instance v0, Lcom/estrongs/android/ui/e/dk;

    move-object v1, p0

    move-object v3, v6

    move v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/e/dk;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/ui/dialog/ProgressDialog;Lcom/estrongs/fs/b/w;ZZ)V

    invoke-virtual {v6, v0}, Lcom/estrongs/fs/b/w;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    invoke-virtual {v6}, Lcom/estrongs/fs/b/w;->execute()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/cp;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/e/cp;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v4

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->b(Lcom/estrongs/fs/h;)Lcom/estrongs/a/a;

    move-result-object v2

    if-eqz v2, :cond_6

    instance-of v1, v2, Lcom/estrongs/fs/b/ad;

    if-eqz v1, :cond_3

    move-object v1, v2

    check-cast v1, Lcom/estrongs/fs/b/ad;

    invoke-virtual {v1}, Lcom/estrongs/fs/b/ad;->requestStop()V

    invoke-virtual {v2}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v5

    const-string v8, "target"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v2

    const/4 v8, 0x4

    if-eq v2, v8, :cond_7

    iget-object v2, v1, Lcom/estrongs/fs/b/ad;->e:Ljava/lang/String;

    :goto_2
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v6, v2, v5}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    invoke-static {v2}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v6, v2, v5}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/s;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual {v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v2

    instance-of v2, v2, Lcom/estrongs/android/ui/b/u;

    if-eqz v2, :cond_2

    invoke-virtual {v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/ui/b/u;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/ui/b/u;->a(Lcom/estrongs/a/a;)Lcom/estrongs/android/ui/b/f;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v5, Lcom/estrongs/fs/b/ad;

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v8

    invoke-virtual {v1}, Lcom/estrongs/fs/b/ad;->summary()Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Lcom/estrongs/fs/b/ad;-><init>(Lcom/estrongs/fs/d;Lorg/json/JSONObject;)V

    invoke-virtual {v5}, Lcom/estrongs/fs/b/ad;->reset()V

    invoke-virtual {v5}, Lcom/estrongs/fs/b/ad;->execute()V

    invoke-virtual {v2, v5}, Lcom/estrongs/android/ui/b/f;->a(Lcom/estrongs/a/a;)V

    const-string v2, "task"

    invoke-interface {v0, v2, v5}, Lcom/estrongs/fs/h;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/estrongs/fs/b/ad;->requestStop()V

    invoke-static {}, Lcom/estrongs/a/l;->a()Lcom/estrongs/a/l;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lcom/estrongs/a/l;->b(Lcom/estrongs/a/a;Z)V

    invoke-static {}, Lcom/estrongs/a/l;->a()Lcom/estrongs/a/l;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Lcom/estrongs/a/l;->a(Lcom/estrongs/a/a;Z)V

    :cond_2
    move v0, v3

    :goto_4
    move v3, v0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_3
    instance-of v1, v2, Lcom/estrongs/fs/b/ap;

    if-eqz v1, :cond_6

    invoke-static {v6}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->ae()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v1

    instance-of v1, v1, Lcom/estrongs/android/ui/b/u;

    if-eqz v1, :cond_4

    invoke-virtual {v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/b/u;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/u;->a(Lcom/estrongs/a/a;)Lcom/estrongs/android/ui/b/f;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v8, Lcom/estrongs/fs/b/ap;

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v9

    invoke-virtual {v2}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "source"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "title"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v9, v5, v10, v11}, Lcom/estrongs/fs/b/ap;-><init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/estrongs/fs/b/ap;->reset()V

    invoke-virtual {v8}, Lcom/estrongs/fs/b/ap;->execute()V

    invoke-virtual {v1, v8}, Lcom/estrongs/android/ui/b/f;->a(Lcom/estrongs/a/a;)V

    const-string v1, "task"

    invoke-interface {v0, v1, v8}, Lcom/estrongs/fs/h;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/estrongs/a/a;->requestStop()V

    invoke-static {}, Lcom/estrongs/a/l;->a()Lcom/estrongs/a/l;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lcom/estrongs/a/l;->b(Lcom/estrongs/a/a;Z)V

    invoke-static {}, Lcom/estrongs/a/l;->a()Lcom/estrongs/a/l;

    move-result-object v0

    invoke-virtual {v0, v8, v4}, Lcom/estrongs/a/l;->a(Lcom/estrongs/a/a;Z)V

    :cond_4
    move v0, v3

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_0

    const v0, 0x7f0b04f3

    const/4 v1, 0x1

    invoke-static {v6, v0, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto/16 :goto_0

    :cond_6
    move v0, v3

    goto :goto_4

    :cond_7
    move-object v2, v5

    goto/16 :goto_2
.end method

.method private a(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;Z)V"
        }
    .end annotation

    const/4 v6, 0x1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->b(Lcom/estrongs/fs/h;)Lcom/estrongs/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v0, v1, Lcom/estrongs/fs/b/ap;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/b/ap;

    iput-boolean v6, v0, Lcom/estrongs/fs/b/ap;->b:Z

    :cond_1
    invoke-virtual {v1}, Lcom/estrongs/a/a;->requestStop()V

    if-eqz p2, :cond_2

    invoke-virtual {v1}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "target"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    instance-of v5, v1, Lcom/estrongs/fs/b/ap;

    if-eqz v5, :cond_3

    new-instance v5, Lcom/estrongs/fs/o;

    invoke-direct {v5, v0, v6}, Lcom/estrongs/fs/o;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    invoke-static {}, Lcom/estrongs/a/l;->a()Lcom/estrongs/a/l;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/a/l;->c(Lcom/estrongs/a/a;)V

    goto :goto_0

    :cond_3
    new-instance v5, Lcom/estrongs/fs/o;

    invoke-direct {v5, v0, v6}, Lcom/estrongs/fs/o;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lcom/estrongs/fs/o;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v6}, Lcom/estrongs/fs/o;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/e/cp;->j:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cp;->j:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->g()V

    :cond_5
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_6

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_7

    :cond_6
    new-instance v0, Lcom/estrongs/android/ui/e/dw;

    const-string v1, "Del Downloads"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/estrongs/android/ui/e/dw;-><init>(Lcom/estrongs/android/ui/e/cp;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/dw;->start()V

    :cond_7
    return-void
.end method

.method private a(Lcom/estrongs/android/ui/e/co;)[Ljava/lang/String;
    .locals 11

    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->D:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cp;->A:[Ljava/lang/String;

    move-object v1, v0

    :goto_0
    array-length v5, v1

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_16

    aget-object v6, v1, v2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/ui/e/co;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->E:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cp;->B:[Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->v:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cp;->y:[Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    :cond_3
    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->e:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cp;->m:[Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    :cond_4
    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->B:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cp;->q:[Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    :cond_5
    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->A:Z

    if-nez v0, :cond_6

    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->m:Z

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/e/cp;->r:[Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    :cond_7
    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->l:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cp;->p:[Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    :cond_8
    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->h:Z

    if-nez v0, :cond_9

    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->z:Z

    if-eqz v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/ui/e/cp;->o:[Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    :cond_a
    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->i:Z

    if-nez v0, :cond_b

    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->j:Z

    if-nez v0, :cond_b

    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->k:Z

    if-eqz v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/ui/e/cp;->x:[Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    :cond_c
    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->n:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cp;->s:[Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    :cond_d
    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->f:Z

    if-nez v0, :cond_e

    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->g:Z

    if-nez v0, :cond_e

    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->x:Z

    if-eqz v0, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/estrongs/android/ui/e/cp;->n:[Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_0

    :cond_f
    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->w:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cp;->u:[Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_0

    :cond_10
    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->o:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cp;->t:[Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_0

    :cond_11
    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->u:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cp;->w:[Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_0

    :cond_12
    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->q:Z

    if-nez v0, :cond_13

    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->p:Z

    if-eqz v0, :cond_14

    :cond_13
    iget-object v0, p0, Lcom/estrongs/android/ui/e/cp;->v:[Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_0

    :cond_14
    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->y:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cp;->z:[Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lcom/estrongs/android/ui/e/cp;->m:[Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_0

    :cond_16
    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget v1, p1, Lcom/estrongs/android/ui/e/co;->F:I

    if-nez v1, :cond_17

    array-length v1, v0

    if-le v1, v10, :cond_17

    new-array v1, v10, [Ljava/lang/String;

    aget-object v2, v0, v3

    aput-object v2, v1, v3

    aget-object v2, v0, v7

    aput-object v2, v1, v7

    aget-object v2, v0, v8

    aput-object v2, v1, v8

    aget-object v0, v0, v9

    aput-object v0, v1, v9

    const/4 v0, 0x4

    const-string v2, "extra"

    aput-object v2, v1, v0

    move-object v0, v1

    :cond_17
    return-object v0
.end method

.method private static b(Lcom/estrongs/fs/h;)Lcom/estrongs/a/a;
    .locals 2

    const-string v0, "task"

    invoke-interface {p0, v0}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/estrongs/a/a;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/estrongs/a/a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/e/cp;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cp;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/e/cp;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/cp;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cp;->j:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private n()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "copy"

    aput-object v1, v0, v3

    const-string v1, "cut"

    aput-object v1, v0, v4

    const-string v1, "delete"

    aput-object v1, v0, v5

    const-string v1, "rename"

    aput-object v1, v0, v6

    const-string v1, "copy_to"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "move_to"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "property"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "open"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "extract_to"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "compression"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "associate_app"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "encrypt"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "decrypt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "pcs_backup"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "send"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "add_to_favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "play"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "playing"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "open_as"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "install"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "share"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "play_to"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "adb_app_install_to"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "chromecast_play"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "shortcut"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "hide"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cp;->m:[Ljava/lang/String;

    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "copy"

    aput-object v1, v0, v3

    const-string v1, "cut"

    aput-object v1, v0, v4

    const-string v1, "delete"

    aput-object v1, v0, v5

    const-string v1, "rename"

    aput-object v1, v0, v6

    const-string v1, "copy_to"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "move_to"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "edit_server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "property"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pcs_backup"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "send"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "add_to_favorite"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "play"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "playing"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "open_as"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "install"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "share"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "shortcut"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "add_to_server_list"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "chromecast_play"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "hide"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "stop_share"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cp;->n:[Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "copy"

    aput-object v1, v0, v3

    const-string v1, "cut"

    aput-object v1, v0, v4

    const-string v1, "delete"

    aput-object v1, v0, v5

    const-string v1, "rename"

    aput-object v1, v0, v6

    const-string v1, "copy_to"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "move_to"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "property"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "send"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "add_to_favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "play"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "playing"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "chromecast_play"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "open_as"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "share"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "pcs_stop_share"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cp;->o:[Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "copy"

    aput-object v1, v0, v3

    const-string v1, "cut"

    aput-object v1, v0, v4

    const-string v1, "delete"

    aput-object v1, v0, v5

    const-string v1, "rename"

    aput-object v1, v0, v6

    const-string v1, "copy_to"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "move_to"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "property"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pcs_backup"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "send"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "add_to_favorite"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "open_as"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "play"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "playing"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "share"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "play_to"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "chromecast_play"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "shortcut"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cp;->x:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "app_uninstall"

    aput-object v1, v0, v3

    const-string v1, "app_backup"

    aput-object v1, v0, v4

    const-string v1, "app_share"

    aput-object v1, v0, v5

    const-string v1, "send"

    aput-object v1, v0, v6

    const-string v1, "app_shortcut"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "adb_app_install_to"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "app_property"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "app_check_update"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cp;->p:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "app_auto_check_update"

    aput-object v1, v0, v3

    const-string v1, "app_update"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cp;->q:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "copy"

    aput-object v1, v0, v3

    const-string v1, "cut"

    aput-object v1, v0, v4

    const-string v1, "delete"

    aput-object v1, v0, v5

    const-string v1, "copy_to"

    aput-object v1, v0, v6

    const-string v1, "move_to"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "app_property"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "property"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pcs_backup"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "send"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "add_to_favorite"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "open"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "extract_to"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "open_as"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "install"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "share"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "shortcut"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cp;->r:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "download_open_folder"

    aput-object v1, v0, v3

    const-string v1, "download_delete"

    aput-object v1, v0, v4

    const-string v1, "download_do_again"

    aput-object v1, v0, v5

    const-string v1, "download_property"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cp;->s:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "compression_extract"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cp;->t:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "delete"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cp;->u:[Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "copy_to"

    aput-object v1, v0, v3

    const-string v1, "image_jump_to"

    aput-object v1, v0, v4

    const-string v1, "delete"

    aput-object v1, v0, v5

    const-string v1, "rename"

    aput-object v1, v0, v6

    const-string v1, "move_to"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "image_comment"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "image_edit"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "image_download"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "share"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "property"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "send"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "add_to_favorite"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "chromecast_play"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "open_as"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cp;->v:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "image_exit_account"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cp;->w:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "delete"

    aput-object v1, v0, v3

    const-string v1, "restore"

    aput-object v1, v0, v4

    const-string v1, "property"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cp;->y:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "save_res_to_my_pcs"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cp;->z:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "adb_app_uninstall"

    aput-object v1, v0, v3

    const-string v1, "copy"

    aput-object v1, v0, v4

    const-string v1, "copy_to"

    aput-object v1, v0, v5

    const-string v1, "send"

    aput-object v1, v0, v6

    const-string v1, "property"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cp;->A:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "copy"

    aput-object v1, v0, v3

    const-string v1, "rename"

    aput-object v1, v0, v4

    const-string v1, "copy_to"

    aput-object v1, v0, v5

    const-string v1, "property"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cp;->B:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iput-object p2, p0, Lcom/estrongs/android/ui/e/cp;->l:Ljava/util/List;

    new-instance v0, Lcom/estrongs/android/ui/e/co;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/cp;->l:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/estrongs/android/ui/e/co;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/co;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/e/cp;->a([Ljava/lang/String;)V

    iget v2, v0, Lcom/estrongs/android/ui/e/co;->F:I

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/e/cp;->b([Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, v0, Lcom/estrongs/android/ui/e/co;->F:I

    if-ne v1, v3, :cond_7

    iget-boolean v1, v0, Lcom/estrongs/android/ui/e/co;->H:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/estrongs/android/ui/e/co;->Z:Z

    if-nez v1, :cond_2

    iget-boolean v0, v0, Lcom/estrongs/android/ui/e/co;->Y:Z

    if-eqz v0, :cond_3

    :cond_2
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "copy"

    aput-object v1, v0, v4

    const-string v1, "cut"

    aput-object v1, v0, v3

    const-string v1, "rename"

    aput-object v1, v0, v5

    const-string v1, "extra"

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/cp;->b([Ljava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->v(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "delete"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/cp;->b([Ljava/lang/String;)V

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "rename"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/cp;->b([Ljava/lang/String;)V

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "edit_server"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/cp;->b([Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->u(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "rename"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/cp;->b([Ljava/lang/String;)V

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "edit_server"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/cp;->b([Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v1, "item_is_scanned_server"

    invoke-interface {v0, v1}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "device_name"

    invoke-interface {v0, v1}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/estrongs/android/util/am;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "rename"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/cp;->b([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-boolean v1, v0, Lcom/estrongs/android/ui/e/co;->G:Z

    if-eqz v1, :cond_c

    iget-boolean v1, v0, Lcom/estrongs/android/ui/e/co;->m:Z

    if-nez v1, :cond_8

    iget-boolean v1, v0, Lcom/estrongs/android/ui/e/co;->i:Z

    if-nez v1, :cond_8

    iget-boolean v1, v0, Lcom/estrongs/android/ui/e/co;->j:Z

    if-nez v1, :cond_8

    iget-boolean v1, v0, Lcom/estrongs/android/ui/e/co;->k:Z

    if-nez v1, :cond_8

    iget-boolean v1, v0, Lcom/estrongs/android/ui/e/co;->C:Z

    if-eqz v1, :cond_b

    :cond_8
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "rename"

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/e/cp;->b([Ljava/lang/String;)V

    :cond_9
    :goto_1
    iget v1, v0, Lcom/estrongs/android/ui/e/co;->F:I

    if-le v1, v3, :cond_a

    iget-boolean v0, v0, Lcom/estrongs/android/ui/e/co;->D:Z

    if-eqz v0, :cond_a

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "rename"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/cp;->b([Ljava/lang/String;)V

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "adb_app_launch"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/cp;->b([Ljava/lang/String;)V

    :cond_a
    invoke-static {p1}, Lcom/estrongs/android/util/am;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "rename"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/cp;->b([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-boolean v1, v0, Lcom/estrongs/android/ui/e/co;->p:Z

    if-eqz v1, :cond_9

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "image_jump_to"

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/e/cp;->b([Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    iget-boolean v1, v0, Lcom/estrongs/android/ui/e/co;->P:Z

    if-eqz v1, :cond_10

    iget-boolean v1, v0, Lcom/estrongs/android/ui/e/co;->p:Z

    if-eqz v1, :cond_d

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "image_jump_to"

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/e/cp;->b([Ljava/lang/String;)V

    goto :goto_1

    :cond_d
    iget-boolean v1, v0, Lcom/estrongs/android/ui/e/co;->Z:Z

    if-nez v1, :cond_e

    iget-boolean v1, v0, Lcom/estrongs/android/ui/e/co;->Y:Z

    if-eqz v1, :cond_f

    :cond_e
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "copy"

    aput-object v2, v1, v4

    const-string v2, "cut"

    aput-object v2, v1, v3

    const-string v2, "rename"

    aput-object v2, v1, v5

    const-string v2, "extra"

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/e/cp;->b([Ljava/lang/String;)V

    goto :goto_1

    :cond_f
    invoke-static {p1}, Lcom/estrongs/android/util/am;->aW(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "rename"

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/e/cp;->b([Ljava/lang/String;)V

    goto :goto_1

    :cond_10
    iget-boolean v1, v0, Lcom/estrongs/android/ui/e/co;->Q:Z

    if-eqz v1, :cond_9

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "edit_server"

    aput-object v2, v1, v4

    const-string v2, "property"

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/e/cp;->b([Ljava/lang/String;)V

    iget v1, v0, Lcom/estrongs/android/ui/e/co;->F:I

    if-lt v1, v3, :cond_9

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "adb_app_launch"

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/e/cp;->b([Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected h()V
    .locals 60

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    instance-of v3, v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    check-cast v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/estrongs/android/ui/e/cp;->j:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    new-instance v3, Lcom/estrongs/android/view/a/a;

    const v4, 0x7f020298

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    const v6, 0x7f0b0014

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v4, Lcom/estrongs/android/ui/e/ev;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/estrongs/android/ui/e/ev;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual {v3, v4}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/ui/e/eh;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/estrongs/android/ui/e/eh;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual {v3, v4}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/view/a/a;

    const v5, 0x7f020299

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/android/ui/e/cp;->j:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v7, 0x7f0b0015

    invoke-virtual {v6, v7}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v5, Lcom/estrongs/android/ui/e/fs;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/estrongs/android/ui/e/fs;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual {v4, v5}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/ui/e/fh;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/estrongs/android/ui/e/fh;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual {v4, v5}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/view/a/a;

    const v6, 0x7f02029a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    const v8, 0x7f0b0018

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v6, Lcom/estrongs/android/ui/e/gz;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/estrongs/android/ui/e/gz;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual {v5, v6}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/ui/e/gg;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/estrongs/android/ui/e/gg;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual {v5, v6}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/view/a/a;

    const v7, 0x7f0202a2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    const v9, 0x7f0b0017

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v7, Lcom/estrongs/android/ui/e/cy;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/estrongs/android/ui/e/cy;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual {v6, v7}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v6

    new-instance v7, Lcom/estrongs/android/ui/e/cs;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/estrongs/android/ui/e/cs;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual {v6, v7}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v6

    new-instance v7, Lcom/estrongs/android/view/a/a;

    const v8, 0x7f02029c

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    const v10, 0x7f0b0013

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v8, Lcom/estrongs/android/ui/e/db;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/estrongs/android/ui/e/db;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual {v7, v8}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v7

    new-instance v8, Lcom/estrongs/android/ui/e/da;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/estrongs/android/ui/e/da;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual {v7, v8}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v7

    new-instance v8, Lcom/estrongs/android/view/a/a;

    const v9, 0x7f0202a7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    const v11, 0x7f0b001b

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v9, Lcom/estrongs/android/ui/e/df;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/estrongs/android/ui/e/df;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual {v8, v9}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v8

    new-instance v9, Lcom/estrongs/android/ui/e/de;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/estrongs/android/ui/e/de;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual {v8, v9}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v8

    new-instance v9, Lcom/estrongs/android/view/a/a;

    const v10, 0x7f0202ac

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    const v12, 0x7f0b003c

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v10, Lcom/estrongs/android/ui/e/dh;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/estrongs/android/ui/e/dh;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual {v9, v10}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v9

    new-instance v10, Lcom/estrongs/android/ui/e/dg;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/estrongs/android/ui/e/dg;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual {v9, v10}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v9

    new-instance v10, Lcom/estrongs/android/view/a/a;

    const v11, 0x7f020297

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    const v13, 0x7f0b0035

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v11, Lcom/estrongs/android/ui/e/dj;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/estrongs/android/ui/e/dj;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual {v10, v11}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v10

    new-instance v11, Lcom/estrongs/android/ui/e/di;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/estrongs/android/ui/e/di;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual {v10, v11}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v10

    new-instance v11, Lcom/estrongs/android/view/a/a;

    const v12, 0x7f02029e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    const v14, 0x7f0b047e

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v12, Lcom/estrongs/android/ui/e/dn;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/estrongs/android/ui/e/dn;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual {v11, v12}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v11

    new-instance v12, Lcom/estrongs/android/ui/e/dm;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/estrongs/android/ui/e/dm;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual {v11, v12}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v11

    new-instance v12, Lcom/estrongs/android/view/a/a;

    const v13, 0x7f02029b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    const v15, 0x7f0b047f

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v13, Lcom/estrongs/android/ui/e/dp;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/estrongs/android/ui/e/dp;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual {v12, v13}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v12

    new-instance v13, Lcom/estrongs/android/ui/e/do;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/estrongs/android/ui/e/do;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual {v12, v13}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v12

    new-instance v13, Lcom/estrongs/android/view/a/a;

    const v14, 0x7f0202ad

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    const v16, 0x7f0b009d

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v14, Lcom/estrongs/android/ui/e/dr;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/estrongs/android/ui/e/dr;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual {v13, v14}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v13

    new-instance v14, Lcom/estrongs/android/ui/e/dq;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/estrongs/android/ui/e/dq;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual {v13, v14}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v13

    new-instance v14, Lcom/estrongs/android/view/a/a;

    const v15, 0x7f020295

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0b0260

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v15, Lcom/estrongs/android/ui/e/dt;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/estrongs/android/ui/e/dt;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual {v14, v15}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v14

    new-instance v15, Lcom/estrongs/android/ui/e/ds;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/estrongs/android/ui/e/ds;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual {v14, v15}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v14

    new-instance v15, Lcom/estrongs/android/view/a/a;

    const v16, 0x7f0202ae

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0b02b8

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v16, Lcom/estrongs/android/ui/e/dv;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/dv;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v15 .. v16}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v15

    new-instance v16, Lcom/estrongs/android/ui/e/du;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/du;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v15 .. v16}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v15

    new-instance v16, Lcom/estrongs/android/view/a/a;

    const v17, 0x7f0202a6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b02b9

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v17, Lcom/estrongs/android/ui/e/dy;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/dy;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v16 .. v17}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v16

    new-instance v17, Lcom/estrongs/android/ui/e/dx;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/dx;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v16 .. v17}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v16

    new-instance v17, Lcom/estrongs/android/view/a/a;

    const v18, 0x7f0202ab

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0b0022

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v18, Lcom/estrongs/android/ui/e/ea;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ea;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v17 .. v18}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v17

    new-instance v18, Lcom/estrongs/android/ui/e/dz;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/dz;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v17 .. v18}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v17

    new-instance v18, Lcom/estrongs/android/view/a/a;

    const v19, 0x7f0202cb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0b001d

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v19, Lcom/estrongs/android/ui/e/ec;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ec;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v18 .. v19}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v18

    new-instance v19, Lcom/estrongs/android/ui/e/eb;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/eb;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v18 .. v19}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v18

    new-instance v19, Lcom/estrongs/android/view/a/a;

    const v20, 0x7f0202a3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0b0029

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v20, Lcom/estrongs/android/ui/e/ee;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ee;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v19 .. v20}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v19

    new-instance v20, Lcom/estrongs/android/ui/e/ed;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ed;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v19 .. v20}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v19

    new-instance v20, Lcom/estrongs/android/view/a/a;

    const v21, 0x7f0202a4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0b001c

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v21, Lcom/estrongs/android/ui/e/eg;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/eg;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v20 .. v21}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v20

    new-instance v21, Lcom/estrongs/android/ui/e/ef;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ef;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v20 .. v21}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v20

    new-instance v21, Lcom/estrongs/android/view/a/a;

    const v22, 0x7f020295

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0b025f

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v22, Lcom/estrongs/android/ui/e/ej;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ej;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v21 .. v22}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v21

    new-instance v22, Lcom/estrongs/android/ui/e/ei;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ei;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v21 .. v22}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v21

    new-instance v22, Lcom/estrongs/android/view/a/a;

    const v23, 0x7f0202b4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0b0042

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v23, Lcom/estrongs/android/ui/e/el;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/el;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v22 .. v23}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v22

    new-instance v23, Lcom/estrongs/android/ui/e/ek;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ek;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v22 .. v23}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v22

    new-instance v23, Lcom/estrongs/android/view/a/a;

    const v24, 0x7f0202af

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f0b0028

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v23 .. v25}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v24, Lcom/estrongs/android/ui/e/en;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/en;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v23 .. v24}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v23

    new-instance v24, Lcom/estrongs/android/ui/e/em;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/em;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v23 .. v24}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v23

    new-instance v24, Lcom/estrongs/android/view/a/a;

    const v25, 0x7f0202d7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0b028e

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v25, Lcom/estrongs/android/ui/e/eo;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/eo;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v24 .. v25}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v24

    new-instance v25, Lcom/estrongs/android/view/a/a;

    const v26, 0x7f0202a0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x7f0b011c

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v25 .. v27}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v26, Lcom/estrongs/android/ui/e/er;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/er;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v25 .. v26}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v25

    new-instance v26, Lcom/estrongs/android/ui/e/eq;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/eq;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v25 .. v26}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v25

    new-instance v26, Lcom/estrongs/android/view/a/a;

    const v27, 0x7f02029f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    move-object/from16 v28, v0

    const v29, 0x7f0b0027

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v26 .. v28}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v27, Lcom/estrongs/android/ui/e/ew;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ew;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v26 .. v27}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v26

    new-instance v27, Lcom/estrongs/android/ui/e/eu;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/eu;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v26 .. v27}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v26

    new-instance v27, Lcom/estrongs/android/view/a/a;

    const v28, 0x7f020294

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    move-object/from16 v29, v0

    const v30, 0x7f0b0019

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v27 .. v29}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v28, Lcom/estrongs/android/ui/e/ex;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ex;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v27 .. v28}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v27

    new-instance v28, Lcom/estrongs/android/view/a/a;

    const v29, 0x7f020294

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f0b0326

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v29, Lcom/estrongs/android/ui/e/ez;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ez;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v28 .. v29}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v28

    new-instance v29, Lcom/estrongs/android/ui/e/ey;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ey;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v28 .. v29}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v28

    new-instance v29, Lcom/estrongs/android/view/a/a;

    const v30, 0x7f02029c

    const v31, 0x7f0b0032

    invoke-direct/range {v29 .. v31}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v30, Lcom/estrongs/android/ui/e/fc;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/fc;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v29 .. v30}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v29

    new-instance v30, Lcom/estrongs/android/ui/e/fb;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/fb;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v29 .. v30}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v29

    new-instance v30, Lcom/estrongs/android/view/a/a;

    const v31, 0x7f020296

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->j:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-object/from16 v32, v0

    const v33, 0x7f0b0033

    invoke-virtual/range {v32 .. v33}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v30 .. v32}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v31, Lcom/estrongs/android/ui/e/fe;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/fe;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v30 .. v31}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v30

    new-instance v31, Lcom/estrongs/android/ui/e/fd;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/fd;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v30 .. v31}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v30

    new-instance v31, Lcom/estrongs/android/view/a/a;

    const v32, 0x7f0202ac

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->j:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-object/from16 v33, v0

    const v34, 0x7f0b003c

    invoke-virtual/range {v33 .. v34}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v31 .. v33}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v32, Lcom/estrongs/android/ui/e/fg;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/fg;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v31 .. v32}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v31

    new-instance v32, Lcom/estrongs/android/ui/e/ff;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ff;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v31 .. v32}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v31

    new-instance v32, Lcom/estrongs/android/view/a/a;

    const v33, 0x7f0202ad

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->j:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-object/from16 v34, v0

    const v35, 0x7f0b009d

    invoke-virtual/range {v34 .. v35}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v32 .. v34}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v33, Lcom/estrongs/android/ui/e/fj;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/fj;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v32 .. v33}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v32

    new-instance v33, Lcom/estrongs/android/ui/e/fi;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/fi;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v32 .. v33}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v32

    new-instance v33, Lcom/estrongs/android/view/a/a;

    const v34, 0x7f0202a6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->j:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-object/from16 v35, v0

    const v36, 0x7f0b02b9

    invoke-virtual/range {v35 .. v36}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v33 .. v35}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v34, Lcom/estrongs/android/ui/e/fl;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/fl;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v33 .. v34}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v33

    new-instance v34, Lcom/estrongs/android/ui/e/fk;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/fk;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v33 .. v34}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v33

    new-instance v34, Lcom/estrongs/android/view/a/a;

    const v35, 0x7f0202ec

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->j:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-object/from16 v36, v0

    const v37, 0x7f0b0538

    invoke-virtual/range {v36 .. v37}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v34 .. v36}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v35, Lcom/estrongs/android/ui/e/fn;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/fn;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v34 .. v35}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v34

    new-instance v35, Lcom/estrongs/android/ui/e/fm;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/fm;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v34 .. v35}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v34

    new-instance v35, Lcom/estrongs/android/view/a/a;

    const v36, 0x7f020287

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->j:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-object/from16 v37, v0

    const v38, 0x7f0b0539

    invoke-virtual/range {v37 .. v38}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v35 .. v37}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v36, Lcom/estrongs/android/ui/e/fp;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/fp;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v35 .. v36}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v35

    new-instance v36, Lcom/estrongs/android/ui/e/fo;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/fo;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v35 .. v36}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v35

    new-instance v36, Lcom/estrongs/android/view/a/a;

    const v37, 0x7f0202ec

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->j:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-object/from16 v38, v0

    const v39, 0x7f0b0510

    invoke-virtual/range {v38 .. v39}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v36 .. v38}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v37, Lcom/estrongs/android/ui/e/fr;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/fr;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v36 .. v37}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v36

    new-instance v37, Lcom/estrongs/android/ui/e/fq;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/fq;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v36 .. v37}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v36

    new-instance v37, Lcom/estrongs/android/view/a/a;

    const v38, 0x7f0202c6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->j:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-object/from16 v39, v0

    const v40, 0x7f0b0323

    invoke-virtual/range {v39 .. v40}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v37 .. v39}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v38, Lcom/estrongs/android/ui/e/fv;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/fv;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v37 .. v38}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v37

    new-instance v38, Lcom/estrongs/android/ui/e/fu;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/fu;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v37 .. v38}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v37

    new-instance v38, Lcom/estrongs/android/view/a/a;

    const v39, 0x7f0202ce

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->j:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-object/from16 v40, v0

    const v41, 0x7f0b038a

    invoke-virtual/range {v40 .. v41}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v38 .. v40}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v39, Lcom/estrongs/android/ui/e/fw;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/fw;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v38 .. v39}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v38

    new-instance v39, Lcom/estrongs/android/view/a/a;

    const v40, 0x7f02029c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->j:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-object/from16 v41, v0

    const v42, 0x7f0b0013

    invoke-virtual/range {v41 .. v42}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v39 .. v41}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v40, Lcom/estrongs/android/ui/e/fx;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/fx;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v39 .. v40}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v39

    new-instance v40, Lcom/estrongs/android/view/a/a;

    const v41, 0x7f0202a6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->j:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-object/from16 v42, v0

    const v43, 0x7f0b02b9

    invoke-virtual/range {v42 .. v43}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v40 .. v42}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v41, Lcom/estrongs/android/ui/e/gb;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/gb;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v40 .. v41}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v40

    new-instance v41, Lcom/estrongs/android/ui/e/ga;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ga;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v40 .. v41}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v40

    new-instance v41, Lcom/estrongs/android/view/a/a;

    const v42, 0x7f0202b4

    const v43, 0x7f0b0041

    invoke-direct/range {v41 .. v43}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v42, Lcom/estrongs/android/ui/e/gc;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/gc;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v41 .. v42}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v41

    new-instance v42, Lcom/estrongs/android/view/a/a;

    const v43, 0x7f0202a2

    const v44, 0x7f0b02d8

    invoke-direct/range {v42 .. v44}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v43, Lcom/estrongs/android/ui/e/ge;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ge;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v42 .. v43}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v42

    new-instance v43, Lcom/estrongs/android/ui/e/gd;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/gd;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v42 .. v43}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v42

    new-instance v43, Lcom/estrongs/android/view/a/a;

    const v44, 0x7f02002b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->j:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-object/from16 v45, v0

    const v46, 0x7f0b02f4

    invoke-virtual/range {v45 .. v46}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-direct/range {v43 .. v45}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v44, Lcom/estrongs/android/ui/e/gh;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/gh;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v43 .. v44}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v43

    new-instance v44, Lcom/estrongs/android/ui/e/gf;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/gf;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v43 .. v44}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v43

    new-instance v44, Lcom/estrongs/android/view/a/a;

    const v45, 0x7f020294

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->j:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-object/from16 v46, v0

    const v47, 0x7f0b002d

    invoke-virtual/range {v46 .. v47}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v44 .. v46}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v45, Lcom/estrongs/android/ui/e/gj;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/gj;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v44 .. v45}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v44

    new-instance v45, Lcom/estrongs/android/ui/e/gi;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/gi;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v44 .. v45}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v44

    new-instance v45, Lcom/estrongs/android/view/a/a;

    const v46, 0x7f020293

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->j:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-object/from16 v47, v0

    const v48, 0x7f0b001f

    invoke-virtual/range {v47 .. v48}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v45 .. v47}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v46, Lcom/estrongs/android/ui/e/gp;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/gp;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v45 .. v46}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v45

    new-instance v46, Lcom/estrongs/android/ui/e/go;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/go;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v45 .. v46}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v45

    new-instance v46, Lcom/estrongs/android/view/a/a;

    const v47, 0x7f02029c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->j:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-object/from16 v48, v0

    const v49, 0x7f0b0013

    invoke-virtual/range {v48 .. v49}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v46 .. v48}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v47, Lcom/estrongs/android/ui/e/gq;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/gq;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v46 .. v47}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v46

    new-instance v47, Lcom/estrongs/android/view/a/a;

    const v48, 0x7f0202da

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    move-object/from16 v49, v0

    const v50, 0x7f0b050a

    invoke-virtual/range {v49 .. v50}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v47 .. v49}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v48, Lcom/estrongs/android/ui/e/gs;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/gs;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v47 .. v48}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v47

    new-instance v48, Lcom/estrongs/android/ui/e/gr;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/gr;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v47 .. v48}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v47

    new-instance v48, Lcom/estrongs/android/view/a/a;

    const v49, 0x7f0202d0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    move-object/from16 v50, v0

    const v51, 0x7f0b0034

    invoke-virtual/range {v50 .. v51}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v50

    invoke-direct/range {v48 .. v50}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v49, Lcom/estrongs/android/ui/e/gv;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/gv;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v48 .. v49}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v48

    new-instance v49, Lcom/estrongs/android/view/a/a;

    const v50, 0x7f020286

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    move-object/from16 v51, v0

    const v52, 0x7f0b0468

    invoke-virtual/range {v51 .. v52}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v51

    invoke-direct/range {v49 .. v51}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v50, Lcom/estrongs/android/ui/e/ha;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ha;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v49 .. v50}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v49

    new-instance v50, Lcom/estrongs/android/ui/e/gy;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/gy;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v49 .. v50}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v49

    new-instance v50, Lcom/estrongs/android/view/a/a;

    const v51, 0x7f020288

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    move-object/from16 v52, v0

    const v53, 0x7f0b055d

    invoke-virtual/range {v52 .. v53}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v50 .. v52}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v51, Lcom/estrongs/android/ui/e/hc;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/hc;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v50 .. v51}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v50

    new-instance v51, Lcom/estrongs/android/view/a/a;

    const v52, 0x7f020288

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    move-object/from16 v53, v0

    const v54, 0x7f0b04f4

    invoke-virtual/range {v53 .. v54}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v53

    invoke-direct/range {v51 .. v53}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v52, Lcom/estrongs/android/ui/e/he;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/he;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v51 .. v52}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v51

    new-instance v52, Lcom/estrongs/android/ui/e/hd;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/hd;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v51 .. v52}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v51

    new-instance v52, Lcom/estrongs/android/view/a/a;

    const v53, 0x7f0202ac

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    move-object/from16 v54, v0

    const v55, 0x7f0b003c

    invoke-virtual/range {v54 .. v55}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v54

    invoke-direct/range {v52 .. v54}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v53, Lcom/estrongs/android/ui/e/hf;

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/hf;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v52 .. v53}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v52

    new-instance v53, Lcom/estrongs/android/view/a/a;

    const v54, 0x7f02028d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    move-object/from16 v55, v0

    const v56, 0x7f0b04aa

    invoke-virtual/range {v55 .. v56}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v55

    invoke-direct/range {v53 .. v55}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v54, Lcom/estrongs/android/ui/e/hh;

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/hh;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v53 .. v54}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v53

    new-instance v54, Lcom/estrongs/android/ui/e/hg;

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/hg;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v53 .. v54}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v53

    new-instance v54, Lcom/estrongs/android/view/a/a;

    const v55, 0x7f02029c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    move-object/from16 v56, v0

    const v57, 0x7f0b057d

    invoke-virtual/range {v56 .. v57}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v54 .. v56}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v55, Lcom/estrongs/android/ui/e/hj;

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/hj;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v54 .. v55}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v54

    new-instance v55, Lcom/estrongs/android/ui/e/hi;

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/hi;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v54 .. v55}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v54

    new-instance v55, Lcom/estrongs/android/view/a/a;

    const v56, 0x7f02029c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    move-object/from16 v57, v0

    const v58, 0x7f0b0032

    invoke-virtual/range {v57 .. v58}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v55 .. v57}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v56, Lcom/estrongs/android/ui/e/ct;

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ct;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v55 .. v56}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v55

    new-instance v56, Lcom/estrongs/android/ui/e/hk;

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/hk;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v55 .. v56}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v55

    new-instance v56, Lcom/estrongs/android/view/a/a;

    const v57, 0x7f0202a0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    move-object/from16 v58, v0

    const v59, 0x7f0b057e

    invoke-virtual/range {v58 .. v59}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v58

    invoke-direct/range {v56 .. v58}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v57, Lcom/estrongs/android/ui/e/cv;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/cv;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v56 .. v57}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v56

    new-instance v57, Lcom/estrongs/android/ui/e/cu;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/cu;-><init>(Lcom/estrongs/android/ui/e/cp;)V

    invoke-virtual/range {v56 .. v57}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;

    move-result-object v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    move-object/from16 v57, v0

    const-string v58, "pcs_share"

    move-object/from16 v0, v57

    move-object/from16 v1, v58

    move-object/from16 v2, v52

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    move-object/from16 v52, v0

    const-string v57, "pcs_backup"

    move-object/from16 v0, v52

    move-object/from16 v1, v57

    move-object/from16 v2, v51

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    move-object/from16 v51, v0

    const-string v52, "pcs_stop_share"

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    move-object/from16 v2, v47

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    move-object/from16 v51, v0

    const-string v52, "copy"

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v51, "cut"

    move-object/from16 v0, v51

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v5, "add_to_favorite"

    invoke-interface {v3, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v5, "playing"

    move-object/from16 v0, v21

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v5, "add_to_server_list"

    invoke-interface {v3, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v5, "compression"

    invoke-interface {v3, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v5, "encrypt"

    invoke-interface {v3, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v5, "decrypt"

    invoke-interface {v3, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v5, "copy_to"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "delete"

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "edit_server"

    move-object/from16 v0, v28

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "extract_to"

    move-object/from16 v0, v22

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "hide"

    move-object/from16 v0, v26

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "install"

    move-object/from16 v0, v25

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "move_to"

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "open"

    move-object/from16 v0, v23

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "open_as"

    move-object/from16 v0, v19

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "paste"

    move-object/from16 v0, v27

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "play"

    move-object/from16 v0, v20

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "play_to"

    move-object/from16 v0, v18

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "property"

    move-object/from16 v0, v16

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "rename"

    invoke-interface {v3, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "send"

    move-object/from16 v0, v17

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "set_background"

    move-object/from16 v0, v24

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "share"

    invoke-interface {v3, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "stop_share"

    move-object/from16 v0, v47

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "shortcut"

    invoke-interface {v3, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "app_uninstall"

    move-object/from16 v0, v29

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "app_backup"

    move-object/from16 v0, v30

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "app_share"

    move-object/from16 v0, v31

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "app_shortcut"

    move-object/from16 v0, v32

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "app_property"

    move-object/from16 v0, v33

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "app_check_update"

    move-object/from16 v0, v34

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "app_update"

    move-object/from16 v0, v36

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "app_auto_check_update"

    move-object/from16 v0, v35

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "download_open_folder"

    move-object/from16 v0, v37

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "download_delete"

    move-object/from16 v0, v39

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "download_do_again"

    move-object/from16 v0, v38

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "download_property"

    move-object/from16 v0, v40

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "compression_extract"

    move-object/from16 v0, v41

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "image_jump_to"

    move-object/from16 v0, v42

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "image_comment"

    move-object/from16 v0, v43

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "image_edit"

    move-object/from16 v0, v44

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "image_download"

    move-object/from16 v0, v45

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "image_exit_account"

    move-object/from16 v0, v46

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "restore"

    move-object/from16 v0, v48

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "associate_app"

    move-object/from16 v0, v49

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "save_res_to_my_pcs"

    move-object/from16 v0, v50

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "chromecast_play"

    move-object/from16 v0, v53

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "adb_app_launch"

    move-object/from16 v0, v54

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "adb_app_uninstall"

    move-object/from16 v0, v55

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    const-string v4, "adb_app_install_to"

    move-object/from16 v0, v56

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Need FileExplorerActivity as the first argument"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/view/a/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cp;->k:Ljava/util/Map;

    return-object v0
.end method

.method protected k()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/cp;->n()V

    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cp;->j:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/e/cp;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
