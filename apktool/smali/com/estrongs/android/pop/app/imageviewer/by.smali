.class Lcom/estrongs/android/pop/app/imageviewer/by;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

.field final synthetic b:Lcom/estrongs/android/pop/app/imageviewer/bx;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/bx;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/by;->b:Lcom/estrongs/android/pop/app/imageviewer/bx;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/by;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/by;->b:Lcom/estrongs/android/pop/app/imageviewer/bx;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/bx;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/by;->b:Lcom/estrongs/android/pop/app/imageviewer/bx;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/bx;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/by;->b:Lcom/estrongs/android/pop/app/imageviewer/bx;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/bx;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/bz;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/bz;-><init>(Lcom/estrongs/android/pop/app/imageviewer/by;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/by;->b:Lcom/estrongs/android/pop/app/imageviewer/bx;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/bx;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/by;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    invoke-interface {v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/by;->b:Lcom/estrongs/android/pop/app/imageviewer/bx;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/bx;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    const v3, 0x7f0b01b9

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method
