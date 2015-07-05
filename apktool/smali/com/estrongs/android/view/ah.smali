.class Lcom/estrongs/android/view/ah;
.super Lcom/estrongs/android/d/k;


# instance fields
.field d:I

.field final synthetic e:Lcom/estrongs/android/view/ac;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ac;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/view/ah;->e:Lcom/estrongs/android/view/ac;

    invoke-direct {p0, p2}, Lcom/estrongs/android/d/k;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/view/ah;->d:I

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/android/d/m;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/estrongs/android/d/m;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/ah;->a(Lcom/estrongs/android/d/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/view/ah;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/view/ah;->d:I

    iget-object v0, p0, Lcom/estrongs/android/view/ah;->e:Lcom/estrongs/android/view/ac;

    iget-object v0, v0, Lcom/estrongs/android/view/ac;->ad:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/view/ai;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/view/ai;-><init>(Lcom/estrongs/android/view/ah;Lcom/estrongs/android/d/m;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean v0, p1, Lcom/estrongs/android/d/m;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/estrongs/android/d/m;->c:Lcom/estrongs/fs/h;

    invoke-static {v0}, Lcom/estrongs/android/d/f;->f(Lcom/estrongs/fs/h;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/d/m;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/d/f;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    :cond_1
    iget v0, p0, Lcom/estrongs/android/view/ah;->d:I

    iget-object v1, p0, Lcom/estrongs/android/view/ah;->e:Lcom/estrongs/android/view/ac;

    iget-object v1, v1, Lcom/estrongs/android/view/ac;->i:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/view/ah;->c()V

    iget-object v0, p0, Lcom/estrongs/android/view/ah;->e:Lcom/estrongs/android/view/ac;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/estrongs/android/view/ac;->f:Lcom/estrongs/android/d/k;

    :cond_2
    return v2
.end method
