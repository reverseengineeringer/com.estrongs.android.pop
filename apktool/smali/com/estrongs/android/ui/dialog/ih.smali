.class Lcom/estrongs/android/ui/dialog/ih;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/hq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ih;->a:Lcom/estrongs/android/ui/dialog/hq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ih;->a:Lcom/estrongs/android/ui/dialog/hq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hq;->b(Lcom/estrongs/android/ui/dialog/hq;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ih;->a:Lcom/estrongs/android/ui/dialog/hq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hq;->c(Lcom/estrongs/android/ui/dialog/hq;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ih;->a:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hq;->j:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ih;->a:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hq;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ih;->a:Lcom/estrongs/android/ui/dialog/hq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hq;->d(Lcom/estrongs/android/ui/dialog/hq;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B()V

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/a;->a()Lcom/estrongs/android/pop/app/analysis/a;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ih;->a:Lcom/estrongs/android/ui/dialog/hq;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/hq;->a(Lcom/estrongs/android/ui/dialog/hq;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/a;->a(Ljava/lang/String;Lcom/estrongs/android/pop/app/analysis/y;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ih;->a:Lcom/estrongs/android/ui/dialog/hq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hq;->e(Lcom/estrongs/android/ui/dialog/hq;)Lcom/estrongs/fs/b/ao;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ih;->a:Lcom/estrongs/android/ui/dialog/hq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hq;->e(Lcom/estrongs/android/ui/dialog/hq;)Lcom/estrongs/fs/b/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ao;->b()Lcom/estrongs/fs/b/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ih;->a:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/hq;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ih;->a:Lcom/estrongs/android/ui/dialog/hq;

    new-instance v2, Lcom/estrongs/android/pop/app/diskusage/a;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/ih;->a:Lcom/estrongs/android/ui/dialog/hq;

    invoke-virtual {v3}, Lcom/estrongs/android/ui/dialog/hq;->aF()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/estrongs/android/pop/app/diskusage/a;-><init>(Landroid/content/Context;Lcom/estrongs/fs/b/ap;)V

    iput-object v2, v1, Lcom/estrongs/android/ui/dialog/hq;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    :cond_3
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ih;->a:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/hq;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/diskusage/a;->b(Lcom/estrongs/fs/b/ap;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ih;->a:Lcom/estrongs/android/ui/dialog/hq;

    iget-boolean v0, v0, Lcom/estrongs/android/ui/dialog/hq;->m:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ih;->a:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hq;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ih;->a:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hq;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/a;->show()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ih;->a:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hq;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ih;->a:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hq;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/a;->a()V

    goto :goto_0
.end method
