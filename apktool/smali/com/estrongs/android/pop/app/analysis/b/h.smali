.class public abstract Lcom/estrongs/android/pop/app/analysis/b/h;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field private a:Lcom/estrongs/android/pop/app/analysis/b/j;

.field protected q:Lcom/estrongs/android/ui/theme/at;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected abstract a(Landroid/view/View;)V
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected b(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/h;->q()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/view/a/a;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected abstract c()V
.end method

.method protected o()Landroid/content/Intent;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/h;->c()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/h;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/h;->a:Lcom/estrongs/android/pop/app/analysis/b/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/h;->a:Lcom/estrongs/android/pop/app/analysis/b/j;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/b/j;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/h;->a:Lcom/estrongs/android/pop/app/analysis/b/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/b/j;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/h;->a:Lcom/estrongs/android/pop/app/analysis/b/j;

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/h;->p()Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/analysis/b/h;->a(Landroid/view/View;)V

    return-void
.end method

.method protected p()Lcom/estrongs/android/ui/theme/at;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/h;->q:Lcom/estrongs/android/ui/theme/at;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/h;->q:Lcom/estrongs/android/ui/theme/at;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/h;->q:Lcom/estrongs/android/ui/theme/at;

    return-object v0
.end method

.method protected q()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected r()V
    .locals 0

    return-void
.end method

.method protected s()V
    .locals 0

    return-void
.end method

.method protected t()V
    .locals 2

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/b/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/analysis/b/j;-><init>(Lcom/estrongs/android/pop/app/analysis/b/h;Lcom/estrongs/android/pop/app/analysis/b/i;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/h;->a:Lcom/estrongs/android/pop/app/analysis/b/j;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/h;->a:Lcom/estrongs/android/pop/app/analysis/b/j;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/b/j;->a()V

    return-void
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
