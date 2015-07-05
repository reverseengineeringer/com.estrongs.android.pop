.class Lcom/estrongs/android/view/bj;
.super Lcom/estrongs/android/d/k;


# instance fields
.field final synthetic d:Lcom/estrongs/android/view/aw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bj;->d:Lcom/estrongs/android/view/aw;

    invoke-direct {p0}, Lcom/estrongs/android/d/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/android/d/m;)Z
    .locals 2

    iget-object v0, p1, Lcom/estrongs/android/d/m;->c:Lcom/estrongs/fs/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/bj;->d:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/android/d/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/estrongs/android/d/m;->b:I

    iget-object v1, p0, Lcom/estrongs/android/view/bj;->d:Lcom/estrongs/android/view/aw;

    iget v1, v1, Lcom/estrongs/android/view/aw;->Q:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/estrongs/android/d/m;->b:I

    iget-object v1, p0, Lcom/estrongs/android/view/bj;->d:Lcom/estrongs/android/view/aw;

    iget v1, v1, Lcom/estrongs/android/view/aw;->R:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/estrongs/android/d/m;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/bj;->a(Lcom/estrongs/android/d/m;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p1, Lcom/estrongs/android/d/m;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/d/m;->e:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/bj;->d:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->T:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/view/bk;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/view/bk;-><init>(Lcom/estrongs/android/view/bj;Lcom/estrongs/android/d/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v1, p1, Lcom/estrongs/android/d/m;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/estrongs/android/d/m;->d:Lcom/estrongs/fs/h;

    invoke-static {v1}, Lcom/estrongs/android/d/f;->f(Lcom/estrongs/fs/h;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/estrongs/android/d/m;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/d/f;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method
