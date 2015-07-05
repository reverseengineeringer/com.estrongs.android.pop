.class Lcom/estrongs/android/ui/e/id;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/esclasses/o;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/ic;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/ic;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/id;->a:Lcom/estrongs/android/ui/e/ic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/id;->a:Lcom/estrongs/android/ui/e/ic;

    iget-boolean v0, v0, Lcom/estrongs/android/ui/e/ic;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/id;->a:Lcom/estrongs/android/ui/e/ic;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/ic;->a(Lcom/estrongs/android/ui/e/ic;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/id;->a:Lcom/estrongs/android/ui/e/ic;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/ic;->b(Lcom/estrongs/android/ui/e/ic;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/id;->a:Lcom/estrongs/android/ui/e/ic;

    iget-boolean v0, v0, Lcom/estrongs/android/ui/e/ic;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/id;->a:Lcom/estrongs/android/ui/e/ic;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/ic;->a(Lcom/estrongs/android/ui/e/ic;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/id;->a:Lcom/estrongs/android/ui/e/ic;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/ic;->b(Lcom/estrongs/android/ui/e/ic;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/id;->a:Lcom/estrongs/android/ui/e/ic;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/ic;->c(Lcom/estrongs/android/ui/e/ic;)Lcom/estrongs/android/pop/esclasses/ESScrollView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/id;->a:Lcom/estrongs/android/ui/e/ic;

    iget-boolean v0, v0, Lcom/estrongs/android/ui/e/ic;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/id;->a:Lcom/estrongs/android/ui/e/ic;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/ic;->a(Lcom/estrongs/android/ui/e/ic;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/id;->a:Lcom/estrongs/android/ui/e/ic;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/ic;->b(Lcom/estrongs/android/ui/e/ic;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
