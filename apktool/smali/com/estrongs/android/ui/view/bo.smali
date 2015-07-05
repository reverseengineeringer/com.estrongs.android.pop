.class Lcom/estrongs/android/ui/view/bo;
.super Landroid/widget/LinearLayout;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/bn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/bn;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/bo;->a:Lcom/estrongs/android/ui/view/bn;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bo;->a:Lcom/estrongs/android/ui/view/bn;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/bn;->b()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
