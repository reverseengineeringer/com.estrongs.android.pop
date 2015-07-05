.class Lcom/estrongs/android/view/dw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/dt;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/dt;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/dw;->a:Lcom/estrongs/android/view/dt;

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

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/dw;->a:Lcom/estrongs/android/view/dt;

    invoke-static {v0}, Lcom/estrongs/android/view/dt;->a(Lcom/estrongs/android/view/dt;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_5

    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/dw;->a:Lcom/estrongs/android/view/dt;

    invoke-static {v0}, Lcom/estrongs/android/view/dt;->b(Lcom/estrongs/android/view/dt;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/view/dw;->a:Lcom/estrongs/android/view/dt;

    iget-object v2, v2, Lcom/estrongs/android/view/dt;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    iget-boolean v2, v2, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->b:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->b:Z

    iget-object v2, p0, Lcom/estrongs/android/view/dw;->a:Lcom/estrongs/android/view/dt;

    invoke-static {v2}, Lcom/estrongs/android/view/dt;->b(Lcom/estrongs/android/view/dt;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/view/dw;->a:Lcom/estrongs/android/view/dt;

    iget-object v3, v3, Lcom/estrongs/android/view/dt;->a:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_2
    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->postInvalidate()V

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->b(FF)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    iput-boolean v1, v2, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->b:Z

    iget-object v2, p0, Lcom/estrongs/android/view/dw;->a:Lcom/estrongs/android/view/dt;

    invoke-static {v2}, Lcom/estrongs/android/view/dt;->c(Lcom/estrongs/android/view/dt;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/view/dw;->a:Lcom/estrongs/android/view/dt;

    invoke-static {v2}, Lcom/estrongs/android/view/dt;->d(Lcom/estrongs/android/view/dt;)Lcom/estrongs/android/view/VideoEnabledWebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/view/VideoEnabledWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/view/dw;->a:Lcom/estrongs/android/view/dt;

    invoke-static {v3}, Lcom/estrongs/android/view/dt;->c(Lcom/estrongs/android/view/dt;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/view/dt;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    iput-boolean v1, v2, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->b:Z

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1
.end method
