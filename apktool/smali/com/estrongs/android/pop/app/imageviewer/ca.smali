.class Lcom/estrongs/android/pop/app/imageviewer/ca;
.super Lcom/estrongs/android/f/a;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/cg;

.field final synthetic b:I

.field final synthetic c:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Ljava/lang/String;Lcom/estrongs/android/pop/app/imageviewer/cg;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ca;->c:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/imageviewer/ca;->a:Lcom/estrongs/android/pop/app/imageviewer/cg;

    iput p4, p0, Lcom/estrongs/android/pop/app/imageviewer/ca;->b:I

    invoke-direct {p0, p2}, Lcom/estrongs/android/f/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/f/a;Landroid/graphics/Bitmap;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ca;->c:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/an;->a()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ca;->a:Lcom/estrongs/android/pop/app/imageviewer/cg;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ca;->c:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ca;->b:I

    invoke-interface {v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-direct {v3, p2, v0}, Lcom/estrongs/android/pop/app/imageviewer/an;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Lcom/estrongs/android/pop/app/imageviewer/an;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p1}, Lcom/estrongs/android/f/a;->stop()V

    goto :goto_0
.end method
