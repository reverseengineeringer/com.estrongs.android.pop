.class Lcom/flurry/sdk/gs$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/gt$a;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gs;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gs;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gs$4;->a:Lcom/flurry/sdk/gs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gs$4;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->l(Lcom/flurry/sdk/gs;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gs$4;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->d(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/gh;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gs$4;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v0}, Lcom/flurry/sdk/gs;->isViewAttachedToActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$4;->a:Lcom/flurry/sdk/gs;

    iget-object v1, p0, Lcom/flurry/sdk/gs$4;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->d(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/gh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gs;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$4;->a:Lcom/flurry/sdk/gs;

    iget-object v1, p0, Lcom/flurry/sdk/gs$4;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->d(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/gh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gs;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gs$4;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->d(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gh;->cleanupLayout()V

    iget-object v0, p0, Lcom/flurry/sdk/gs$4;->a:Lcom/flurry/sdk/gs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/gs;Lcom/flurry/sdk/gh;)Lcom/flurry/sdk/gh;

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gs$4;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->l(Lcom/flurry/sdk/gs;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gs$4;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->d(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/gh;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gs$4;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v0}, Lcom/flurry/sdk/gs;->isViewAttachedToActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$4;->a:Lcom/flurry/sdk/gs;

    iget-object v1, p0, Lcom/flurry/sdk/gs$4;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->d(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/gh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gs;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$4;->a:Lcom/flurry/sdk/gs;

    iget-object v1, p0, Lcom/flurry/sdk/gs$4;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->d(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/gh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gs;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gs$4;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->d(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gh;->cleanupLayout()V

    iget-object v0, p0, Lcom/flurry/sdk/gs$4;->a:Lcom/flurry/sdk/gs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/gs;Lcom/flurry/sdk/gh;)Lcom/flurry/sdk/gh;

    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gs$4;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->l(Lcom/flurry/sdk/gs;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$4;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->d(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/gh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$4;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->d(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gh;->cleanupLayout()V

    iget-object v0, p0, Lcom/flurry/sdk/gs$4;->a:Lcom/flurry/sdk/gs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/gs;Lcom/flurry/sdk/gh;)Lcom/flurry/sdk/gh;

    :cond_0
    return-void
.end method
