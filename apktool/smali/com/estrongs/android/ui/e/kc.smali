.class Lcom/estrongs/android/ui/e/kc;
.super Landroid/widget/LinearLayout;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/ka;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/ka;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/kc;->a:Lcom/estrongs/android/ui/e/ka;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kc;->a:Lcom/estrongs/android/ui/e/ka;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/e/ka;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
