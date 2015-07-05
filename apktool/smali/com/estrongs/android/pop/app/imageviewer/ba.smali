.class Lcom/estrongs/android/pop/app/imageviewer/ba;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->p(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/bb;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/bb;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ba;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    new-instance v2, Lcom/estrongs/android/pop/app/imageviewer/bc;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/bc;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ba;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
