.class public Lcom/estrongs/android/ui/view/ColorPickerView;
.super Landroid/view/View;


# static fields
.field public static a:F


# instance fields
.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private final d:[I

.field private e:Lcom/estrongs/android/ui/view/a;

.field private f:I

.field private g:Landroid/graphics/RectF;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/estrongs/android/ui/view/ColorPickerView;->a:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->d:[I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->g:Landroid/graphics/RectF;

    iput v1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->j:I

    iput v1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->k:I

    iput v1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->l:I

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/ColorPickerView;->a()V

    return-void

    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x1
        -0x1000000
        -0x10000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/ui/view/a;I)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->d:[I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->g:Landroid/graphics/RectF;

    iput v1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->j:I

    iput v1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->k:I

    iput v1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->l:I

    iput-object p2, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->e:Lcom/estrongs/android/ui/view/a;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/ColorPickerView;->a()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x1
        -0x1000000
        -0x10000
    .end array-data
.end method

.method private a(IIF)I
    .locals 1

    sub-int v0, p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private a([IF)I
    .locals 7

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    aget v0, p1, v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget v0, p1, v0

    goto :goto_0

    :cond_1
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v1, v0

    int-to-float v2, v1

    sub-float/2addr v0, v2

    aget v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    aget v1, p1, v1

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-direct {p0, v3, v4, v0}, Lcom/estrongs/android/ui/view/ColorPickerView;->a(IIF)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-direct {p0, v4, v5, v0}, Lcom/estrongs/android/ui/view/ColorPickerView;->a(IIF)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-direct {p0, v5, v6, v0}, Lcom/estrongs/android/ui/view/ColorPickerView;->a(IIF)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-direct {p0, v2, v1, v0}, Lcom/estrongs/android/ui/view/ColorPickerView;->a(IIF)I

    move-result v0

    invoke-static {v3, v4, v5, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0
.end method

.method private a()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/SweepGradient;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->d:[I

    const/4 v2, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public getCurrentColor()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->f:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->j:I

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->j:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->b:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->j:I

    int-to-float v1, v1

    iget v2, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->j:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->g:Landroid/graphics/RectF;

    neg-float v2, v0

    neg-float v3, v0

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->g:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->l:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-boolean v1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->i:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->c:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    iget v1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->l:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->c:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->c:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->j:I

    iput v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->k:I

    const-wide v2, 0x3fd3333333333333L    # 0.3

    int-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->l:I

    iget v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->j:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->k:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/view/ColorPickerView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->j:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v4, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->k:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    mul-float v0, v3, v3

    mul-float v5, v4, v4

    add-float/2addr v0, v5

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iget v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->l:I

    int-to-double v8, v0

    cmpg-double v0, v6, v8

    if-gtz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :pswitch_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->h:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->i:Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ColorPickerView;->invalidate()V

    goto :goto_1

    :cond_2
    :pswitch_1
    iget-boolean v2, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->h:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->i:Z

    if-eq v2, v0, :cond_0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->i:Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ColorPickerView;->invalidate()V

    goto :goto_1

    :cond_3
    float-to-double v4, v4

    float-to-double v2, v3

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v0, v2

    const v2, 0x40c90fda

    div-float/2addr v0, v2

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    :cond_4
    iget-object v2, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->c:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->d:[I

    invoke-direct {p0, v3, v0}, Lcom/estrongs/android/ui/view/ColorPickerView;->a([IF)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->f:I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->e:Lcom/estrongs/android/ui/view/a;

    iget v2, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->f:I

    invoke-interface {v0, v2}, Lcom/estrongs/android/ui/view/a;->a(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ColorPickerView;->invalidate()V

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->e:Lcom/estrongs/android/ui/view/a;

    iget-object v3, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->c:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/estrongs/android/ui/view/a;->a(I)V

    iput-boolean v2, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->h:Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ColorPickerView;->invalidate()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput p1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->f:I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->e:Lcom/estrongs/android/ui/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->e:Lcom/estrongs/android/ui/view/a;

    invoke-interface {v0, p1}, Lcom/estrongs/android/ui/view/a;->a(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setOnColorChangeListener(Lcom/estrongs/android/ui/view/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ColorPickerView;->e:Lcom/estrongs/android/ui/view/a;

    return-void
.end method

.method public setScale(F)V
    .locals 0

    sput p1, Lcom/estrongs/android/ui/view/ColorPickerView;->a:F

    return-void
.end method
