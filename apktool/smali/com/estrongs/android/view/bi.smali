.class public Lcom/estrongs/android/view/bi;
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
.field final synthetic a:Lcom/estrongs/android/view/ak;


# direct methods
.method protected constructor <init>(Lcom/estrongs/android/view/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bi;->a:Lcom/estrongs/android/view/ak;

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/ck;-><init>(Lcom/estrongs/android/view/cg;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/estrongs/android/view/ci;
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/view/bi;->a:Lcom/estrongs/android/view/ak;

    iget-object v0, v0, Lcom/estrongs/android/view/ak;->aj:Landroid/view/LayoutInflater;

    const v1, 0x7f030070

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/bi;->c:Lcom/estrongs/android/view/cn;

    invoke-interface {v1, v0}, Lcom/estrongs/android/view/cn;->b(Landroid/view/View;)Lcom/estrongs/android/view/ci;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/bl;

    return-object v0
.end method

.method public a(Lcom/estrongs/android/view/ci;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/view/ck;->a(Lcom/estrongs/android/view/ci;I)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/bi;->a:Lcom/estrongs/android/view/ak;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ak;->d()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/estrongs/android/view/ci;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/view/bi;->a(Lcom/estrongs/android/view/ci;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/view/bi;->a(Landroid/view/ViewGroup;I)Lcom/estrongs/android/view/ci;

    move-result-object v0

    return-object v0
.end method
