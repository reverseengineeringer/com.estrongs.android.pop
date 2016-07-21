.class public abstract Lcom/estrongs/android/ui/controller/widget/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/res/Resources;F)F
    .locals 2

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method public static a(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-array v4, v3, [F

    invoke-virtual {p0, p1, v4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v4, v1

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIII)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput p6, v0, Landroid/graphics/Rect;->left:I

    iput p7, v0, Landroid/graphics/Rect;->top:I

    add-int v2, p6, p4

    iput v2, v0, Landroid/graphics/Rect;->right:I

    add-int v2, p7, p5

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iput p2, v1, Landroid/graphics/Rect;->left:I

    iput p3, v1, Landroid/graphics/Rect;->top:I

    add-int v0, p2, p4

    iput v0, v1, Landroid/graphics/Rect;->right:I

    add-int v0, p3, p5

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v3, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method
