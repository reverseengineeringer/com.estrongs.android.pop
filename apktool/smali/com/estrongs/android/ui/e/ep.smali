.class Lcom/estrongs/android/ui/e/ep;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/android/ui/e/eo;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/eo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ep;->c:Lcom/estrongs/android/ui/e/eo;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/ep;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/ui/e/ep;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ep;->c:Lcom/estrongs/android/ui/e/eo;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/eo;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    const-class v2, Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/ep;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget v1, Lcom/estrongs/android/ui/d/a;->d:I

    sget v2, Lcom/estrongs/android/ui/d/a;->e:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-string v2, "outputX"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "outputY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "aspectX"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "aspectY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "scale"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "noFaceDetection"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "customSave"

    iget-object v2, p0, Lcom/estrongs/android/ui/e/ep;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ep;->c:Lcom/estrongs/android/ui/e/eo;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/eo;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    const v2, 0x10001019

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
