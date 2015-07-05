.class final Lcom/estrongs/android/pop/utils/bj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/o;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/ao;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/estrongs/fs/h;

.field final synthetic d:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/ao;Landroid/app/Activity;Lcom/estrongs/fs/h;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/bj;->a:Lcom/estrongs/fs/b/ao;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/bj;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/bj;->c:Lcom/estrongs/fs/h;

    iput-object p4, p0, Lcom/estrongs/android/pop/utils/bj;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bj;->a:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ao;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bj;->a:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ao;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bj;->a:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ao;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/estrongs/fs/a/b;->h(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "item_count"

    invoke-interface {v0, v3}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/aj;->b(Lcom/estrongs/fs/h;)I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Lcom/estrongs/fs/b/ab;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/bj;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-direct {v0, v1, v2, v4}, Lcom/estrongs/fs/b/ab;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;Z)V

    invoke-virtual {v0, v4}, Lcom/estrongs/fs/b/ab;->execute(Z)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bj;->c:Lcom/estrongs/fs/h;

    const-string v1, "child_count"

    invoke-interface {v0, v1}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bj;->c:Lcom/estrongs/fs/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/aj;->a(Lcom/estrongs/fs/h;)I

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bj;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/a/b;->h(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "child_count"

    invoke-interface {v0, v1}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/aj;->a(Lcom/estrongs/fs/h;)I

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bj;->c:Lcom/estrongs/fs/h;

    const-string v1, "item_count"

    invoke-interface {v0, v1}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bj;->c:Lcom/estrongs/fs/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/aj;->b(Lcom/estrongs/fs/h;)I

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bj;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bj;->b:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->aO(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/bj;->b:Landroid/app/Activity;

    new-instance v2, Lcom/estrongs/android/pop/utils/bk;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/utils/bk;-><init>(Lcom/estrongs/android/pop/utils/bj;Lcom/estrongs/android/view/aw;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/utils/bj;->a()V

    return-void
.end method
