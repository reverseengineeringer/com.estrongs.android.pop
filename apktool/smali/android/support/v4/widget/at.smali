.class Landroid/support/v4/widget/at;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final b:Landroid/view/animation/Interpolator;

.field private static final c:Landroid/view/animation/Interpolator;


# instance fields
.field a:Z

.field private final d:[I

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/support/v4/widget/ax;

.field private g:F

.field private h:Landroid/content/res/Resources;

.field private i:Landroid/view/View;

.field private j:Landroid/view/animation/Animation;

.field private k:F

.field private l:D

.field private m:D

.field private final n:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/at;->b:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/support/v4/view/b/b;

    invoke-direct {v0}, Landroid/support/v4/view/b/b;-><init>()V

    sput-object v0, Landroid/support/v4/widget/at;->c:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-array v0, v3, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    iput-object v0, p0, Landroid/support/v4/widget/at;->d:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/at;->e:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v4/widget/aw;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/aw;-><init>(Landroid/support/v4/widget/at;)V

    iput-object v0, p0, Landroid/support/v4/widget/at;->n:Landroid/graphics/drawable/Drawable$Callback;

    iput-object p2, p0, Landroid/support/v4/widget/at;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/at;->h:Landroid/content/res/Resources;

    new-instance v0, Landroid/support/v4/widget/ax;

    iget-object v1, p0, Landroid/support/v4/widget/at;->n:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/ax;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v0, p0, Landroid/support/v4/widget/at;->f:Landroid/support/v4/widget/ax;

    iget-object v0, p0, Landroid/support/v4/widget/at;->f:Landroid/support/v4/widget/ax;

    iget-object v1, p0, Landroid/support/v4/widget/at;->d:[I

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ax;->a([I)V

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/at;->a(I)V

    invoke-direct {p0}, Landroid/support/v4/widget/at;->b()V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/at;)F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/at;->k:F

    return v0
.end method

.method static synthetic a(Landroid/support/v4/widget/at;F)F
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/at;->k:F

    return p1
.end method

.method static synthetic a(Landroid/support/v4/widget/at;Landroid/support/v4/widget/ax;)F
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/widget/at;->a(Landroid/support/v4/widget/ax;)F

    move-result v0

    return v0
.end method

.method private a(Landroid/support/v4/widget/ax;)F
    .locals 6

    invoke-virtual {p1}, Landroid/support/v4/widget/ax;->d()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    invoke-virtual {p1}, Landroid/support/v4/widget/ax;->j()D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private a(FII)I
    .locals 8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shr-int/lit8 v1, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v0, v0, 0xff

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    shr-int/lit8 v5, v4, 0x18

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v6, v4, 0x10

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v7, v4, 0x8

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v4, v4, 0xff

    sub-int/2addr v5, v1

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    add-int/2addr v1, v5

    shl-int/lit8 v1, v1, 0x18

    sub-int v5, v6, v2

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    add-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    sub-int v2, v7, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    sub-int v2, v4, v0

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v0, v2

    or-int/2addr v0, v1

    return v0
.end method

.method static synthetic a()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/support/v4/widget/at;->c:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private a(DDDDFF)V
    .locals 5

    iget-object v0, p0, Landroid/support/v4/widget/at;->f:Landroid/support/v4/widget/ax;

    iget-object v1, p0, Landroid/support/v4/widget/at;->h:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v1

    mul-double/2addr v2, p1

    iput-wide v2, p0, Landroid/support/v4/widget/at;->l:D

    float-to-double v2, v1

    mul-double/2addr v2, p3

    iput-wide v2, p0, Landroid/support/v4/widget/at;->m:D

    double-to-float v2, p7

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/ax;->a(F)V

    float-to-double v2, v1

    mul-double/2addr v2, p5

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/widget/ax;->a(D)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/ax;->c(I)V

    mul-float v2, p9, v1

    mul-float/2addr v1, p10

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/widget/ax;->a(FF)V

    iget-wide v2, p0, Landroid/support/v4/widget/at;->l:D

    double-to-int v1, v2

    iget-wide v2, p0, Landroid/support/v4/widget/at;->m:D

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ax;->a(II)V

    return-void
.end method

.method private a(FLandroid/support/v4/widget/ax;)V
    .locals 3

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    sub-float v0, p1, v1

    const/high16 v1, 0x3e800000    # 0.25f

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/support/v4/widget/ax;->h()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v4/widget/ax;->a()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/widget/at;->a(FII)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/ax;->b(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/at;FLandroid/support/v4/widget/ax;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/at;->b(FLandroid/support/v4/widget/ax;)V

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/widget/at;->f:Landroid/support/v4/widget/ax;

    new-instance v1, Landroid/support/v4/widget/au;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/widget/au;-><init>(Landroid/support/v4/widget/at;Landroid/support/v4/widget/ax;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    sget-object v2, Landroid/support/v4/widget/at;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/support/v4/widget/av;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/widget/av;-><init>(Landroid/support/v4/widget/at;Landroid/support/v4/widget/ax;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v1, p0, Landroid/support/v4/widget/at;->j:Landroid/view/animation/Animation;

    return-void
.end method

.method private b(FLandroid/support/v4/widget/ax;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/at;->a(FLandroid/support/v4/widget/ax;)V

    invoke-virtual {p2}, Landroid/support/v4/widget/ax;->k()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    invoke-direct {p0, p2}, Landroid/support/v4/widget/at;->a(Landroid/support/v4/widget/ax;)F

    move-result v1

    invoke-virtual {p2}, Landroid/support/v4/widget/ax;->f()F

    move-result v2

    invoke-virtual {p2}, Landroid/support/v4/widget/ax;->g()F

    move-result v3

    sub-float v1, v3, v1

    invoke-virtual {p2}, Landroid/support/v4/widget/ax;->f()F

    move-result v3

    sub-float/2addr v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/support/v4/widget/ax;->b(F)V

    invoke-virtual {p2}, Landroid/support/v4/widget/ax;->g()F

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/v4/widget/ax;->c(F)V

    invoke-virtual {p2}, Landroid/support/v4/widget/ax;->k()F

    move-result v1

    invoke-virtual {p2}, Landroid/support/v4/widget/ax;->k()F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/ax;->d(F)V

    return-void
.end method

.method static synthetic b(Landroid/support/v4/widget/at;FLandroid/support/v4/widget/ax;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/at;->a(FLandroid/support/v4/widget/ax;)V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/at;->f:Landroid/support/v4/widget/ax;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ax;->e(F)V

    return-void
.end method

.method public a(FF)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/at;->f:Landroid/support/v4/widget/ax;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ax;->b(F)V

    iget-object v0, p0, Landroid/support/v4/widget/at;->f:Landroid/support/v4/widget/ax;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/ax;->c(F)V

    return-void
.end method

.method public a(I)V
    .locals 14

    const-wide/high16 v2, 0x404c000000000000L    # 56.0

    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    if-nez p1, :cond_0

    const-wide/high16 v6, 0x4029000000000000L    # 12.5

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v11, 0x40c00000    # 6.0f

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v1 .. v11}, Landroid/support/v4/widget/at;->a(DDDDFF)V

    :goto_0
    return-void

    :cond_0
    const-wide v6, 0x4021800000000000L    # 8.75

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v11, 0x40a00000    # 5.0f

    move-object v1, p0

    move-wide v2, v12

    move-wide v4, v12

    invoke-direct/range {v1 .. v11}, Landroid/support/v4/widget/at;->a(DDDDFF)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/at;->f:Landroid/support/v4/widget/ax;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ax;->a(Z)V

    return-void
.end method

.method public varargs a([I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/at;->f:Landroid/support/v4/widget/ax;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ax;->a([I)V

    iget-object v0, p0, Landroid/support/v4/widget/at;->f:Landroid/support/v4/widget/ax;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ax;->c(I)V

    return-void
.end method

.method public b(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/at;->f:Landroid/support/v4/widget/ax;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ax;->d(F)V

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/at;->f:Landroid/support/v4/widget/ax;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ax;->a(I)V

    return-void
.end method

.method c(F)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/at;->g:F

    invoke-virtual {p0}, Landroid/support/v4/widget/at;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Landroid/support/v4/widget/at;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/at;->g:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v2, p0, Landroid/support/v4/widget/at;->f:Landroid/support/v4/widget/ax;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/widget/ax;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/at;->f:Landroid/support/v4/widget/ax;

    invoke-virtual {v0}, Landroid/support/v4/widget/ax;->c()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/widget/at;->m:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/widget/at;->l:D

    double-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/support/v4/widget/at;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/at;->f:Landroid/support/v4/widget/ax;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ax;->d(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/at;->f:Landroid/support/v4/widget/ax;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ax;->a(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/widget/at;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iget-object v0, p0, Landroid/support/v4/widget/at;->f:Landroid/support/v4/widget/ax;

    invoke-virtual {v0}, Landroid/support/v4/widget/ax;->l()V

    iget-object v0, p0, Landroid/support/v4/widget/at;->f:Landroid/support/v4/widget/ax;

    invoke-virtual {v0}, Landroid/support/v4/widget/ax;->i()F

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/at;->f:Landroid/support/v4/widget/ax;

    invoke-virtual {v1}, Landroid/support/v4/widget/ax;->e()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/at;->a:Z

    iget-object v0, p0, Landroid/support/v4/widget/at;->j:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroid/support/v4/widget/at;->i:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/at;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/at;->f:Landroid/support/v4/widget/ax;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ax;->c(I)V

    iget-object v0, p0, Landroid/support/v4/widget/at;->f:Landroid/support/v4/widget/ax;

    invoke-virtual {v0}, Landroid/support/v4/widget/ax;->m()V

    iget-object v0, p0, Landroid/support/v4/widget/at;->j:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x534

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroid/support/v4/widget/at;->i:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/at;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/at;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/at;->c(F)V

    iget-object v0, p0, Landroid/support/v4/widget/at;->f:Landroid/support/v4/widget/ax;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ax;->a(Z)V

    iget-object v0, p0, Landroid/support/v4/widget/at;->f:Landroid/support/v4/widget/ax;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ax;->c(I)V

    iget-object v0, p0, Landroid/support/v4/widget/at;->f:Landroid/support/v4/widget/ax;

    invoke-virtual {v0}, Landroid/support/v4/widget/ax;->m()V

    return-void
.end method
