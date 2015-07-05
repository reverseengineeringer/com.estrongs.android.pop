.class Lcom/estrongs/android/ui/view/bz;
.super Lcom/estrongs/android/widget/a;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/view/by;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/by;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/bz;->b:Lcom/estrongs/android/ui/view/by;

    iput-object p2, p0, Lcom/estrongs/android/ui/view/bz;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/android/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bz;->b:Lcom/estrongs/android/ui/view/by;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/by;->a(Lcom/estrongs/android/ui/view/by;)Lcom/estrongs/android/ui/view/ca;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bz;->b:Lcom/estrongs/android/ui/view/by;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/by;->a(Lcom/estrongs/android/ui/view/by;)Lcom/estrongs/android/ui/view/ca;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/ui/view/ca;->b()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bz;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bz;->b:Lcom/estrongs/android/ui/view/by;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/by;->b(Lcom/estrongs/android/ui/view/by;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bz;->b:Lcom/estrongs/android/ui/view/by;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/by;->c(Lcom/estrongs/android/ui/view/by;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bz;->b:Lcom/estrongs/android/ui/view/by;

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/view/by;->a(Lcom/estrongs/android/ui/view/by;Z)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bz;->b:Lcom/estrongs/android/ui/view/by;

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/view/by;->a(Lcom/estrongs/android/ui/view/by;Z)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/view/bz;->b:Lcom/estrongs/android/ui/view/by;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bz;->b:Lcom/estrongs/android/ui/view/by;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/by;->d(Lcom/estrongs/android/ui/view/by;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/view/bz;->b:Lcom/estrongs/android/ui/view/by;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/by;->b(Lcom/estrongs/android/ui/view/by;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/e/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/a;->a()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/view/by;->a(Lcom/estrongs/android/ui/view/by;Landroid/view/View;)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bz;->b:Lcom/estrongs/android/ui/view/by;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/by;->a(Lcom/estrongs/android/ui/view/by;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bz;->b:Lcom/estrongs/android/ui/view/by;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/by;->a(Lcom/estrongs/android/ui/view/by;)Lcom/estrongs/android/ui/view/ca;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bz;->b:Lcom/estrongs/android/ui/view/by;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/by;->a(Lcom/estrongs/android/ui/view/by;)Lcom/estrongs/android/ui/view/ca;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/ui/view/ca;->a()V

    :cond_0
    return-void
.end method
