.class Lcom/estrongs/android/view/ei;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/view/eh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/eh;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ei;->b:Lcom/estrongs/android/view/eh;

    iput-object p2, p0, Lcom/estrongs/android/view/ei;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/view/ei;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ATTACH_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image/*"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "mimeType"

    const-string v2, "image/*"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/view/ei;->b:Lcom/estrongs/android/view/eh;

    iget-object v0, v0, Lcom/estrongs/android/view/eh;->b:Lcom/estrongs/android/view/eg;

    iget-object v0, v0, Lcom/estrongs/android/view/eg;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v0, v0, Lcom/estrongs/android/view/WebViewWrapper;->ad:Landroid/app/Activity;

    const-class v2, Lcom/estrongs/android/pop/app/imageviewer/Wallpaper;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/view/ei;->b:Lcom/estrongs/android/view/eh;

    iget-object v0, v0, Lcom/estrongs/android/view/eh;->b:Lcom/estrongs/android/view/eg;

    iget-object v0, v0, Lcom/estrongs/android/view/eg;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v0, v0, Lcom/estrongs/android/view/WebViewWrapper;->ad:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
