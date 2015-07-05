.class Lcom/estrongs/android/ui/theme/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/cc;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/i;->a:Lcom/estrongs/android/ui/theme/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/h;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/i;->a:Lcom/estrongs/android/ui/theme/f;

    iget-object v0, v0, Lcom/estrongs/android/ui/theme/f;->a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->a(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/al;->g()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/theme/i;->a:Lcom/estrongs/android/ui/theme/f;

    iget-object v1, v1, Lcom/estrongs/android/ui/theme/f;->a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->b(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/theme/ai;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Ljava/io/File;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/estrongs/android/ui/theme/i;->a:Lcom/estrongs/android/ui/theme/f;

    iget-object v2, v2, Lcom/estrongs/android/ui/theme/f;->a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    const-class v3, Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "outputX"

    sget v3, Lcom/estrongs/android/ui/d/a;->d:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "outputY"

    sget v3, Lcom/estrongs/android/ui/d/a;->e:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "aspectX"

    sget v3, Lcom/estrongs/android/ui/d/a;->d:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "aspectY"

    sget v3, Lcom/estrongs/android/ui/d/a;->e:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "scale"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "scaleUpIfNeeded"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "noFaceDetection"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "customSave1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/ai;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "background_v.dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "customSave2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/ai;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "background_h.dat"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "crop2Direction"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "fixCropMode"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "title"

    iget-object v2, p0, Lcom/estrongs/android/ui/theme/i;->a:Lcom/estrongs/android/ui/theme/f;

    iget-object v2, v2, Lcom/estrongs/android/ui/theme/f;->a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    const v3, 0x7f0b0570

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/i;->a:Lcom/estrongs/android/ui/theme/f;

    iget-object v0, v0, Lcom/estrongs/android/ui/theme/f;->a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    const v2, 0x10001019

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method
