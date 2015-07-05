.class Lcom/estrongs/android/ui/e/je;
.super Landroid/widget/LinearLayout;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/jc;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/jc;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/je;->a:Lcom/estrongs/android/ui/e/jc;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/je;->a:Lcom/estrongs/android/ui/e/jc;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/jc;->b(Lcom/estrongs/android/ui/e/jc;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/e/je;->a:Lcom/estrongs/android/ui/e/jc;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/jc;->a(Lcom/estrongs/android/ui/e/jc;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/e/je;->a:Lcom/estrongs/android/ui/e/jc;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/jc;->c(Lcom/estrongs/android/ui/e/jc;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/e/je;->a:Lcom/estrongs/android/ui/e/jc;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/jc;->b(Lcom/estrongs/android/ui/e/jc;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/e/je;->a:Lcom/estrongs/android/ui/e/jc;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/jc;->a(Lcom/estrongs/android/ui/e/jc;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
