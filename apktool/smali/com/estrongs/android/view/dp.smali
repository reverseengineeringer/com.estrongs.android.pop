.class public Lcom/estrongs/android/view/dp;
.super Lcom/estrongs/android/view/aw;


# instance fields
.field a:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/aw;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/dp;->a:Z

    iget-object v0, p0, Lcom/estrongs/android/view/dp;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/HeaderGridView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/dp;->g:Lcom/estrongs/android/widget/HeaderGridView;

    new-instance v2, Lcom/estrongs/android/view/dq;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/view/dq;-><init>(Lcom/estrongs/android/view/dp;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/widget/HeaderGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/android/widget/e;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/view/dp;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/estrongs/android/view/dp;->B()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/dp;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/widget/e;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/estrongs/android/widget/e;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/view/dr;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/view/dr;-><init>(Lcom/estrongs/android/view/dp;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/view/dp;->v()V

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/estrongs/android/view/dp;->a:Z

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/dp;->a(Z)V

    :cond_0
    return-void
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/dp;->a:Z

    return v0
.end method
