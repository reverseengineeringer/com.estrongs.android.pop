.class Lcom/estrongs/android/ui/dialog/jg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/jf;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/jf;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/jg;->a:Lcom/estrongs/android/ui/dialog/jf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jg;->a:Lcom/estrongs/android/ui/dialog/jf;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jf;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jg;->a:Lcom/estrongs/android/ui/dialog/jf;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jf;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "clean://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Ljava/lang/String;)Lcom/estrongs/android/view/cr;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jg;->a:Lcom/estrongs/android/ui/dialog/jf;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/jf;->mContext:Landroid/content/Context;

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

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jg;->a:Lcom/estrongs/android/ui/dialog/jf;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/jf;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jg;->a:Lcom/estrongs/android/ui/dialog/jf;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jf;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
