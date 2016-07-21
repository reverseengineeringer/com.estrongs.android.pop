.class public Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->d:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->e:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->e:Z

    :cond_0
    return-void
.end method

.method private b()V
    .locals 12

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, p0, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->c:I

    iget v4, p0, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->b:I

    iget v1, p0, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->b:I

    iget v5, p0, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->c:I

    if-le v1, v5, :cond_1

    int-to-double v0, v0

    mul-double/2addr v0, v10

    int-to-double v6, v4

    div-double/2addr v0, v6

    int-to-double v6, v3

    mul-double/2addr v6, v0

    int-to-double v8, v2

    cmpl-double v5, v6, v8

    if-lez v5, :cond_0

    int-to-double v0, v2

    mul-double/2addr v0, v10

    int-to-double v6, v3

    div-double/2addr v0, v6

    :cond_0
    int-to-double v2, v3

    mul-double/2addr v2, v0

    double-to-int v2, v2

    int-to-double v4, v4

    mul-double/2addr v0, v4

    double-to-int v0, v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void

    :cond_1
    const/high16 v0, 0x432f0000    # 175.0f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->a(F)I

    move-result v0

    int-to-float v1, v0

    int-to-float v2, v4

    mul-float/2addr v1, v2

    int-to-float v2, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method private c()V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->e:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->c:I

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->b:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public a(F)I
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->c()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->b()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->c()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESScreenFitImageView2;->b()V

    :cond_0
    return-void
.end method
