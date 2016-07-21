.class public Lcom/estrongs/android/view/music/MusicProgressView;
.super Landroid/widget/ImageView;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/RectF;

.field private j:F

.field private k:I

.field private l:I

.field private m:F

.field private n:Landroid/graphics/Matrix;

.field private o:Landroid/graphics/BitmapShader;

.field private p:Landroid/graphics/PointF;

.field private q:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f070079

    iput v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->a:I

    const v0, 0x7f0d00f7

    iput v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->b:I

    const v0, 0x7f0d00f6

    iput v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->c:I

    const v0, 0x7f070069

    iput v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->d:I

    const v0, 0x7f020195

    iput v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->e:I

    invoke-direct {p0}, Lcom/estrongs/android/view/music/MusicProgressView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f070079

    iput v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->a:I

    const v0, 0x7f0d00f7

    iput v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->b:I

    const v0, 0x7f0d00f6

    iput v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->c:I

    const v0, 0x7f070069

    iput v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->d:I

    const v0, 0x7f020195

    iput v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->e:I

    invoke-direct {p0}, Lcom/estrongs/android/view/music/MusicProgressView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f070079

    iput v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->a:I

    const v0, 0x7f0d00f7

    iput v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->b:I

    const v0, 0x7f0d00f6

    iput v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->c:I

    const v0, 0x7f070069

    iput v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->d:I

    const v0, 0x7f020195

    iput v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->e:I

    invoke-direct {p0}, Lcom/estrongs/android/view/music/MusicProgressView;->a()V

    return-void
.end method

.method private a(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/music/MusicProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lcom/estrongs/android/h/a/b;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/h/a/b;

    invoke-virtual {v0}, Lcom/estrongs/android/h/a/b;->a()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v1, v0

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/h/a/b;

    invoke-virtual {v0}, Lcom/estrongs/android/h/a/b;->a()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    :goto_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v4, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_1
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->f:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->f:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/estrongs/android/view/music/MusicProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/android/view/music/MusicProgressView;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->g:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->g:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/estrongs/android/view/music/MusicProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/android/view/music/MusicProgressView;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->g:Landroid/graphics/Paint;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->f:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/estrongs/android/view/music/MusicProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/android/view/music/MusicProgressView;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/estrongs/android/view/music/MusicProgressView;->i:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v3, p0, Lcom/estrongs/android/view/music/MusicProgressView;->j:F

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/estrongs/android/view/music/MusicProgressView;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->p:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/estrongs/android/view/music/MusicProgressView;->p:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/estrongs/android/view/music/MusicProgressView;->l:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/estrongs/android/view/music/MusicProgressView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->q:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/music/MusicProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/view/music/MusicProgressView;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->q:Landroid/graphics/drawable/Drawable;

    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->n:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->h:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->h:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->q:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/music/MusicProgressView;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/estrongs/android/view/music/MusicProgressView;->o:Landroid/graphics/BitmapShader;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/estrongs/android/view/music/MusicProgressView;->l:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float v0, v1, v0

    iget-object v1, p0, Lcom/estrongs/android/view/music/MusicProgressView;->n:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-direct {p0}, Lcom/estrongs/android/view/music/MusicProgressView;->getProgressWidth()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/view/music/MusicProgressView;->n:Landroid/graphics/Matrix;

    int-to-float v2, v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->o:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/estrongs/android/view/music/MusicProgressView;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->h:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/estrongs/android/view/music/MusicProgressView;->o:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->p:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/estrongs/android/view/music/MusicProgressView;->p:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/estrongs/android/view/music/MusicProgressView;->l:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/estrongs/android/view/music/MusicProgressView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getMinWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/view/music/MusicProgressView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/view/music/MusicProgressView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getProgressWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/view/music/MusicProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/view/music/MusicProgressView;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(JJ)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->m:F

    :goto_0
    iget v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->m:F

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->j:F

    invoke-virtual {p0}, Lcom/estrongs/android/view/music/MusicProgressView;->postInvalidate()V

    return-void

    :cond_0
    cmp-long v0, p1, p3

    if-ltz v0, :cond_1

    iput v2, p0, Lcom/estrongs/android/view/music/MusicProgressView;->m:F

    goto :goto_0

    :cond_1
    long-to-float v0, p1

    mul-float/2addr v0, v2

    long-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->m:F

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-direct {p0}, Lcom/estrongs/android/view/music/MusicProgressView;->getMinWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->k:I

    iget v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->k:I

    invoke-direct {p0}, Lcom/estrongs/android/view/music/MusicProgressView;->getProgressWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->l:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/estrongs/android/view/music/MusicProgressView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/estrongs/android/view/music/MusicProgressView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->i:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/estrongs/android/view/music/MusicProgressView;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/view/music/MusicProgressView;->i:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->p:Landroid/graphics/PointF;

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/music/MusicProgressView;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/music/MusicProgressView;->b(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    iget v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->a:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/music/MusicProgressView;->a(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/view/music/MusicProgressView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, p1}, Lcom/estrongs/android/view/music/MusicProgressView;->resolveSize(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/estrongs/android/view/music/MusicProgressView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, p2}, Lcom/estrongs/android/view/music/MusicProgressView;->resolveSize(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/view/music/MusicProgressView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/estrongs/android/view/music/MusicProgressView;->q:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setBgColor(I)V
    .locals 3

    iput p1, p0, Lcom/estrongs/android/view/music/MusicProgressView;->b:I

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->g:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/estrongs/android/view/music/MusicProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/android/view/music/MusicProgressView;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/estrongs/android/view/music/MusicProgressView;->q:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/music/MusicProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->q:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setProgressColor(I)V
    .locals 3

    iput p1, p0, Lcom/estrongs/android/view/music/MusicProgressView;->c:I

    iget-object v0, p0, Lcom/estrongs/android/view/music/MusicProgressView;->f:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/estrongs/android/view/music/MusicProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/android/view/music/MusicProgressView;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setProgressWidth(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/view/music/MusicProgressView;->d:I

    return-void
.end method
