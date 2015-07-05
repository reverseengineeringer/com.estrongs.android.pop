.class Lcom/estrongs/android/view/eh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/view/eg;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/eg;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/eh;->b:Lcom/estrongs/android/view/eg;

    iput-object p2, p0, Lcom/estrongs/android/view/eh;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    if-nez p2, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/view/eh;->b:Lcom/estrongs/android/view/eg;

    iget-object v1, v1, Lcom/estrongs/android/view/eg;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v1, v1, Lcom/estrongs/android/view/WebViewWrapper;->ad:Landroid/app/Activity;

    const-class v2, Lcom/estrongs/android/pop/app/DownloaderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/view/eh;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/view/eh;->b:Lcom/estrongs/android/view/eg;

    iget-object v1, v1, Lcom/estrongs/android/view/eg;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v1, v1, Lcom/estrongs/android/view/WebViewWrapper;->ad:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/eh;->b:Lcom/estrongs/android/view/eg;

    iget-object v0, v0, Lcom/estrongs/android/view/eg;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v0, v0, Lcom/estrongs/android/view/WebViewWrapper;->ad:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/view/eh;->a:Ljava/lang/String;

    const-string v2, "image/*"

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/utils/aj;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/WebImgSw_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/eh;->b:Lcom/estrongs/android/view/eg;

    iget-object v1, v1, Lcom/estrongs/android/view/eg;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v1, v1, Lcom/estrongs/android/view/WebViewWrapper;->ad:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/view/eh;->a:Ljava/lang/String;

    new-instance v3, Lcom/estrongs/android/view/ei;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/view/ei;-><init>(Lcom/estrongs/android/view/eh;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)V

    goto :goto_0
.end method
