.class Lcom/estrongs/android/view/aw;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/ak;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/aw;->a:Lcom/estrongs/android/view/ak;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->a:Lcom/estrongs/android/view/ak;

    iget-object v0, v0, Lcom/estrongs/android/view/ak;->i:Lcom/estrongs/android/view/ck;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ck;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->a:Lcom/estrongs/android/view/ak;

    iget-boolean v0, v0, Lcom/estrongs/android/view/ak;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->a:Lcom/estrongs/android/view/ak;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ak;->n_()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->a:Lcom/estrongs/android/view/ak;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ak;->U()V

    goto :goto_0
.end method
