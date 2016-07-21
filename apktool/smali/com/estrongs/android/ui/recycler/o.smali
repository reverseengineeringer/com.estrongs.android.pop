.class Lcom/estrongs/android/ui/recycler/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/estrongs/android/ui/recycler/n;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/recycler/n;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/recycler/o;->b:Lcom/estrongs/android/ui/recycler/n;

    iput-object p2, p0, Lcom/estrongs/android/ui/recycler/o;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/estrongs/android/ui/recycler/y;

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/o;->b:Lcom/estrongs/android/ui/recycler/n;

    iget-object v1, v5, Lcom/estrongs/android/ui/recycler/y;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v2, v5, Lcom/estrongs/android/ui/recycler/y;->b:I

    iget v3, v5, Lcom/estrongs/android/ui/recycler/y;->c:I

    iget v4, v5, Lcom/estrongs/android/ui/recycler/y;->d:I

    iget v5, v5, Lcom/estrongs/android/ui/recycler/y;->e:I

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/ui/recycler/n;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/o;->b:Lcom/estrongs/android/ui/recycler/n;

    invoke-static {v0}, Lcom/estrongs/android/ui/recycler/n;->a(Lcom/estrongs/android/ui/recycler/n;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/recycler/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
