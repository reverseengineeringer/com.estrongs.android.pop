.class Lcom/estrongs/android/pop/view/cz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z()Ljava/lang/String;

    move-result-object v3

    instance-of v0, v2, Lcom/estrongs/android/pop/app/diskusage/h;

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {v2, v0}, Lcom/estrongs/android/view/aw;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    iput-object v0, v4, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t:Lcom/estrongs/fs/h;

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t:Lcom/estrongs/fs/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v2}, Lcom/estrongs/android/view/aw;->z()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lcom/estrongs/android/view/aw;->w()Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v4, v4, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t:Lcom/estrongs/fs/h;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    sget-boolean v4, Lcom/estrongs/android/pop/z;->v:Z

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/estrongs/android/util/am;->bg(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/estrongs/android/util/am;->aO(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/estrongs/android/util/am;->aG(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/estrongs/android/util/am;->T(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/estrongs/android/util/am;->r(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/estrongs/android/util/am;->aQ(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/estrongs/android/util/am;->ae(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/estrongs/android/util/am;->bP(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragLayer;

    move-result-object v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    :cond_4
    iget-object v4, p0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/d;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/pop/view/da;

    invoke-direct {v5, p0, v3}, Lcom/estrongs/android/pop/view/da;-><init>(Lcom/estrongs/android/pop/view/cz;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/estrongs/android/ui/drag/d;->a(Lcom/estrongs/android/ui/drag/g;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/ui/drag/d;->b()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v3, v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f:Lcom/estrongs/android/widget/ThumbContentViewSwitcher;

    iget-object v4, p0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v4, v4, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t:Lcom/estrongs/fs/h;

    invoke-virtual {v3, v4, v2, v0}, Lcom/estrongs/android/widget/ThumbContentViewSwitcher;->a(Lcom/estrongs/fs/h;Lcom/estrongs/android/view/aw;Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2, p3}, Lcom/estrongs/android/view/aw;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    iput-object v0, v4, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t:Lcom/estrongs/fs/h;

    goto/16 :goto_1

    :cond_6
    iget-object v4, p0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v4, v4, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k:Lcom/estrongs/android/ui/e/w;

    iget-object v5, p0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/estrongs/android/ui/e/w;->b(Z)V

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    iget-object v4, p0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v4, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Z)V

    iget-object v4, p0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v4, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)Z

    goto/16 :goto_2
.end method
