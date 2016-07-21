.class Lcom/estrongs/android/ui/dialog/gs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/gn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/gn;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/gs;->a:Lcom/estrongs/android/ui/dialog/gn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gs;->a:Lcom/estrongs/android/ui/dialog/gn;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gn;->a(Lcom/estrongs/android/ui/dialog/gn;)Lcom/estrongs/android/ui/dialog/gu;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gs;->a:Lcom/estrongs/android/ui/dialog/gn;

    new-instance v1, Lcom/estrongs/android/ui/dialog/ProgressDialog;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/gs;->a:Lcom/estrongs/android/ui/dialog/gn;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/gn;->e(Lcom/estrongs/android/ui/dialog/gn;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/estrongs/android/ui/dialog/gn;->a:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gs;->a:Lcom/estrongs/android/ui/dialog/gn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/gn;->a:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gs;->a:Lcom/estrongs/android/ui/dialog/gn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/gn;->a:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    sget-object v1, Lcom/estrongs/android/ui/dialog/ProgressDialog$ProgressStyle;->roll:Lcom/estrongs/android/ui/dialog/ProgressDialog$ProgressStyle;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->a(Lcom/estrongs/android/ui/dialog/ProgressDialog$ProgressStyle;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gs;->a:Lcom/estrongs/android/ui/dialog/gn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/gn;->a:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gs;->a:Lcom/estrongs/android/ui/dialog/gn;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/gn;->e(Lcom/estrongs/android/ui/dialog/gn;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0805b6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gs;->a:Lcom/estrongs/android/ui/dialog/gn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/gn;->a:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gs;->a:Lcom/estrongs/android/ui/dialog/gn;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/gn;->e(Lcom/estrongs/android/ui/dialog/gn;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0803c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gs;->a:Lcom/estrongs/android/ui/dialog/gn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/gn;->a:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->show()V

    :cond_0
    return-void
.end method
