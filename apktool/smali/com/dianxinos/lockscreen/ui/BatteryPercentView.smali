.class public Lcom/dianxinos/lockscreen/ui/BatteryPercentView;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:Landroid/graphics/RectF;

.field private d:Landroid/graphics/Rect;

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/Bitmap;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->a()V

    return-void
.end method

.method private getBatteryHeight()I
    .locals 2

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->k:I

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->i:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->j:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->b:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->b()V

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->c()V

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dianxinos/lockscreen/aa;->lock_screen_battery_percent_frame:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->i:I

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dianxinos/lockscreen/aa;->lock_screen_battery_percent_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->j:I

    return-void
.end method

.method public b()V
    .locals 1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->a:Landroid/graphics/Paint;

    return-void
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dianxinos/lockscreen/ab;->lock_screen_battery:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->f:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->h:I

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->g:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->f:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->d:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->e:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->a:Landroid/graphics/Paint;

    const v1, 0x4cffffff    # 1.3421772E8f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->c:Landroid/graphics/RectF;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->k:I

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->getBatteryHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p2, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->k:I

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->i:I

    int-to-float v1, v1

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->j:I

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->i:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->i:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->i:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->c:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->g:I

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->h:I

    invoke-direct {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->d:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v5, v5, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->e:Landroid/graphics/Rect;

    return-void
.end method

.method public setPercent(I)V
    .locals 1

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->b:I

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/BatteryPercentView;->postInvalidate()V

    goto :goto_0
.end method
