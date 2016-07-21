.class Lcom/estrongs/android/widget/ak;
.super Lcom/estrongs/android/view/eb;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/aj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/aj;Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/ak;->a:Lcom/estrongs/android/widget/aj;

    invoke-direct {p0, p2, p3, p4}, Lcom/estrongs/android/view/eb;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lcom/estrongs/android/widget/ak;->p:I

    iget-object v1, p0, Lcom/estrongs/android/widget/ak;->ag:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/ak;->g:Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/ak;->g:Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    goto :goto_1
.end method

.method public a_(Ljava/util/List;)V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    instance-of v3, v0, Lcom/estrongs/android/pop/spfs/CreateSiteFileObject;

    if-eqz v3, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->aV(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->aA(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->aE(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/ui/pcs/u;->b()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/estrongs/android/widget/ak;->t:Lcom/estrongs/android/ui/drag/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/widget/ak;->i:Lcom/estrongs/android/view/ck;

    iget-object v1, p0, Lcom/estrongs/android/widget/ak;->t:Lcom/estrongs/android/ui/drag/d;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ck;->a(Lcom/estrongs/android/ui/drag/d;)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/widget/ak;->i:Lcom/estrongs/android/view/ck;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/ck;->a(Ljava/util/List;)V

    return-void
.end method

.method protected x()I
    .locals 1

    const v0, 0x7f0300eb

    return v0
.end method

.method protected y()I
    .locals 1

    const v0, 0x7f0300ea

    return v0
.end method
