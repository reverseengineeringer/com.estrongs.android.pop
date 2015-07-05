.class Lcom/estrongs/android/widget/aj;
.super Lcom/estrongs/android/view/cd;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/ai;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/ai;Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/aj;->a:Lcom/estrongs/android/widget/ai;

    invoke-direct {p0, p2, p3, p4}, Lcom/estrongs/android/view/cd;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lcom/estrongs/android/widget/aj;->k:I

    iget-object v1, p0, Lcom/estrongs/android/widget/aj;->ad:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->g:Lcom/estrongs/android/widget/HeaderGridView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setNumColumns(I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->g:Lcom/estrongs/android/widget/HeaderGridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setNumColumns(I)V

    goto :goto_1
.end method

.method protected an()I
    .locals 1

    const v0, 0x7f03007c

    return v0
.end method

.method protected ao()I
    .locals 1

    const v0, 0x7f03007b

    return v0
.end method

.method public b(Ljava/util/List;)V
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

    invoke-static {v3}, Lcom/estrongs/android/util/am;->aL(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/am;->aq(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/am;->au(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/ui/pcs/r;->b()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->o:Lcom/estrongs/android/ui/drag/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->f:Lcom/estrongs/android/widget/c;

    iget-object v1, p0, Lcom/estrongs/android/widget/aj;->o:Lcom/estrongs/android/ui/drag/d;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/c;->a(Lcom/estrongs/android/ui/drag/d;)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->f:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/widget/c;->a(Ljava/util/List;)V

    return-void
.end method
