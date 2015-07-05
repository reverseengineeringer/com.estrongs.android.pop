.class public Lcom/estrongs/android/pop/app/ESWallPaperChooserActivity;
.super Lcom/estrongs/android/pop/app/FileChooserActivity;


# instance fields
.field private b:Lcom/estrongs/android/util/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ESWallPaperChooserActivity;->b:Lcom/estrongs/android/util/a;

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/fs/h;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/bc;->b(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/estrongs/android/util/bc;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0b03ef

    invoke-static {p0, v1, v0}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/FileChooserActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const-string v1, "ESWallPaperChooser"

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/util/a;->a(Landroid/content/Context;ZLjava/lang/String;)Lcom/estrongs/android/util/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ESWallPaperChooserActivity;->b:Lcom/estrongs/android/util/a;

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->onPause()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESWallPaperChooserActivity;->b:Lcom/estrongs/android/util/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESWallPaperChooserActivity;->b:Lcom/estrongs/android/util/a;

    invoke-virtual {v0}, Lcom/estrongs/android/util/a;->c()Z

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->onResume()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESWallPaperChooserActivity;->b:Lcom/estrongs/android/util/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESWallPaperChooserActivity;->b:Lcom/estrongs/android/util/a;

    invoke-virtual {v0}, Lcom/estrongs/android/util/a;->b()Z

    :cond_0
    return-void
.end method
