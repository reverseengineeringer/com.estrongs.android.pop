.class public Lcom/flurry/sdk/hh;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I


# instance fields
.field private c:Landroid/graphics/Path;

.field private d:Landroid/graphics/drawable/shapes/PathShape;

.field private e:Landroid/graphics/drawable/ShapeDrawable;

.field private f:Landroid/widget/TextView;

.field private g:I

.field private h:F

.field private i:Landroid/graphics/RectF;

.field private final j:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/flurry/sdk/hh;->c:Landroid/graphics/Path;

    iput-object v1, p0, Lcom/flurry/sdk/hh;->d:Landroid/graphics/drawable/shapes/PathShape;

    iput-object v1, p0, Lcom/flurry/sdk/hh;->e:Landroid/graphics/drawable/ShapeDrawable;

    iput-object v1, p0, Lcom/flurry/sdk/hh;->f:Landroid/widget/TextView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/hh;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/hh;->h:F

    iput-object v1, p0, Lcom/flurry/sdk/hh;->i:Landroid/graphics/RectF;

    const/high16 v0, -0x3d4c0000    # -90.0f

    iput v0, p0, Lcom/flurry/sdk/hh;->j:F

    const/4 v0, 0x3

    sput v0, Lcom/flurry/sdk/hh;->a:I

    const/4 v0, 0x1

    sput v0, Lcom/flurry/sdk/hh;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/flurry/sdk/hh;->c:Landroid/graphics/Path;

    iput-object v1, p0, Lcom/flurry/sdk/hh;->d:Landroid/graphics/drawable/shapes/PathShape;

    iput-object v1, p0, Lcom/flurry/sdk/hh;->e:Landroid/graphics/drawable/ShapeDrawable;

    iput-object v1, p0, Lcom/flurry/sdk/hh;->f:Landroid/widget/TextView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/hh;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/hh;->h:F

    iput-object v1, p0, Lcom/flurry/sdk/hh;->i:Landroid/graphics/RectF;

    const/high16 v0, -0x3d4c0000    # -90.0f

    iput v0, p0, Lcom/flurry/sdk/hh;->j:F

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/hh;->a:I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/hh;->b:I

    invoke-direct {p0, p2, p3}, Lcom/flurry/sdk/hh;->a(II)I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/hh;->g:I

    invoke-direct {p0, p1}, Lcom/flurry/sdk/hh;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(II)I
    .locals 1

    if-ge p1, p2, :cond_0

    div-int/lit8 v0, p1, 0x2

    :goto_0
    return v0

    :cond_0
    div-int/lit8 v0, p2, 0x2

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/hh;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/hh;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/hh;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/flurry/sdk/hh;->f:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/flurry/sdk/hh;->f:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/flurry/sdk/hh;->f:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/flurry/sdk/hh;->f:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/hh;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/hh;->d(I)V

    return-void
.end method

.method private d(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/hh;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/hh;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/hh;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private e(I)V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/hh$2;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/hh$2;-><init>(Lcom/flurry/sdk/hh;I)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private f(I)V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/hh$3;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/hh$3;-><init>(Lcom/flurry/sdk/hh;I)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/hh;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/hh;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/hh;->e(I)V

    invoke-direct {p0, p1}, Lcom/flurry/sdk/hh;->f(I)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    div-int/lit16 v0, p1, 0x3e8

    const/high16 v1, 0x43b40000    # 360.0f

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/flurry/sdk/hh;->h:F

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/hh$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/hh$1;-><init>(Lcom/flurry/sdk/hh;I)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(I)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/hh;->i:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/flurry/sdk/hh;->i:Landroid/graphics/RectF;

    sget v1, Lcom/flurry/sdk/hh;->a:I

    int-to-float v1, v1

    sget v2, Lcom/flurry/sdk/hh;->a:I

    int-to-float v2, v2

    iget v3, p0, Lcom/flurry/sdk/hh;->g:I

    sget v4, Lcom/flurry/sdk/hh;->a:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/flurry/sdk/hh;->g:I

    sget v5, Lcom/flurry/sdk/hh;->a:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/hh;->c:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/flurry/sdk/hh;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/flurry/sdk/hh;->i:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    neg-int v3, p1

    int-to-float v3, v3

    iget v4, p0, Lcom/flurry/sdk/hh;->h:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    new-instance v0, Landroid/graphics/drawable/shapes/PathShape;

    iget-object v1, p0, Lcom/flurry/sdk/hh;->c:Landroid/graphics/Path;

    iget v2, p0, Lcom/flurry/sdk/hh;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/flurry/sdk/hh;->g:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    iput-object v0, p0, Lcom/flurry/sdk/hh;->d:Landroid/graphics/drawable/shapes/PathShape;

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    iget-object v1, p0, Lcom/flurry/sdk/hh;->d:Landroid/graphics/drawable/shapes/PathShape;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/flurry/sdk/hh;->e:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v0, p0, Lcom/flurry/sdk/hh;->e:Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/flurry/sdk/hh;->g:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    iget-object v0, p0, Lcom/flurry/sdk/hh;->e:Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/flurry/sdk/hh;->g:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    iget-object v0, p0, Lcom/flurry/sdk/hh;->e:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/flurry/sdk/hh;->e:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/flurry/sdk/hh;->e:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/flurry/sdk/hh;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/flurry/sdk/hh;->e:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v1, v7

    iget-object v0, p0, Lcom/flurry/sdk/hh;->e:Landroid/graphics/drawable/ShapeDrawable;

    aput-object v0, v1, v6

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object v0
.end method
