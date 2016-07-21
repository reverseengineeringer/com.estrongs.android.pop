.class Lcom/estrongs/android/ui/view/bn;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/IndicatorView;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/drawable/NinePatchDrawable;

.field private j:F

.field private k:Z


# direct methods
.method static synthetic a(Lcom/estrongs/android/ui/view/bn;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/bn;->g()Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/bn;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/view/bn;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/view/bn;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/view/bn;->f:I

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/view/bn;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/view/bn;->d:I

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/view/bn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->c:Ljava/lang/String;

    return-object v0
.end method

.method private g()Landroid/graphics/drawable/NinePatchDrawable;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->i:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/bn;->i:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->i:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->i:Landroid/graphics/drawable/NinePatchDrawable;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 4

    const/high16 v3, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->a(Lcom/estrongs/android/ui/view/IndicatorView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/ui/view/bn;->h:I

    int-to-float v0, v0

    iget v1, p0, Lcom/estrongs/android/ui/view/bn;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/estrongs/android/ui/view/bn;->j:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/estrongs/android/ui/view/bn;->h:I

    int-to-float v0, v0

    iget v1, p0, Lcom/estrongs/android/ui/view/bn;->f:I

    iget v2, p0, Lcom/estrongs/android/ui/view/bn;->e:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/estrongs/android/ui/view/bn;->j:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/view/bn;->j:F

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/view/bn;->g:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/view/bn;->f:I

    return v0
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget v0, p0, Lcom/estrongs/android/ui/view/bn;->j:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/estrongs/android/ui/view/IndicatorView;->a()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->b:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/estrongs/android/ui/view/IndicatorView;->b()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    iget v0, p0, Lcom/estrongs/android/ui/view/bn;->j:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/bn;->k:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->a(Lcom/estrongs/android/ui/view/IndicatorView;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    iget v0, p0, Lcom/estrongs/android/ui/view/bn;->j:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->a(Lcom/estrongs/android/ui/view/IndicatorView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
