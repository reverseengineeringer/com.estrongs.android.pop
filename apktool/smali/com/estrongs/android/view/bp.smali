.class Lcom/estrongs/android/view/bp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/bo;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bp;->a:Lcom/estrongs/android/view/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->a:Lcom/estrongs/android/view/bo;

    iget-object v0, v0, Lcom/estrongs/android/view/bo;->c:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->a:Lcom/estrongs/android/view/bo;

    iget-object v0, v0, Lcom/estrongs/android/view/bo;->c:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/bp;->a:Lcom/estrongs/android/view/bo;

    iget-object v0, v0, Lcom/estrongs/android/view/bo;->ag:Landroid/app/Activity;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->a:Lcom/estrongs/android/view/bo;

    iget-object v0, v0, Lcom/estrongs/android/view/bo;->ag:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "clean://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Ljava/lang/String;)Lcom/estrongs/android/view/cr;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/view/bp;->a:Lcom/estrongs/android/view/bo;

    iget-object v1, v1, Lcom/estrongs/android/view/bo;->ag:Landroid/app/Activity;

    const-class v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "clean://"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/view/bp;->a:Lcom/estrongs/android/view/bo;

    iget-object v1, v1, Lcom/estrongs/android/view/bo;->ag:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->a:Lcom/estrongs/android/view/bo;

    iget-object v0, v0, Lcom/estrongs/android/view/bo;->ag:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
