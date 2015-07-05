.class Lcom/estrongs/android/pop/app/imageviewer/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/g;->a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/g;->a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->b(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/g;->a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->b(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    const/4 v2, -0x1

    const/high16 v3, 0x100000

    invoke-interface {v0, v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->a(II)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/g;->a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->e(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/app/imageviewer/h;

    invoke-direct {v3, p0, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/h;-><init>(Lcom/estrongs/android/pop/app/imageviewer/g;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/g;->a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->f:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/g;->a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->c(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
