.class Lcom/estrongs/android/pop/app/analysis/view/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/view/i;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/view/p;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/p;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->f(Lcom/estrongs/android/pop/app/analysis/view/i;)Lcom/estrongs/android/pop/app/analysis/view/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/p;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->f(Lcom/estrongs/android/pop/app/analysis/view/i;)Lcom/estrongs/android/pop/app/analysis/view/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/analysis/view/r;->c()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
