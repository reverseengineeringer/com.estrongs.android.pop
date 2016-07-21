.class Lcom/estrongs/android/view/fk;
.super Lcom/estrongs/android/view/cr;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/eu;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/view/eu;Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/fk;->a:Lcom/estrongs/android/view/eu;

    invoke-direct {p0, p2, p3, p4}, Lcom/estrongs/android/view/cr;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V

    return-void
.end method


# virtual methods
.method protected T()Landroid/support/v7/widget/GridLayoutManager;
    .locals 3

    new-instance v0, Lcom/estrongs/android/view/ea;

    iget-object v1, p0, Lcom/estrongs/android/view/fk;->ag:Landroid/app/Activity;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/ea;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public Y()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/fk;->a:Lcom/estrongs/android/view/eu;

    invoke-virtual {v0}, Lcom/estrongs/android/view/eu;->Y()Z

    move-result v0

    return v0
.end method

.method protected a()I
    .locals 1

    const v0, 0x7f030074

    return v0
.end method

.method public aC()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public f(I)V
    .locals 0

    return-void
.end method

.method protected n()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->n()V

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/estrongs/android/view/cr;->e(Ljava/lang/String;)V

    return-void
.end method
