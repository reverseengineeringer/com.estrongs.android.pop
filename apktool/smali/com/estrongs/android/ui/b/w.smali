.class Lcom/estrongs/android/ui/b/w;
.super Lcom/estrongs/android/widget/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/estrongs/android/widget/c",
        "<",
        "Lcom/estrongs/fs/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/u;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/u;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/w;->a:Lcom/estrongs/android/ui/b/u;

    invoke-direct {p0}, Lcom/estrongs/android/widget/c;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/w;->a:Lcom/estrongs/android/ui/b/u;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/b/u;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    const-string v1, "task"

    invoke-interface {v0, v1}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a;

    if-nez p2, :cond_1

    new-instance v1, Lcom/estrongs/android/ui/b/f;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/w;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v2}, Lcom/estrongs/android/ui/b/u;->f(Lcom/estrongs/android/ui/b/u;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/android/ui/b/f;-><init>(Landroid/content/Context;Lcom/estrongs/a/a;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/f;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/w;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/u;->g(Lcom/estrongs/android/ui/b/u;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/w;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/u;->h(Lcom/estrongs/android/ui/b/u;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/b/f;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/w;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/u;->i(Lcom/estrongs/android/ui/b/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/w;->a:Lcom/estrongs/android/ui/b/u;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/b/u;->h(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/b/f;->a(Z)V

    :cond_0
    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/f;->b()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/b/f;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/f;->c()V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/b/f;->a(Lcom/estrongs/a/a;)V

    goto :goto_0
.end method
