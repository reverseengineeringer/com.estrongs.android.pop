.class Lcom/estrongs/android/ui/e/ix;
.super Landroid/widget/LinearLayout;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/iw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/iw;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ix;->a:Lcom/estrongs/android/ui/e/iw;

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

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ix;->a:Lcom/estrongs/android/ui/e/iw;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/e/iw;->d()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ix;->a:Lcom/estrongs/android/ui/e/iw;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/iw;->a(Lcom/estrongs/android/ui/e/iw;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ix;->a:Lcom/estrongs/android/ui/e/iw;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/e/iw;->d()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
