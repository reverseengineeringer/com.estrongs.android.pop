.class Lcom/estrongs/android/pop/app/imageviewer/bz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/by;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/by;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/bz;->a:Lcom/estrongs/android/pop/app/imageviewer/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bz;->a:Lcom/estrongs/android/pop/app/imageviewer/by;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/by;->b:Lcom/estrongs/android/pop/app/imageviewer/bx;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/bx;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bz;->a:Lcom/estrongs/android/pop/app/imageviewer/by;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/by;->b:Lcom/estrongs/android/pop/app/imageviewer/bx;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/bx;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->e()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bz;->a:Lcom/estrongs/android/pop/app/imageviewer/by;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/by;->b:Lcom/estrongs/android/pop/app/imageviewer/bx;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/bx;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bz;->a:Lcom/estrongs/android/pop/app/imageviewer/by;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/by;->b:Lcom/estrongs/android/pop/app/imageviewer/bx;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/bx;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->finish()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bz;->a:Lcom/estrongs/android/pop/app/imageviewer/by;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/by;->b:Lcom/estrongs/android/pop/app/imageviewer/bx;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/bx;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bz;->a:Lcom/estrongs/android/pop/app/imageviewer/by;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/by;->b:Lcom/estrongs/android/pop/app/imageviewer/bx;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/bx;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bz;->a:Lcom/estrongs/android/pop/app/imageviewer/by;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/by;->b:Lcom/estrongs/android/pop/app/imageviewer/bx;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/bx;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(IZ)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bz;->a:Lcom/estrongs/android/pop/app/imageviewer/by;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/by;->b:Lcom/estrongs/android/pop/app/imageviewer/bx;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/bx;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/q;->notifyDataSetChanged()V

    goto :goto_0
.end method
