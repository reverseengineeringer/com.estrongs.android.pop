.class Lcom/estrongs/android/pop/app/imageviewer/bb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/ba;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/bb;->a:Lcom/estrongs/android/pop/app/imageviewer/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bb;->a:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    const v1, 0x7f0b025a

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bb;->a:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bb;->a:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->q(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bb;->a:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->q(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bb;->a:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bb;->a:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->finish()V

    return-void
.end method
