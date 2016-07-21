.class Lcom/estrongs/android/ui/b/aa;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/u;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/u;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/aa;->a:Lcom/estrongs/android/ui/b/u;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aa;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/u;->n(Lcom/estrongs/android/ui/b/u;)Lcom/estrongs/android/view/ck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/ck;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aa;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/u;->o(Lcom/estrongs/android/ui/b/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aa;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/u;->p(Lcom/estrongs/android/ui/b/u;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/aa;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/u;->q(Lcom/estrongs/android/ui/b/u;)V

    goto :goto_0
.end method
