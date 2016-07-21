.class public Lcom/estrongs/android/ui/view/HomeSdcardProgressView;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/text/TextPaint;

.field private c:Landroid/text/TextPaint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/RectF;

.field private f:Landroid/graphics/PointF;

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:Ljava/text/DecimalFormat;

.field private n:F

.field private o:I

.field private p:F

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, 0x7f070087

    iput v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->g:I

    const v0, 0x7f07004e

    iput v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->h:I

    const v0, 0x7f070047

    iput v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->i:I

    const-string v0, "#000000"

    iput-object v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->j:Ljava/lang/String;

    const v0, 0x7f0d0072

    iput v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->k:I

    const v0, 0x7f0d0052

    iput v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->l:I

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->m:Ljava/text/DecimalFormat;

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f070087

    iput v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->g:I

    const v0, 0x7f07004e

    iput v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->h:I

    const v0, 0x7f070047

    iput v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->i:I

    const-string v0, "#000000"

    iput-object v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->j:Ljava/lang/String;

    const v0, 0x7f0d0072

    iput v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->k:I

    const v0, 0x7f0d0052

    iput v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->l:I

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->m:Ljava/text/DecimalFormat;

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f070087

    iput v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->g:I

    const v0, 0x7f07004e

    iput v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->h:I

    const v0, 0x7f070047

    iput v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->i:I

    const-string v0, "#000000"

    iput-object v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->j:Ljava/lang/String;

    const v0, 0x7f0d0072

    iput v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->k:I

    const v0, 0x7f0d0052

    iput v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->l:I

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->m:Ljava/text/DecimalFormat;

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->a()V

    return-void
.end method

.method private a(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->l:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->b:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->b:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->b:Landroid/text/TextPaint;

    iget v1, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->h:I

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->c:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->c:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->c:Landroid/text/TextPaint;

    iget v1, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->i:I

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->k:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->d:Landroid/graphics/Paint;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->o:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->e:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v3, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->p:F

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->f:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->f:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->r:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 7

    const/high16 v5, 0x40000000    # 2.0f

    const v3, 0x3c23d70a    # 0.01f

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->n:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->n:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->b:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iget-object v2, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->b:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v5

    iget-object v2, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->b:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->b:Landroid/text/TextPaint;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->c:Landroid/text/TextPaint;

    const-string v4, "%"

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->f:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v2

    iget-object v5, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->f:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v0

    iget-object v6, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->b:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const-string v3, "%"

    iget-object v4, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->f:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v2, v4, v2

    iget-object v4, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->b:Landroid/text/TextPaint;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->f:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->c:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->n:F

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->n:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->m:Ljava/text/DecimalFormat;

    iget v2, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->n:F

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public a(JJ)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->n:F

    :goto_0
    long-to-float v0, p1

    mul-float/2addr v0, v2

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->p:F

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->postInvalidate()V

    return-void

    :cond_0
    long-to-float v0, p1

    mul-float/2addr v0, v2

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->n:F

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_0
    iput v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->q:I

    const v0, 0x7f070060

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->a(I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->r:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->e:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->f:Landroid/graphics/PointF;

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->b(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->c(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget v0, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->g:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->a(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, p1}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->resolveSize(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, p2}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->resolveSize(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setProgressColor(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/view/HomeSdcardProgressView;->o:I

    return-void
.end method
