.class Lcom/estrongs/android/ui/dialog/el;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ek;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ek;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/el;->a:Lcom/estrongs/android/ui/dialog/ek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/el;->a:Lcom/estrongs/android/ui/dialog/ek;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ek;->a()Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
