.class Lcom/estrongs/android/widget/at;
.super Lcom/estrongs/android/view/eb;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/ap;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/ap;Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/at;->a:Lcom/estrongs/android/widget/ap;

    invoke-direct {p0, p2, p3, p4}, Lcom/estrongs/android/view/eb;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lcom/estrongs/android/widget/at;->p:I

    iget-object v1, p0, Lcom/estrongs/android/widget/at;->ag:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/at;->g:Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/at;->g:Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    goto :goto_1
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
