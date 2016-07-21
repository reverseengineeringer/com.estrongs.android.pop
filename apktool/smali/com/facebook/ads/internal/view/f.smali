.class public Lcom/facebook/ads/internal/view/f;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/util/DisplayMetrics;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:F

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/f;->b()V

    return-void
.end method

.method private a()V
    .locals 9

    const/4 v6, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/f;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/f;->c()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/f;->k:I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/f;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/facebook/ads/internal/view/f;->k:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lcom/facebook/ads/internal/view/f;->j:I

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/f;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/facebook/ads/internal/view/f;->k:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v7, v2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/facebook/ads/internal/view/f;->k:I

    int-to-float v2, v2

    div-float v8, v0, v2

    iget v0, p0, Lcom/facebook/ads/internal/view/f;->j:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->c:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/f;->h:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    int-to-float v0, v7

    mul-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-lez v4, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->c:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v4

    iget-object v3, p0, Lcom/facebook/ads/internal/view/f;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/f;->i:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method private b()V
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/f;->a:Landroid/util/DisplayMetrics;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/f;->setOrientation(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/f;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->d:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/f;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/f;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->e:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->e:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/f;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/f;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->f:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/f;->addView(Landroid/view/View;)V

    return-void
.end method

.method private c()I
    .locals 4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/f;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3ffe8f5c28f5c28fL    # 1.91

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->e:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/f;->b:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/f;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/internal/view/f;->g:F

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/f;->a()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/internal/view/f;->c()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->h:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/facebook/ads/internal/view/f;->k:I

    if-eq v1, v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/internal/view/f;->a()V

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->d:Landroid/widget/ImageView;

    iget v1, p0, Lcom/facebook/ads/internal/view/f;->j:I

    invoke-virtual {v0, p2, p3, p4, v1}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->e:Landroid/widget/ImageView;

    iget v1, p0, Lcom/facebook/ads/internal/view/f;->j:I

    add-int/2addr v1, p3

    iget v2, p0, Lcom/facebook/ads/internal/view/f;->j:I

    iget v3, p0, Lcom/facebook/ads/internal/view/f;->k:I

    add-int/2addr v2, v3

    invoke-virtual {v0, p2, v1, p4, v2}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->f:Landroid/widget/ImageView;

    iget v1, p0, Lcom/facebook/ads/internal/view/f;->j:I

    add-int/2addr v1, p3

    iget v2, p0, Lcom/facebook/ads/internal/view/f;->k:I

    add-int/2addr v1, v2

    invoke-virtual {v0, p2, v1, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0
.end method
