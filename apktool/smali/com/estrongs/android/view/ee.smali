.class public Lcom/estrongs/android/view/ee;
.super Lcom/estrongs/android/view/ck;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/estrongs/android/view/cg",
        "<",
        "Lcom/estrongs/fs/h;",
        ">.com/estrongs/android/view/ck<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/eb;


# direct methods
.method protected constructor <init>(Lcom/estrongs/android/view/eb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ee;->a:Lcom/estrongs/android/view/eb;

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/ck;-><init>(Lcom/estrongs/android/view/cg;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/estrongs/android/view/ci;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-ne p2, v4, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/ee;->a:Lcom/estrongs/android/view/eb;

    iget-object v0, v0, Lcom/estrongs/android/view/eb;->aj:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/estrongs/android/view/ee;->a:Lcom/estrongs/android/view/eb;

    invoke-virtual {v2}, Lcom/estrongs/android/view/eb;->x()I

    move-result v2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/view/ee;->c:Lcom/estrongs/android/view/cn;

    invoke-interface {v2, v0}, Lcom/estrongs/android/view/cn;->b(Landroid/view/View;)Lcom/estrongs/android/view/ci;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/eq;

    iput p2, v0, Lcom/estrongs/android/view/eq;->a:I

    :goto_0
    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ee;->a:Lcom/estrongs/android/view/eb;

    iget-object v0, v0, Lcom/estrongs/android/view/eb;->aj:Landroid/view/LayoutInflater;

    const v2, 0x7f0300e8

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/view/ee;->c:Lcom/estrongs/android/view/cn;

    invoke-interface {v0, v1}, Lcom/estrongs/android/view/cn;->b(Landroid/view/View;)Lcom/estrongs/android/view/ci;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/eq;

    iput p2, v0, Lcom/estrongs/android/view/eq;->a:I

    iput-boolean v4, v0, Lcom/estrongs/android/view/eq;->b:Z

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/ee;->a:Lcom/estrongs/android/view/eb;

    iget-object v0, v0, Lcom/estrongs/android/view/eb;->aj:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/estrongs/android/view/ee;->a:Lcom/estrongs/android/view/eb;

    invoke-virtual {v2}, Lcom/estrongs/android/view/eb;->y()I

    move-result v2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/view/ee;->c:Lcom/estrongs/android/view/cn;

    invoke-interface {v2, v0}, Lcom/estrongs/android/view/cn;->b(Landroid/view/View;)Lcom/estrongs/android/view/ci;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/eq;

    iput p2, v0, Lcom/estrongs/android/view/eq;->a:I

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/view/ci;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/view/ck;->a(Lcom/estrongs/android/view/ci;I)V

    iget-object v0, p1, Lcom/estrongs/android/view/ci;->itemView:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/view/ef;

    invoke-direct {v1, p0, p2, p1}, Lcom/estrongs/android/view/ef;-><init>(Lcom/estrongs/android/view/ee;ILcom/estrongs/android/view/ci;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ee;->a:Lcom/estrongs/android/view/eb;

    invoke-virtual {v0}, Lcom/estrongs/android/view/eb;->d()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/ee;->a:Lcom/estrongs/android/view/eb;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/eb;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    sget-object v1, Lcom/estrongs/fs/w;->K:Lcom/estrongs/fs/w;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/estrongs/android/view/ci;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/view/ee;->a(Lcom/estrongs/android/view/ci;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/view/ee;->a(Landroid/view/ViewGroup;I)Lcom/estrongs/android/view/ci;

    move-result-object v0

    return-object v0
.end method
