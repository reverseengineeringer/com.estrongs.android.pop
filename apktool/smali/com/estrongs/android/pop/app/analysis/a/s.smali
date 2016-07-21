.class Lcom/estrongs/android/pop/app/analysis/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/a/v;

.field final synthetic b:Lcom/estrongs/android/pop/app/analysis/a/o;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/a/o;Lcom/estrongs/android/pop/app/analysis/a/v;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a/s;->b:Lcom/estrongs/android/pop/app/analysis/a/o;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/a/s;->a:Lcom/estrongs/android/pop/app/analysis/a/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/s;->a:Lcom/estrongs/android/pop/app/analysis/a/v;

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/a/x;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/s;->b:Lcom/estrongs/android/pop/app/analysis/a/o;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/a/o;->g(Lcom/estrongs/android/pop/app/analysis/a/o;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/s;->b:Lcom/estrongs/android/pop/app/analysis/a/o;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/analysis/a/o;->a(Lcom/estrongs/android/pop/app/analysis/a/o;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/estrongs/android/pop/app/analysis/a/x;->b:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/s;->b:Lcom/estrongs/android/pop/app/analysis/a/o;

    invoke-static {v2, v0}, Lcom/estrongs/android/pop/app/analysis/a/o;->a(Lcom/estrongs/android/pop/app/analysis/a/o;Lcom/estrongs/android/pop/app/analysis/a/x;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/s;->b:Lcom/estrongs/android/pop/app/analysis/a/o;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/analysis/a/o;->e(Lcom/estrongs/android/pop/app/analysis/a/o;)Lcom/estrongs/android/pop/app/analysis/a/y;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/s;->b:Lcom/estrongs/android/pop/app/analysis/a/o;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/analysis/a/o;->e(Lcom/estrongs/android/pop/app/analysis/a/o;)Lcom/estrongs/android/pop/app/analysis/a/y;

    move-result-object v2

    iget-object v3, v0, Lcom/estrongs/android/pop/app/analysis/a/x;->c:Ljava/lang/Object;

    invoke-interface {v2, v1, v0, v3}, Lcom/estrongs/android/pop/app/analysis/a/y;->a(ILcom/estrongs/android/pop/app/analysis/a/v;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/s;->b:Lcom/estrongs/android/pop/app/analysis/a/o;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a/o;->c(Lcom/estrongs/android/pop/app/analysis/a/o;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/s;->b:Lcom/estrongs/android/pop/app/analysis/a/o;

    invoke-static {v2, v0}, Lcom/estrongs/android/pop/app/analysis/a/o;->b(Lcom/estrongs/android/pop/app/analysis/a/o;Lcom/estrongs/android/pop/app/analysis/a/x;)V

    goto :goto_0
.end method
