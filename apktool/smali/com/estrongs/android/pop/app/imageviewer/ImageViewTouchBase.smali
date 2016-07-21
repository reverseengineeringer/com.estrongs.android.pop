.class abstract Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;
.super Lcom/estrongs/android/pop/esclasses/ESImageView;


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:[F

.field private c:Lcom/estrongs/android/pop/app/imageviewer/ad;

.field private d:Ljava/lang/Runnable;

.field protected f:Landroid/graphics/Matrix;

.field protected g:Landroid/graphics/Matrix;

.field protected final h:Lcom/estrongs/android/pop/app/imageviewer/an;

.field i:I

.field j:I

.field k:F

.field l:F

.field m:I

.field n:I

.field protected o:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->f:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->b:[F

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-direct {v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/an;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    iput v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->i:I

    iput v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->j:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->l:F

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->o:Landroid/os/Handler;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->f:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->b:[F

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-direct {v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/an;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    iput v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->i:I

    iput v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->j:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->l:F

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->o:Landroid/os/Handler;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->c()V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/an;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-virtual {v1, p1}, Lcom/estrongs/android/pop/app/imageviewer/an;->a(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/pop/app/imageviewer/an;->a(I)V

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->c:Lcom/estrongs/android/pop/app/imageviewer/ad;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->c:Lcom/estrongs/android/pop/app/imageviewer/ad;

    invoke-interface {v1, v0}, Lcom/estrongs/android/pop/app/imageviewer/ad;->a(Landroid/graphics/Bitmap;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->m:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->n:I

    :cond_2
    return-void
.end method

.method private a(Lcom/estrongs/android/pop/app/imageviewer/an;Landroid/graphics/Matrix;)V
    .locals 8

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/imageviewer/an;->f()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/imageviewer/an;->e()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    div-float v4, v0, v2

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float v5, v1, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/imageviewer/an;->c()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v6

    mul-float v2, v3, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private c()V
    .locals 1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Matrix;)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected a(Landroid/graphics/Matrix;I)F
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->b:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->b:[F

    aget v0, v0, p2

    return v0
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method protected a(F)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(FFF)V

    return-void
.end method

.method protected a(FF)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method protected a(FFF)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->k:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->k:F

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->getScale()F

    move-result v0

    div-float v0, p1, v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0, v2, v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(ZZ)V

    return-void
.end method

.method protected a(FFFF)V
    .locals 10

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v7, v0, p4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->getScale()F

    move-result v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->o:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/ac;

    move-object v2, p0

    move v3, p4

    move v8, p2

    move v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/estrongs/android/pop/app/imageviewer/ac;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/an;->a()I

    move-result v0

    add-int/2addr v0, p1

    const/16 v1, 0x168

    if-lt v0, v1, :cond_0

    add-int/lit16 v0, v0, -0x168

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/imageviewer/an;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(Lcom/estrongs/android/pop/app/imageviewer/an;Z)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Z)V
    .locals 1

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-direct {v0, p1}, Lcom/estrongs/android/pop/app/imageviewer/an;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(Lcom/estrongs/android/pop/app/imageviewer/an;Z)V

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/imageviewer/an;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->getWidth()I

    move-result v0

    if-gtz v0, :cond_1

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/ab;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/ab;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;Lcom/estrongs/android/pop/app/imageviewer/an;Z)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->d:Ljava/lang/Runnable;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/imageviewer/an;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->f:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(Lcom/estrongs/android/pop/app/imageviewer/an;Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/imageviewer/an;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/imageviewer/an;->a()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;I)V

    :goto_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->b()F

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->k:F

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->l:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->getScale()F

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->l:F

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method protected a(ZZ)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/imageviewer/an;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/imageviewer/an;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-virtual {v4}, Lcom/estrongs/android/pop/app/imageviewer/an;->b()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v4, v3

    iput v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->m:I

    float-to-int v4, v1

    iput v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->n:I

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->getHeight()I

    move-result v4

    int-to-float v5, v4

    cmpg-float v5, v1, v5

    if-gez v5, :cond_2

    int-to-float v4, v4

    sub-float v1, v4, v1

    div-float/2addr v1, v6

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v4

    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->getWidth()I

    move-result v4

    int-to-float v5, v4

    cmpg-float v5, v3, v5

    if-gez v5, :cond_4

    int-to-float v0, v4

    sub-float/2addr v0, v3

    div-float/2addr v0, v6

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    :cond_1
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(FF)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_2
    iget v1, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    iget v1, v2, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    goto :goto_1

    :cond_3
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_6

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v4

    goto :goto_1

    :cond_4
    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v0

    if-lez v3, :cond_5

    iget v0, v2, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    goto :goto_2

    :cond_5
    iget v3, v2, Landroid/graphics/RectF;->right:F

    int-to-float v5, v4

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    int-to-float v0, v4

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    goto :goto_2

    :cond_6
    move v1, v0

    goto :goto_1
.end method

.method protected b()F
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/an;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/an;->f()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/imageviewer/an;->e()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->j:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method protected b(FFF)V
    .locals 4

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float v2, v0, p2

    sub-float v3, v1, p3

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->c(FF)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(FFF)V

    return-void
.end method

.method protected c(FF)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(FF)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getBitmapHeight()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/an;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/an;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getBitmapWidth()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/an;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/an;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getDefaultScale()F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->l:F

    return v0
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getScale()F
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method public getScaledHeight()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->n:I

    return v0
.end method

.method public getScaledWidth()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->m:I

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->getScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(F)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Lcom/estrongs/android/pop/esclasses/ESImageView;->onLayout(ZIIII)V

    sub-int v0, p4, p2

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->i:I

    sub-int v0, p5, p3

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->j:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/an;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->f:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(Lcom/estrongs/android/pop/app/imageviewer/an;Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public setRecycler(Lcom/estrongs/android/pop/app/imageviewer/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->c:Lcom/estrongs/android/pop/app/imageviewer/ad;

    return-void
.end method
