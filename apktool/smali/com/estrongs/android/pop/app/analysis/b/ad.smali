.class public Lcom/estrongs/android/pop/app/analysis/b/ad;
.super Lcom/estrongs/android/pop/app/analysis/b/v;


# instance fields
.field private r:Lcom/estrongs/android/pop/app/analysis/b/af;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/analysis/b/g;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    new-instance v3, Lcom/estrongs/android/pop/app/analysis/b/ae;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/analysis/b/ae;-><init>(Lcom/estrongs/android/pop/app/analysis/b/ad;)V

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/estrongs/android/pop/app/analysis/b/ae;->a:Z

    iput-object v0, v3, Lcom/estrongs/android/pop/app/analysis/b/ae;->b:Lcom/estrongs/fs/h;

    iput p3, v3, Lcom/estrongs/android/pop/app/analysis/b/ae;->d:I

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ad;->e:Ljava/lang/String;

    const-string v2, "duplicate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_2
    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/analysis/b/ad;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/analysis/b/g;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/ad;->e()V

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/b/g;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/ad;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->c(Lcom/estrongs/android/pop/app/analysis/b/g;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v2, v0, -0x1

    add-int/lit8 v3, v0, 0x1

    if-ltz v2, :cond_1

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/b/ad;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v4, v2}, Lcom/estrongs/android/pop/app/analysis/a/i;->notifyItemChanged(I)V

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/ad;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->notifyItemRemoved(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ad;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->getItemCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ad;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/analysis/a/i;->notifyItemChanged(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ad;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->d()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/ad;->v()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ad;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/b/ad;->a(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/ad;->h()V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected d()V
    .locals 2

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/b/af;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/ad;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/analysis/b/af;-><init>(Lcom/estrongs/android/pop/app/analysis/b/ad;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ad;->r:Lcom/estrongs/android/pop/app/analysis/b/af;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ad;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/ad;->r:Lcom/estrongs/android/pop/app/analysis/b/af;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method protected r()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ad;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/ad;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/ad;->g:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/pop/app/analysis/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ad;->y:Lcom/estrongs/android/a/b/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ad;->y:Lcom/estrongs/android/a/b/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ad;->x:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ad;->y:Lcom/estrongs/android/a/b/a;

    instance-of v0, v0, Lcom/estrongs/android/a/b/u;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ad;->y:Lcom/estrongs/android/a/b/a;

    check-cast v0, Lcom/estrongs/android/a/b/u;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/u;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v0, v2, v1}, Lcom/estrongs/android/pop/app/analysis/b/ad;->a(Ljava/util/List;Ljava/util/List;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iput-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/ad;->x:Ljava/util/List;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ad;->y:Lcom/estrongs/android/a/b/a;

    instance-of v0, v0, Lcom/estrongs/android/a/b/m;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ad;->y:Lcom/estrongs/android/a/b/a;

    check-cast v0, Lcom/estrongs/android/a/b/m;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/m;->e()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, v0, v2, v1}, Lcom/estrongs/android/pop/app/analysis/b/ad;->a(Ljava/util/List;Ljava/util/List;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iput-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/ad;->x:Ljava/util/List;

    goto :goto_0

    :cond_6
    invoke-super {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->r()V

    goto :goto_0
.end method

.method public w()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
