.class Lcom/estrongs/android/ui/e/b;
.super Landroid/widget/LinearLayout;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/b;->a:Lcom/estrongs/android/ui/e/a;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/ui/e/b;->a:Lcom/estrongs/android/ui/e/a;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/a;->a(Lcom/estrongs/android/ui/e/a;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/e/b;->a:Lcom/estrongs/android/ui/e/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/e/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/e/b;->a:Lcom/estrongs/android/ui/e/a;

    iget-boolean v1, v1, Lcom/estrongs/android/ui/e/a;->d:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/b;->a:Lcom/estrongs/android/ui/e/a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/e/a;->a(Lcom/estrongs/android/ui/e/a;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/e/b;->a:Lcom/estrongs/android/ui/e/a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/e/a;->b(Lcom/estrongs/android/ui/e/a;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/e/b;->a:Lcom/estrongs/android/ui/e/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/e/a;->a(Lcom/estrongs/android/ui/e/a;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/b;->a:Lcom/estrongs/android/ui/e/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/a;->b(Lcom/estrongs/android/ui/e/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/b;->a:Lcom/estrongs/android/ui/e/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/a;->b(Lcom/estrongs/android/ui/e/a;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/e/b;->a:Lcom/estrongs/android/ui/e/a;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/a;->c(Lcom/estrongs/android/ui/e/a;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/ui/e/b;->a:Lcom/estrongs/android/ui/e/a;

    invoke-static {v3}, Lcom/estrongs/android/ui/e/a;->d(Lcom/estrongs/android/ui/e/a;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v3, v2, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/ui/e/b;->a:Lcom/estrongs/android/ui/e/a;

    invoke-static {v3}, Lcom/estrongs/android/ui/e/a;->e(Lcom/estrongs/android/ui/e/a;)I

    move-result v3

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/ui/e/b;->a:Lcom/estrongs/android/ui/e/a;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/a;->b(Lcom/estrongs/android/ui/e/a;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/e/b;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    if-gez v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/ui/e/b;->a:Lcom/estrongs/android/ui/e/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/e/a;->c()V

    :goto_2
    iget-object v1, p0, Lcom/estrongs/android/ui/e/b;->a:Lcom/estrongs/android/ui/e/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/e/a;->a(Lcom/estrongs/android/ui/e/a;Z)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/estrongs/android/ui/e/b;->a:Lcom/estrongs/android/ui/e/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/e/a;->d()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method
