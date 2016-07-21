.class Lcom/estrongs/android/view/gb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/fy;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/fy;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/gb;->a:Lcom/estrongs/android/view/fy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/16 v2, 0x8

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/gb;->a:Lcom/estrongs/android/view/fy;

    invoke-static {v0}, Lcom/estrongs/android/view/fy;->b(Lcom/estrongs/android/view/fy;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lt v0, v2, :cond_5

    :try_start_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_1
    if-nez v0, :cond_0

    :try_start_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/gb;->a:Lcom/estrongs/android/view/fy;

    iget-object v0, v0, Lcom/estrongs/android/view/fy;->b:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/estrongs/android/view/gb;->a:Lcom/estrongs/android/view/fy;

    invoke-static {v2}, Lcom/estrongs/android/view/fy;->a(Lcom/estrongs/android/view/fy;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/estrongs/android/view/gb;->a:Lcom/estrongs/android/view/fy;

    invoke-static {v2}, Lcom/estrongs/android/view/fy;->a(Lcom/estrongs/android/view/fy;)Landroid/view/View;

    move-result-object v2

    if-eq p1, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/gb;->a:Lcom/estrongs/android/view/fy;

    invoke-static {v0}, Lcom/estrongs/android/view/fy;->c(Lcom/estrongs/android/view/fy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/view/gb;->a:Lcom/estrongs/android/view/fy;

    iget-object v2, v2, Lcom/estrongs/android/view/fy;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/gb;->a:Lcom/estrongs/android/view/fy;

    invoke-static {v0}, Lcom/estrongs/android/view/fy;->a(Lcom/estrongs/android/view/fy;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/gb;->a:Lcom/estrongs/android/view/fy;

    invoke-static {v0}, Lcom/estrongs/android/view/fy;->d(Lcom/estrongs/android/view/fy;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/gb;->a:Lcom/estrongs/android/view/fy;

    invoke-static {v0}, Lcom/estrongs/android/view/fy;->e(Lcom/estrongs/android/view/fy;)Lcom/estrongs/android/view/VideoEnabledWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/view/gb;->a:Lcom/estrongs/android/view/fy;

    invoke-static {v2}, Lcom/estrongs/android/view/fy;->d(Lcom/estrongs/android/view/fy;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/view/fy;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/gb;->a:Lcom/estrongs/android/view/fy;

    invoke-static {v0}, Lcom/estrongs/android/view/fy;->a(Lcom/estrongs/android/view/fy;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/view/gb;->a:Lcom/estrongs/android/view/fy;

    invoke-static {v0}, Lcom/estrongs/android/view/fy;->a(Lcom/estrongs/android/view/fy;)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/view/gb;->a:Lcom/estrongs/android/view/fy;

    invoke-static {v0}, Lcom/estrongs/android/view/fy;->a(Lcom/estrongs/android/view/fy;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/gb;->a:Lcom/estrongs/android/view/fy;

    invoke-static {v0}, Lcom/estrongs/android/view/fy;->c(Lcom/estrongs/android/view/fy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/view/gb;->a:Lcom/estrongs/android/view/fy;

    iget-object v2, v2, Lcom/estrongs/android/view/fy;->a:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto/16 :goto_1
.end method
