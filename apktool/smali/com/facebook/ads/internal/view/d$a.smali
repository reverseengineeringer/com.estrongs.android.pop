.class Lcom/facebook/ads/internal/view/d$a;
.super Landroid/widget/Button;


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/d;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Path;

.field private d:Landroid/graphics/Path;

.field private e:Landroid/graphics/Path;

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/view/d;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d$a;->a:Lcom/facebook/ads/internal/view/d;

    invoke-direct {p0, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d$a;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    const/16 v0, 0x3c

    iput v0, p0, Lcom/facebook/ads/internal/view/d$a;->f:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d$a;->c:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d$a;->d:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d$a;->e:Landroid/graphics/Path;

    new-instance v0, Lcom/facebook/ads/internal/view/d$a$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/d$a$1;-><init>(Lcom/facebook/ads/internal/view/d$a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d$a;->b:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d$a;->b()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d$a;->setClickable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d$a;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/d$a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/d$a;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d$a;->g:Z

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d$a;->refreshDrawableState()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d$a;->invalidate()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/d$a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d$a;->c()Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d$a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/facebook/ads/internal/view/d$a;->f:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/facebook/ads/internal/view/d$a;->f:I

    int-to-float v3, v3

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v1}, Lcom/facebook/ads/internal/view/d$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/d$a;->g:Z

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/high16 v8, 0x425c0000    # 55.0f

    const/high16 v7, 0x41e80000    # 29.0f

    const/high16 v6, 0x41d40000    # 26.5f

    const/high16 v5, 0x429e0000    # 79.0f

    const/high16 v4, 0x41a80000    # 21.0f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/view/d$a;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v0

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d$a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d$a;->e:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d$a;->e:Landroid/graphics/Path;

    mul-float v2, v6, v0

    const/high16 v3, 0x41780000    # 15.5f

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d$a;->e:Landroid/graphics/Path;

    mul-float v2, v6, v0

    const/high16 v3, 0x42a90000    # 84.5f

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d$a;->e:Landroid/graphics/Path;

    const/high16 v2, 0x42a50000    # 82.5f

    mul-float/2addr v2, v0

    const/high16 v3, 0x424a0000    # 50.5f

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d$a;->e:Landroid/graphics/Path;

    mul-float v2, v6, v0

    const/high16 v3, 0x41780000    # 15.5f

    mul-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d$a;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d$a;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d$a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/internal/view/d$a;->c:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d$a;->c:Landroid/graphics/Path;

    mul-float v2, v7, v0

    mul-float v3, v4, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d$a;->c:Landroid/graphics/Path;

    mul-float v2, v7, v0

    mul-float v3, v5, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d$a;->c:Landroid/graphics/Path;

    const/high16 v2, 0x42340000    # 45.0f

    mul-float/2addr v2, v0

    mul-float v3, v5, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d$a;->c:Landroid/graphics/Path;

    const/high16 v2, 0x42340000    # 45.0f

    mul-float/2addr v2, v0

    mul-float v3, v4, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d$a;->c:Landroid/graphics/Path;

    mul-float v2, v7, v0

    mul-float v3, v4, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d$a;->c:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d$a;->d:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d$a;->d:Landroid/graphics/Path;

    mul-float v2, v8, v0

    mul-float v3, v4, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d$a;->d:Landroid/graphics/Path;

    mul-float v2, v8, v0

    mul-float v3, v5, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d$a;->d:Landroid/graphics/Path;

    const/high16 v2, 0x428e0000    # 71.0f

    mul-float/2addr v2, v0

    mul-float v3, v5, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d$a;->d:Landroid/graphics/Path;

    const/high16 v2, 0x428e0000    # 71.0f

    mul-float/2addr v2, v0

    mul-float v3, v4, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d$a;->d:Landroid/graphics/Path;

    mul-float v2, v8, v0

    mul-float/2addr v0, v4

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d$a;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d$a;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d$a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d$a;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d$a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method
