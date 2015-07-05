.class Lcom/estrongs/android/pop/app/ci;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/android/pop/app/ch;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ch;Lcom/estrongs/a/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/ci;->a:Lcom/estrongs/a/a;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/ci;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const v5, 0x10001019

    const/4 v1, 0x0

    const/4 v6, -0x1

    invoke-static {}, Lcom/estrongs/android/a/u;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ci;->a:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/a/p;->a:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ch;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    const v1, 0x7f0b0328

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/FileChooserActivity;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ch;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/ch;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/FileChooserActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ch;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ci;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ci;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bc;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ch;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->a(Lcom/estrongs/android/pop/app/FileChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "setWallpaper"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/ch;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    const-class v3, Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ch;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-virtual {v0, v1, v5}, Lcom/estrongs/android/pop/app/FileChooserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ch;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v0, "crop"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "circle"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "circleCrop"

    const-string v4, "true"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/ch;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    const-class v4, Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ch;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-virtual {v1, v0, v5}, Lcom/estrongs/android/pop/app/FileChooserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    const-string v0, "return-data"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ch;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-static {v0}, Lcom/estrongs/android/d/h;->a(Landroid/content/Context;)Lcom/estrongs/android/d/h;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/ch;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/FileChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "outputX"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/ch;->c:Landroid/content/Intent;

    const-string v4, "data"

    iget-object v5, p0, Lcom/estrongs/android/pop/app/ci;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v5, v1}, Lcom/estrongs/android/d/h;->a(ILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ch;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ch;->c:Landroid/content/Intent;

    invoke-virtual {v0, v6, v1}, Lcom/estrongs/android/pop/app/FileChooserActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ch;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->finish()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ch;->c:Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ci;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ci;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bc;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ci;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bc;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ci;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bc;->k(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ch;->c:Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ci;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/FileContentProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ch;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ch;->c:Landroid/content/Intent;

    invoke-virtual {v0, v6, v1}, Lcom/estrongs/android/pop/app/FileChooserActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ch;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->finish()V

    goto/16 :goto_0

    :cond_8
    sget-boolean v0, Lcom/estrongs/android/pop/z;->as:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ch;->c:Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ci;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/FileContentProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ch;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ch;->c:Landroid/content/Intent;

    invoke-virtual {v0, v6, v1}, Lcom/estrongs/android/pop/app/FileChooserActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ch;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->finish()V

    goto/16 :goto_0

    :cond_9
    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ci;->c:Lcom/estrongs/android/pop/app/ch;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/ch;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-direct {v0, v2}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0273

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v2, 0x7f07000b

    new-instance v3, Lcom/estrongs/android/pop/app/cj;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/cj;-><init>(Lcom/estrongs/android/pop/app/ci;)V

    invoke-virtual {v0, v2, v6, v3}, Lcom/estrongs/android/ui/dialog/ct;->a(IILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v2, 0x7f0b000c

    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    goto/16 :goto_0
.end method
