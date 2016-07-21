.class public Lcom/estrongs/android/pop/app/unlock/c;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field protected final a:F

.field protected final b:Landroid/graphics/RectF;

.field protected final c:Landroid/graphics/RectF;

.field protected final d:Landroid/graphics/BitmapShader;

.field protected final e:Landroid/graphics/Paint;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/unlock/c;->b:Landroid/graphics/RectF;

    int-to-float v0, p2

    iput v0, p0, Lcom/estrongs/android/pop/app/unlock/c;->a:F

    iput p3, p0, Lcom/estrongs/android/pop/app/unlock/c;->f:I

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/unlock/c;->d:Landroid/graphics/BitmapShader;

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/unlock/c;->c:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/unlock/c;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/c;->e:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/c;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/c;->d:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/c;->b:Landroid/graphics/RectF;

    iget v2, p0, Lcom/estrongs/android/pop/app/unlock/c;->a:F

    iget v3, p0, Lcom/estrongs/android/pop/app/unlock/c;->a:F

    iget-object v4, p0, Lcom/estrongs/android/pop/app/unlock/c;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/estrongs/android/pop/app/unlock/c;->f:I

    xor-int/lit8 v8, v0, 0xf

    and-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_0

    iget v3, p0, Lcom/estrongs/android/pop/app/unlock/c;->a:F

    iget v4, p0, Lcom/estrongs/android/pop/app/unlock/c;->a:F

    iget-object v5, p0, Lcom/estrongs/android/pop/app/unlock/c;->e:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    and-int/lit8 v0, v8, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/c;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/estrongs/android/pop/app/unlock/c;->a:F

    sub-float v3, v0, v2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/c;->b:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lcom/estrongs/android/pop/app/unlock/c;->a:F

    iget-object v7, p0, Lcom/estrongs/android/pop/app/unlock/c;->e:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    and-int/lit8 v0, v8, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/c;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/estrongs/android/pop/app/unlock/c;->a:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/estrongs/android/pop/app/unlock/c;->a:F

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/c;->b:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/estrongs/android/pop/app/unlock/c;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    and-int/lit8 v0, v8, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/c;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/estrongs/android/pop/app/unlock/c;->a:F

    sub-float v1, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/c;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/estrongs/android/pop/app/unlock/c;->a:F

    sub-float v2, v0, v2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/c;->b:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/c;->b:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/estrongs/android/pop/app/unlock/c;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/c;->b:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/c;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/unlock/c;->b:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/c;->d:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/c;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/c;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
