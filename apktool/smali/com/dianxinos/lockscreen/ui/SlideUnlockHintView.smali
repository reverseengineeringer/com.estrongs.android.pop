.class public Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;
.super Landroid/view/View;


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static final g:[F

.field private static final h:[I


# instance fields
.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Shader;

.field private k:Lcom/nineoldandroids/a/ac;

.field private l:Landroid/graphics/Matrix;

.field private m:[Landroid/graphics/Path;

.field private n:Ljava/lang/String;

.field private o:Landroid/graphics/Rect;

.field private p:Landroid/graphics/Paint$FontMetrics;

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Landroid/content/Context;

.field private w:Z

.field private x:Lcom/dianxinos/lockscreen/ui/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x3

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->g:[F

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->h:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x19000001
        0x30ffffff
        0x30ffffff
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->q:I

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->r:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->q:I

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->r:I

    invoke-direct {p0, p1, p2}, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;)Landroid/graphics/Shader;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->j:Landroid/graphics/Shader;

    return-object v0
.end method

.method private a(II)V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sget v3, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->b:I

    sget v4, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->a:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    if-lez v3, :cond_2

    sget v3, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->d:I

    add-int/2addr v0, v3

    :goto_1
    iput v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->u:I

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->s:I

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->u:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    sget v3, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->f:I

    sub-int v8, v0, v3

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->t:I

    sget v3, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->c:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    :goto_2
    const/4 v3, 0x3

    if-ge v1, v3, :cond_3

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    sget v4, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->b:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v8

    int-to-float v5, v4

    int-to-float v6, v0

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    sget v5, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->b:I

    add-int/2addr v5, v4

    int-to-float v5, v5

    sget v6, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->c:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v0

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v4, v4

    sget v5, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->c:I

    add-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->m:[Landroid/graphics/Path;

    aput-object v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->u:I

    sub-int v0, v8, v0

    sget v1, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->f:I

    sub-int v1, v0, v1

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->u:I

    add-int/2addr v0, v8

    sget v3, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->f:I

    add-int/2addr v3, v0

    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v1, v1

    int-to-float v3, v3

    sget-object v5, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->h:[I

    sget-object v6, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->g:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move v4, v2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->j:Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->j:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    sget v0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->b:I

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v8

    sget v1, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->q:I

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->t:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->p:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->p:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->r:I

    goto/16 :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, -0x1

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->v:Landroid/content/Context;

    new-instance v0, Lcom/dianxinos/lockscreen/ui/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dianxinos/lockscreen/ui/t;-><init>(Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;Lcom/dianxinos/lockscreen/ui/r;)V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->x:Lcom/dianxinos/lockscreen/ui/t;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->v:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/dianxinos/lockscreen/c/l;->a(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->a:I

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->v:Landroid/content/Context;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/l;->a(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->b:I

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->v:Landroid/content/Context;

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/l;->a(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->c:I

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->v:Landroid/content/Context;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/l;->a(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->d:I

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->v:Landroid/content/Context;

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/l;->a(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->e:I

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->v:Landroid/content/Context;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/l;->a(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->f:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->i:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->i:Landroid/graphics/Paint;

    sget v1, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->a:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->l:Landroid/graphics/Matrix;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Path;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->m:[Landroid/graphics/Path;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/nineoldandroids/a/ac;->b([F)Lcom/nineoldandroids/a/ac;

    move-result-object v0

    const-wide/16 v2, 0x640

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/a/ac;->b(J)Lcom/nineoldandroids/a/ac;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/ac;->a(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/dianxinos/lockscreen/ui/r;

    invoke-direct {v1, p0}, Lcom/dianxinos/lockscreen/ui/r;-><init>(Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/ac;->a(Lcom/nineoldandroids/a/aj;)V

    new-instance v1, Lcom/dianxinos/lockscreen/ui/s;

    invoke-direct {v1, p0}, Lcom/dianxinos/lockscreen/ui/s;-><init>(Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/ac;->a(Lcom/nineoldandroids/a/b;)V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->k:Lcom/nineoldandroids/a/ac;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->o:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->v:Landroid/content/Context;

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/dianxinos/lockscreen/c/l;->b(Landroid/content/Context;I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->p:Landroid/graphics/Paint$FontMetrics;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->n:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->n:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/dianxinos/lockscreen/ae;->SlideUnlockHintView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/dianxinos/lockscreen/ae;->SlideUnlockHintView_hintText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->n:Ljava/lang/String;

    sget v1, Lcom/dianxinos/lockscreen/ae;->SlideUnlockHintView_hintTextSize:I

    sget v2, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->e:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    sget v2, Lcom/dianxinos/lockscreen/ae;->SlideUnlockHintView_hintTextColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->j:Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->l:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->j:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->i:Landroid/graphics/Paint;

    sget v1, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->a:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->m:[Landroid/graphics/Path;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->setGradientPositionByProgress(F)V

    return-void
.end method

.method static synthetic b(Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;)Lcom/dianxinos/lockscreen/ui/t;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->x:Lcom/dianxinos/lockscreen/ui/t;

    return-object v0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->n:Ljava/lang/String;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->q:I

    int-to-float v1, v1

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->r:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->w:Z

    return v0
.end method

.method private setGradientPositionByProgress(F)V
    .locals 3

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->l:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->u:I

    sget v2, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->f:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->w:Z

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->x:Lcom/dianxinos/lockscreen/ui/t;

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/ui/t;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->k:Lcom/nineoldandroids/a/ac;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/ac;->c()V

    iput-object v1, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->x:Lcom/dianxinos/lockscreen/ui/t;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->w:Z

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->k:Lcom/nineoldandroids/a/ac;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/ac;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->k:Lcom/nineoldandroids/a/ac;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/ac;->a()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->w:Z

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->x:Lcom/dianxinos/lockscreen/ui/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/ui/t;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->k:Lcom/nineoldandroids/a/ac;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/ac;->c()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->setGradientPositionByProgress(F)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->b(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-ne v0, v3, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->s:I

    :goto_0
    if-ne v1, v3, :cond_2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->t:I

    :goto_1
    iget v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->s:I

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->t:I

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    sget v0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->b:I

    mul-int/lit8 v0, v0, 0x3

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->o:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v0, v2

    if-lez v0, :cond_1

    sget v0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->d:I

    add-int/2addr v0, v2

    :goto_2
    iput v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->s:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    sget v0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->c:I

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->o:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->t:I

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0, p1, p2}, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->a(II)V

    return-void
.end method
