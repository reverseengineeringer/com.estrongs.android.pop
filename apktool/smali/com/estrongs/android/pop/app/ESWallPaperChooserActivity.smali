.class public Lcom/estrongs/android/pop/app/ESWallPaperChooserActivity;
.super Lcom/estrongs/android/pop/app/FileChooserActivity;


# instance fields
.field private b:Lcom/estrongs/android/j/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ESWallPaperChooserActivity;->b:Lcom/estrongs/android/j/c;

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/fs/h;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/estrongs/android/util/bg;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f080643

    invoke-static {p0, v1, v0}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/FileChooserActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ESWallPaperChooserActivity;->b:Lcom/estrongs/android/j/c;

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESWallPaperChooserActivity;->b:Lcom/estrongs/android/j/c;

    const-string v1, "act3"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESWallPaperChooserActivity;->b:Lcom/estrongs/android/j/c;

    const-string v1, "act3"

    const-string v2, "es_wall_paper_choose"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->onResume()V

    return-void
.end method
