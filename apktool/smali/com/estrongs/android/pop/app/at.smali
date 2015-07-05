.class Lcom/estrongs/android/pop/app/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic b:Lcom/estrongs/android/pop/app/DownloaderActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/DownloaderActivity;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/at;->b:Lcom/estrongs/android/pop/app/DownloaderActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/at;->a:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/at;->b:Lcom/estrongs/android/pop/app/DownloaderActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/at;->b:Lcom/estrongs/android/pop/app/DownloaderActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Lcom/estrongs/android/pop/app/DownloaderActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/at;->b:Lcom/estrongs/android/pop/app/DownloaderActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/DownloaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Lcom/estrongs/android/pop/app/DownloaderActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/at;->b:Lcom/estrongs/android/pop/app/DownloaderActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->ae()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/android/pop/app/au;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/au;-><init>(Lcom/estrongs/android/pop/app/at;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/at;->b:Lcom/estrongs/android/pop/app/DownloaderActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/at;->a:Landroid/content/DialogInterface$OnCancelListener;

    invoke-static {v1, v0, v2}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/n;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/at;->b:Lcom/estrongs/android/pop/app/DownloaderActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/at;->b:Lcom/estrongs/android/pop/app/DownloaderActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Lcom/estrongs/android/pop/app/DownloaderActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0
.end method
