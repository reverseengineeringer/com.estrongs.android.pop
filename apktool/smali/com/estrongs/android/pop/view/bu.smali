.class Lcom/estrongs/android/pop/view/bu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/cp;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IZ)Z
    .locals 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2, p3}, Lcom/estrongs/android/view/cr;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    iput-object v0, v4, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r:Lcom/estrongs/fs/h;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r:Lcom/estrongs/fs/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v2}, Lcom/estrongs/android/view/cr;->N()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lcom/estrongs/android/view/cr;->o()Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v4, v4, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r:Lcom/estrongs/fs/h;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    :cond_2
    move v0, v1

    :cond_3
    :goto_1
    sget-boolean v4, Lcom/estrongs/android/pop/z;->v:Z

    if-nez v4, :cond_0

    if-nez p4, :cond_0

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->br(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->t(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->ba(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->ao(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->cg(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragLayer;

    move-result-object v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    :cond_4
    iget-object v4, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/d;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/pop/view/bv;

    invoke-direct {v5, p0, v3}, Lcom/estrongs/android/pop/view/bv;-><init>(Lcom/estrongs/android/pop/view/bu;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/estrongs/android/ui/drag/d;->a(Lcom/estrongs/android/ui/drag/g;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/ui/drag/d;->b()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v3, v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Lcom/estrongs/android/widget/ThumbContentViewSwitcher;

    iget-object v4, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v4, v4, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r:Lcom/estrongs/fs/h;

    invoke-virtual {v3, v4, v2, v0}, Lcom/estrongs/android/widget/ThumbContentViewSwitcher;->a(Lcom/estrongs/fs/h;Lcom/estrongs/android/view/cr;Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->p()V

    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    iget-object v4, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v4, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Z)V

    iget-object v4, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v4, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)Z

    goto/16 :goto_1
.end method
