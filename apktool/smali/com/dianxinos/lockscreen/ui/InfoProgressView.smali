.class public Lcom/dianxinos/lockscreen/ui/InfoProgressView;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:F

.field private c:Landroid/graphics/RectF;

.field private d:I

.field private e:I

.field private f:I

.field private g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dianxinos/lockscreen/ui/InfoProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dianxinos/lockscreen/ui/InfoProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dianxinos/lockscreen/aa;->lock_screen_info_cycle_progress_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->d:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->c:Landroid/graphics/RectF;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->a:Landroid/graphics/Paint;

    const v1, -0x65000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->c:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->b:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->a:Landroid/graphics/Paint;

    const v1, -0xba771b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->e:I

    int-to-float v0, v0

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->g:F

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const/16 v0, 0x64

    const/16 v2, 0x63

    const/4 v1, 0x1

    if-gtz p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    const v0, 0x40666666    # 3.6f

    int-to-float v1, p1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->b:F

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->postInvalidate()V

    return-void

    :cond_1
    if-lt p1, v0, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    if-gt p1, v1, :cond_3

    move p1, v1

    goto :goto_0

    :cond_3
    if-lt p1, v2, :cond_0

    move p1, v2

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->d:I

    :cond_0
    iget v0, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->d:I

    shr-int/lit8 v0, v0, 0x1

    if-le p1, p2, :cond_2

    :goto_0
    rem-int/lit8 v1, p2, 0x2

    if-ne v1, v2, :cond_1

    add-int/lit8 p2, p2, -0x1

    :cond_1
    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->c:Landroid/graphics/RectF;

    int-to-float v2, v0

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->c:Landroid/graphics/RectF;

    int-to-float v2, v0

    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->c:Landroid/graphics/RectF;

    sub-int v2, p2, v0

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->c:Landroid/graphics/RectF;

    sub-int v0, p2, v0

    int-to-float v0, v0

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    shr-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->e:I

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->f:I

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->d:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/InfoProgressView;->g:F

    return-void

    :cond_2
    move p2, p1

    goto :goto_0
.end method
