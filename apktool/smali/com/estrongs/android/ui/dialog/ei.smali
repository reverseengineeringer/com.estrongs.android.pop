.class Lcom/estrongs/android/ui/dialog/ei;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ee;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ee;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ei;->a:Lcom/estrongs/android/ui/dialog/ee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ei;->a:Lcom/estrongs/android/ui/dialog/ee;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ee;->a(Lcom/estrongs/android/ui/dialog/ee;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ei;->a:Lcom/estrongs/android/ui/dialog/ee;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ee;->b(Lcom/estrongs/android/ui/dialog/ee;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/a;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ei;->a:Lcom/estrongs/android/ui/dialog/ee;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ee;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ei;->a:Lcom/estrongs/android/ui/dialog/ee;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ee;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ei;->a:Lcom/estrongs/android/ui/dialog/ee;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ee;->c(Lcom/estrongs/android/ui/dialog/ee;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ei;->a:Lcom/estrongs/android/ui/dialog/ee;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ee;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    const-string v1, ""

    instance-of v1, v0, Lcom/estrongs/fs/impl/c/b;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/a;->a()Lcom/estrongs/android/pop/app/analysis/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/app/analysis/a;->a(Ljava/lang/String;Lcom/estrongs/android/pop/app/analysis/y;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ei;->a:Lcom/estrongs/android/ui/dialog/ee;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ee;->d(Lcom/estrongs/android/ui/dialog/ee;)Lcom/estrongs/fs/b/ao;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ei;->a:Lcom/estrongs/android/ui/dialog/ee;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ee;->d(Lcom/estrongs/android/ui/dialog/ee;)Lcom/estrongs/fs/b/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ao;->b()Lcom/estrongs/fs/b/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ei;->a:Lcom/estrongs/android/ui/dialog/ee;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/ee;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ei;->a:Lcom/estrongs/android/ui/dialog/ee;

    new-instance v2, Lcom/estrongs/android/pop/app/diskusage/a;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/ei;->a:Lcom/estrongs/android/ui/dialog/ee;

    invoke-static {v3}, Lcom/estrongs/android/ui/dialog/ee;->e(Lcom/estrongs/android/ui/dialog/ee;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/estrongs/android/pop/app/diskusage/a;-><init>(Landroid/content/Context;Lcom/estrongs/fs/b/ap;)V

    iput-object v2, v1, Lcom/estrongs/android/ui/dialog/ee;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    :cond_4
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ei;->a:Lcom/estrongs/android/ui/dialog/ee;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/ee;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/diskusage/a;->b(Lcom/estrongs/fs/b/ap;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ei;->a:Lcom/estrongs/android/ui/dialog/ee;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ee;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/a;->show()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ei;->a:Lcom/estrongs/android/ui/dialog/ee;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ee;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ei;->a:Lcom/estrongs/android/ui/dialog/ee;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ee;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/a;->a()V

    goto :goto_1
.end method
