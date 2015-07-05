.class public Lcom/estrongs/android/pop/app/imageviewer/ar;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;


# instance fields
.field a:F

.field final synthetic b:Lcom/estrongs/android/pop/app/imageviewer/ViewImage;


# direct methods
.method protected constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->b:Lcom/estrongs/android/pop/app/imageviewer/ViewImage;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->a:F

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    const/4 v5, 0x1

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->b:Lcom/estrongs/android/pop/app/imageviewer/ViewImage;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    :goto_0
    return v5

    :cond_0
    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->a:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->a:F

    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->a:F

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->b()F

    move-result v2

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->b()F

    move-result v1

    iput v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->a:F

    :cond_1
    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->a:F

    sub-float/2addr v1, v4

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    iput v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->a:F

    :cond_2
    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->a:F

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a(F)V

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->b:Lcom/estrongs/android/pop/app/imageviewer/ViewImage;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->f()F

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->a:F

    const/4 v0, 0x1

    return v0
.end method
