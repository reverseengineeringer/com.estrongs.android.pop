.class Lcom/estrongs/android/ui/e/dr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/dq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/dr;->a:Lcom/estrongs/android/ui/e/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/dialog/ci;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/dr;->a:Lcom/estrongs/android/ui/e/dq;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/dq;->a:Lcom/estrongs/android/ui/e/dp;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/dp;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/e/dr;->a:Lcom/estrongs/android/ui/e/dq;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/dq;->a:Lcom/estrongs/android/ui/e/dp;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/dp;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    const v2, 0x7f080310

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/e/dr;->a:Lcom/estrongs/android/ui/e/dq;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/dq;->a:Lcom/estrongs/android/ui/e/dp;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/dp;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    const v2, 0x7f08030f

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/e/dr;->a:Lcom/estrongs/android/ui/e/dq;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/dq;->a:Lcom/estrongs/android/ui/e/dp;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/dp;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    const v2, 0x7f080221

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/e/ds;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/e/ds;-><init>(Lcom/estrongs/android/ui/e/dr;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ci;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/dr;->a:Lcom/estrongs/android/ui/e/dq;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/dq;->a:Lcom/estrongs/android/ui/e/dp;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/dp;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    const v2, 0x7f08030e

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/e/dt;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/e/dt;-><init>(Lcom/estrongs/android/ui/e/dr;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ci;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    return-void
.end method
