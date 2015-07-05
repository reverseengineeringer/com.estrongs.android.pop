.class Lcom/estrongs/android/ui/dialog/jd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/jc;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/jc;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/jd;->a:Lcom/estrongs/android/ui/dialog/jc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string v0, "http://0.esfileexplorer.duapp.com/notify/1t"

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jd;->a:Lcom/estrongs/android/ui/dialog/jc;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jc;->a:Lcom/estrongs/android/ui/dialog/ja;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ja;->a:Lcom/estrongs/android/ui/dialog/ix;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
