.class Lcom/estrongs/android/pop/app/imageviewer/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/estrongs/android/pop/app/imageviewer/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/g;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/h;->c:Lcom/estrongs/android/pop/app/imageviewer/g;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/h;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/imageviewer/h;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/h;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/h;->c:Lcom/estrongs/android/pop/app/imageviewer/g;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/g;->a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->c(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/h;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/h;->c:Lcom/estrongs/android/pop/app/imageviewer/g;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/g;->a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->d(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Lcom/estrongs/android/pop/app/imageviewer/CropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/h;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a(Landroid/graphics/Bitmap;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/h;->c:Lcom/estrongs/android/pop/app/imageviewer/g;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/g;->a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->c(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/h;->c:Lcom/estrongs/android/pop/app/imageviewer/g;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/g;->a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/h;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->a(Lcom/estrongs/android/pop/app/imageviewer/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/h;->c:Lcom/estrongs/android/pop/app/imageviewer/g;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/g;->a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->d(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Lcom/estrongs/android/pop/app/imageviewer/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->f()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/h;->c:Lcom/estrongs/android/pop/app/imageviewer/g;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/g;->a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->d(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Lcom/estrongs/android/pop/app/imageviewer/CropImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a(ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/h;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
