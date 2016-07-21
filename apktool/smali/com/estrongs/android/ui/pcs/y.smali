.class public Lcom/estrongs/android/ui/pcs/y;
.super Lcom/estrongs/android/ui/dialog/ci;

# interfaces
.implements Lcom/estrongs/android/ui/view/ax;


# instance fields
.field protected a:Z

.field protected b:Lcom/estrongs/android/ui/pcs/q;

.field c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/ci;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/y;->a:Z

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/pcs/y;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/pcs/q;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/y;->b:Lcom/estrongs/android/ui/pcs/q;

    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/y;->c:Landroid/view/View;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/y;->a:Z

    return v0
.end method

.method public dismiss()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requestInputMethod()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/y;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/y;->mContentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/dialog/ci;->setContentView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/y;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/y;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
