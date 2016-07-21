.class Lcom/estrongs/android/ui/dialog/jy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/jh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/jh;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/jy;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v2, 0x190

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jy;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->p(Lcom/estrongs/android/ui/dialog/jh;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jy;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/jh;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jy;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jy;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->l(Lcom/estrongs/android/ui/dialog/jh;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jy;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/jh;->d()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jy;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jy;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->l(Lcom/estrongs/android/ui/dialog/jh;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jy;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/estrongs/a/a;->waitingDecision:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jy;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->k(Lcom/estrongs/android/ui/dialog/jh;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jy;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/jh;->d()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jy;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jy;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->k(Lcom/estrongs/android/ui/dialog/jh;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jy;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->o(Lcom/estrongs/android/ui/dialog/jh;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jy;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->o(Lcom/estrongs/android/ui/dialog/jh;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jy;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0
.end method
