.class Lcom/estrongs/android/ui/dialog/gp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/gk;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/gk;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/gp;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gp;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gk;->a(Lcom/estrongs/android/ui/dialog/gk;)Lcom/estrongs/android/ui/dialog/gr;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gp;->a:Lcom/estrongs/android/ui/dialog/gk;

    new-instance v1, Lcom/estrongs/android/ui/dialog/ProgressDialog;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/gp;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/gk;->e(Lcom/estrongs/android/ui/dialog/gk;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/estrongs/android/ui/dialog/gk;->a:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gp;->a:Lcom/estrongs/android/ui/dialog/gk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/gk;->a:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gp;->a:Lcom/estrongs/android/ui/dialog/gk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/gk;->a:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    sget-object v1, Lcom/estrongs/android/ui/dialog/ProgressDialog$ProgressStyle;->roll:Lcom/estrongs/android/ui/dialog/ProgressDialog$ProgressStyle;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->a(Lcom/estrongs/android/ui/dialog/ProgressDialog$ProgressStyle;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gp;->a:Lcom/estrongs/android/ui/dialog/gk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/gk;->a:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gp;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/gk;->e(Lcom/estrongs/android/ui/dialog/gk;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0072

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gp;->a:Lcom/estrongs/android/ui/dialog/gk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/gk;->a:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gp;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/gk;->e(Lcom/estrongs/android/ui/dialog/gk;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b04b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gp;->a:Lcom/estrongs/android/ui/dialog/gk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/gk;->a:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->show()V

    :cond_0
    return-void
.end method
