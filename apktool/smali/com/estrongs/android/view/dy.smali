.class public Lcom/estrongs/android/view/dy;
.super Lcom/estrongs/android/view/cr;

# interfaces
.implements Lcom/estrongs/android/pop/app/finder/e;


# instance fields
.field private a:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/cr;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f0300bd

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected i()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->i()V

    invoke-static {}, Lcom/estrongs/android/pop/app/finder/a;->a()Lcom/estrongs/android/pop/app/finder/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/finder/a;->a(Lcom/estrongs/android/pop/app/finder/e;)V

    const v0, 0x7f0e03c5

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/dy;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/view/dy;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/view/dy;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/view/dz;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/dz;-><init>(Lcom/estrongs/android/view/dy;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public i_()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->i_()V

    invoke-static {}, Lcom/estrongs/android/pop/app/finder/a;->a()Lcom/estrongs/android/pop/app/finder/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/a;->i()V

    return-void
.end method

.method public j_()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->j_()V

    return-void
.end method

.method public l()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->l()V

    return-void
.end method

.method public o_()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/dy;->b(Z)V

    return-void
.end method
