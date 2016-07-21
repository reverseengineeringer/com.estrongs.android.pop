.class Lcom/estrongs/android/pop/app/analysis/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/a/x;

.field final synthetic b:I

.field final synthetic c:Lcom/estrongs/android/pop/app/analysis/a/o;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/a/o;Lcom/estrongs/android/pop/app/analysis/a/x;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a/p;->c:Lcom/estrongs/android/pop/app/analysis/a/o;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/a/p;->a:Lcom/estrongs/android/pop/app/analysis/a/x;

    iput p3, p0, Lcom/estrongs/android/pop/app/analysis/a/p;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/p;->c:Lcom/estrongs/android/pop/app/analysis/a/o;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a/o;->a(Lcom/estrongs/android/pop/app/analysis/a/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/p;->a:Lcom/estrongs/android/pop/app/analysis/a/x;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/app/analysis/a/x;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/p;->c:Lcom/estrongs/android/pop/app/analysis/a/o;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/p;->a:Lcom/estrongs/android/pop/app/analysis/a/x;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/analysis/a/o;->a(Lcom/estrongs/android/pop/app/analysis/a/o;Lcom/estrongs/android/pop/app/analysis/a/x;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/p;->c:Lcom/estrongs/android/pop/app/analysis/a/o;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a/o;->b(Lcom/estrongs/android/pop/app/analysis/a/o;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/p;->c:Lcom/estrongs/android/pop/app/analysis/a/o;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a/o;->c(Lcom/estrongs/android/pop/app/analysis/a/o;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/p;->c:Lcom/estrongs/android/pop/app/analysis/a/o;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a/o;->d(Lcom/estrongs/android/pop/app/analysis/a/o;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/p;->c:Lcom/estrongs/android/pop/app/analysis/a/o;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a/o;->e(Lcom/estrongs/android/pop/app/analysis/a/o;)Lcom/estrongs/android/pop/app/analysis/a/y;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/p;->c:Lcom/estrongs/android/pop/app/analysis/a/o;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a/o;->e(Lcom/estrongs/android/pop/app/analysis/a/o;)Lcom/estrongs/android/pop/app/analysis/a/y;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/a/p;->b:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/p;->a:Lcom/estrongs/android/pop/app/analysis/a/x;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/a/p;->a:Lcom/estrongs/android/pop/app/analysis/a/x;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/analysis/a/x;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/analysis/a/y;->a(ILcom/estrongs/android/pop/app/analysis/a/v;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/p;->c:Lcom/estrongs/android/pop/app/analysis/a/o;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/p;->a:Lcom/estrongs/android/pop/app/analysis/a/x;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/analysis/a/o;->b(Lcom/estrongs/android/pop/app/analysis/a/o;Lcom/estrongs/android/pop/app/analysis/a/x;)V

    goto :goto_0
.end method
