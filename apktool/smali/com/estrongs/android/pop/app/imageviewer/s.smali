.class Lcom/estrongs/android/pop/app/imageviewer/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

.field final synthetic c:Lcom/estrongs/android/pop/app/imageviewer/r;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/r;Landroid/graphics/Bitmap;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/s;->c:Lcom/estrongs/android/pop/app/imageviewer/r;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/s;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/imageviewer/s;->b:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/s;->c:Lcom/estrongs/android/pop/app/imageviewer/r;

    iget v0, v0, Lcom/estrongs/android/pop/app/imageviewer/r;->a:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/s;->c:Lcom/estrongs/android/pop/app/imageviewer/r;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/r;->c:Lcom/estrongs/android/pop/app/imageviewer/q;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/q;->a(Lcom/estrongs/android/pop/app/imageviewer/q;)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/s;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/s;->c:Lcom/estrongs/android/pop/app/imageviewer/r;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/r;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/s;->c:Lcom/estrongs/android/pop/app/imageviewer/r;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/r;->c:Lcom/estrongs/android/pop/app/imageviewer/q;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/q;->b(Lcom/estrongs/android/pop/app/imageviewer/q;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/s;->b:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/cd;->c(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/s;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/s;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/s;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/s;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/s;->c:Lcom/estrongs/android/pop/app/imageviewer/r;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/r;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/s;->c:Lcom/estrongs/android/pop/app/imageviewer/r;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/r;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/s;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
