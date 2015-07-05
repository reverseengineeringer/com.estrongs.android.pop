.class Lcom/estrongs/android/pop/view/dv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/dv;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dv;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, p3}, Lcom/estrongs/android/view/aw;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    instance-of v0, v1, Lcom/estrongs/android/pop/spfs/CreateSiteFileObject;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/android/ui/dialog/fq;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dv;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/fq;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/fq;->show()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-interface {v1}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dv;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/estrongs/android/view/cd;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/estrongs/android/view/cd;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cd;->a(Lcom/estrongs/fs/h;)V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aG(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->as(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/dv;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-class v3, Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/dv;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Landroid/content/Intent;Lcom/estrongs/fs/h;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dv;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/view/dv;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method
