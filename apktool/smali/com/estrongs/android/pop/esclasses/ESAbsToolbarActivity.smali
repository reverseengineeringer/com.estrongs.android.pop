.class public abstract Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field protected a:Z

.field protected b:Z

.field public c:Z

.field d:Lcom/estrongs/android/pop/app/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->b:Z

    new-instance v0, Lcom/estrongs/android/pop/esclasses/a;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/esclasses/a;-><init>(Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->d:Lcom/estrongs/android/pop/app/a;

    return-void
.end method


# virtual methods
.method protected abstract a()Landroid/view/View;
.end method

.method protected a(Lcom/estrongs/android/view/aw;)V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->d:Lcom/estrongs/android/pop/app/a;

    invoke-virtual {p1, v0}, Lcom/estrongs/android/view/aw;->a(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->b:Z

    return-void
.end method

.method protected abstract b()Landroid/view/View;
.end method

.method public b(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->a:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->a:Z

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->c(Z)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected abstract c(Z)V
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->b:Z

    return v0
.end method

.method protected d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->a:Z

    return v0
.end method

.method protected abstract e()Z
.end method

.method protected f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract g()V
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onPause()V

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/ad;->e(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->t()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->a:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->a:Z

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->b(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
