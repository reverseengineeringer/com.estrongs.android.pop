.class public Lcom/estrongs/android/view/fv;
.super Lcom/estrongs/android/view/cr;


# instance fields
.field a:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/cr;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/fv;->a:Z

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/android/view/ci;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/view/fv;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/estrongs/android/view/fv;->P()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/fv;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/view/ci;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/estrongs/android/view/ci;->l:Landroid/widget/CheckBox;

    new-instance v1, Lcom/estrongs/android/view/fw;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/view/fw;-><init>(Lcom/estrongs/android/view/fv;I)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/estrongs/android/view/ci;Landroid/view/View;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/android/view/fv;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/fv;->j:Lcom/estrongs/android/view/co;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/fv;->j:Lcom/estrongs/android/view/co;

    iget-object v1, p0, Lcom/estrongs/android/view/fv;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p1, Lcom/estrongs/android/view/ci;->itemView:Landroid/view/View;

    invoke-interface {v0, v1, v2, p3}, Lcom/estrongs/android/view/co;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/android/view/ci;Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/view/fv;->K()V

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/estrongs/android/view/fv;->a:Z

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/fv;->a(Z)V

    :cond_0
    return-void
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/fv;->a:Z

    return v0
.end method
