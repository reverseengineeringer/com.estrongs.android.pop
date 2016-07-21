.class public Lcom/dianxinos/lockscreen/ui/ChargeCleanView;
.super Landroid/view/View;


# instance fields
.field private A:Landroid/graphics/Paint;

.field private B:[Landroid/graphics/Paint;

.field private C:Landroid/graphics/Path;

.field private D:Landroid/graphics/Matrix;

.field private final E:Landroid/graphics/PointF;

.field private final F:Landroid/graphics/PointF;

.field private G:J

.field private H:[J

.field private I:I

.field private J:I

.field private K:F

.field private L:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/dianxinos/lockscreen/ui/g;",
            ">;"
        }
    .end annotation
.end field

.field private M:Lcom/dianxinos/lockscreen/ui/h;

.field private N:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:Landroid/graphics/Bitmap;

.field private u:Landroid/graphics/Bitmap;

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->p:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->q:F

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->r:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->s:F

    new-array v0, v1, [Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->B:[Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->C:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->E:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->F:Landroid/graphics/PointF;

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->H:[J

    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->K:F

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->L:Ljava/util/LinkedList;

    sget-object v0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;->IDLE:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->N:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(I)D
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->G:J

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->H:[J

    aget-wide v4, v1, p1

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    rem-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    float-to-double v0, v0

    return-wide v0

    :cond_1
    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    div-float v0, v1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/ui/ChargeCleanView;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->F:Landroid/graphics/PointF;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v0, Lcom/dianxinos/lockscreen/aa;->lock_screen_outer_radius_width:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->a:F

    sget v0, Lcom/dianxinos/lockscreen/aa;->lock_screen_middle_radius_width:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->b:F

    sget v0, Lcom/dianxinos/lockscreen/aa;->lock_screen_inner_radius_width:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->c:F

    sget v0, Lcom/dianxinos/lockscreen/aa;->lock_screen_outer_line_width:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->e:F

    sget v0, Lcom/dianxinos/lockscreen/aa;->lock_screen_middle_line_width:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->f:F

    sget v0, Lcom/dianxinos/lockscreen/aa;->lock_screen_inner_line_width:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->g:F

    sget v0, Lcom/dianxinos/lockscreen/aa;->lock_screen_halo_radius_width:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->d:F

    sget v0, Lcom/dianxinos/lockscreen/ab;->lock_screen_turbine:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->t:Landroid/graphics/Bitmap;

    sget v0, Lcom/dianxinos/lockscreen/ab;->lock_screen_scan:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->u:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->v:I

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->w:I

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->u:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->x:I

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->u:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->y:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->A:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->A:Landroid/graphics/Paint;

    const v1, -0xb65b22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->A:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->A:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->e:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->B:[Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->B:[Landroid/graphics/Paint;

    aget-object v0, v0, v3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->B:[Landroid/graphics/Paint;

    aget-object v0, v0, v3

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->B:[Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->B:[Landroid/graphics/Paint;

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->B:[Landroid/graphics/Paint;

    aget-object v0, v0, v2

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->B:[Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->B:[Landroid/graphics/Paint;

    aget-object v0, v0, v4

    const v1, -0xde5e0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->B:[Landroid/graphics/Paint;

    aget-object v0, v0, v4

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sget-object v2, Lcom/dianxinos/lockscreen/ui/f;->a:[I

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->N:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    invoke-virtual {v3}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->getInitOuterInter()D

    move-result-wide v0

    :goto_1
    :pswitch_1
    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    const v3, 0x1affffff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->a:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->h:F

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->I:I

    int-to-float v0, v0

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->J:I

    int-to-float v1, v1

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->h:F

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    const v1, 0x65ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->e:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->I:I

    int-to-float v0, v0

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->J:I

    int-to-float v1, v1

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->h:F

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->getFinishOuterSizeInter()D

    move-result-wide v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a()Z
    .locals 4

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->L:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->G:J

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->L:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/ui/g;

    iget-wide v0, v0, Lcom/dianxinos/lockscreen/ui/g;->d:J

    sub-long v0, v2, v0

    const-wide/16 v2, 0x320

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)D
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->G:J

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->H:[J

    aget-wide v4, v1, p1

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    rem-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    float-to-double v0, v0

    return-wide v0

    :cond_1
    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    div-float v0, v1, v0

    mul-float/2addr v0, v6

    sub-float v0, v6, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/dianxinos/lockscreen/ui/ChargeCleanView;)J
    .locals 2

    iget-wide v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->G:J

    return-wide v0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sget-object v2, Lcom/dianxinos/lockscreen/ui/f;->a:[I

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->N:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    invoke-virtual {v3}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->getInitInnerInter()D

    move-result-wide v0

    :goto_1
    :pswitch_1
    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    const v3, 0x1affffff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->b:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->i:F

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->I:I

    int-to-float v0, v0

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->J:I

    int-to-float v1, v1

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->i:F

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    const v1, 0x4affffff    # 8388607.5f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->f:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->I:I

    int-to-float v0, v0

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->J:I

    int-to-float v1, v1

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->i:F

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->getFinishMiddleSizeInter()D

    move-result-wide v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/dianxinos/lockscreen/ui/ChargeCleanView;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->L:Ljava/util/LinkedList;

    return-object v0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sget-object v2, Lcom/dianxinos/lockscreen/ui/f;->a:[I

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->N:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    invoke-virtual {v3}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->getInitInnerInter()D

    move-result-wide v2

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->getInitInnerAlphaInter()D

    move-result-wide v0

    :goto_1
    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    const v4, -0xff8d44

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->c:F

    float-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->j:F

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->I:I

    int-to-float v1, v1

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->J:I

    int-to-float v2, v2

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->j:F

    iget-object v4, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    const v2, -0x26000001

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->g:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->I:I

    int-to-float v0, v0

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->J:I

    int-to-float v1, v1

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->j:F

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_1
    move-wide v2, v0

    goto :goto_1

    :pswitch_2
    move-wide v2, v0

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->getFinishInnerSizeInter()D

    move-result-wide v2

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->getFinishInnerAlphaInter()D

    move-result-wide v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic d(Lcom/dianxinos/lockscreen/ui/ChargeCleanView;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->E:Landroid/graphics/PointF;

    return-object v0
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v4, 0x0

    const-wide v8, 0x406fe00000000000L    # 255.0

    sget-object v0, Lcom/dianxinos/lockscreen/ui/f;->a:[I

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->N:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    invoke-virtual {v1}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->getInitInnerInter()D

    move-result-wide v0

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->getInitInnerAlphaInter()D

    move-result-wide v2

    iget-object v4, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    mul-double/2addr v2, v8

    double-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    double-to-float v3, v0

    double-to-float v0, v0

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->v:I

    int-to-float v1, v1

    iget v4, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->w:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->I:I

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->v:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->J:I

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->w:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->t:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->K:F

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->w:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->I:I

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->v:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->J:I

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->w:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->t:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->K:F

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->w:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->I:I

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->v:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->J:I

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->w:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->t:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->getFinishInnerSizeInter()D

    move-result-wide v0

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->getFinishInnerAlphaInter()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->G:J

    iget-wide v6, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->o:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    const/high16 v5, 0x44480000    # 800.0f

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    mul-double/2addr v2, v8

    double-to-int v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    double-to-float v3, v0

    double-to-float v0, v0

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->v:I

    int-to-float v1, v1

    iget v5, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->w:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v0, v1, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->q:F

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->K:F

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->w:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->I:I

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->v:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->J:I

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->w:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->t:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic e(Lcom/dianxinos/lockscreen/ui/ChargeCleanView;)I
    .locals 1

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->I:I

    return v0
.end method

.method private e(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x0

    const-wide v4, 0x406fe00000000000L    # 255.0

    sget-object v0, Lcom/dianxinos/lockscreen/ui/f;->a:[I

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->N:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    invoke-virtual {v1}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->getInitScanAlphaInter()D

    move-result-wide v0

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    mul-double/2addr v0, v4

    double-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->I:I

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->x:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->J:I

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->u:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->K:F

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->I:I

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->x:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->J:I

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->u:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->K:F

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->I:I

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->x:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->J:I

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->u:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->getFinishScanAlphaInter()D

    move-result-wide v0

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    mul-double/2addr v0, v4

    double-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->K:F

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->I:I

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->x:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->J:I

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->u:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->z:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic f(Lcom/dianxinos/lockscreen/ui/ChargeCleanView;)I
    .locals 1

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->J:I

    return v0
.end method

.method private f(Landroid/graphics/Canvas;)V
    .locals 3

    sget-object v0, Lcom/dianxinos/lockscreen/ui/f;->a:[I

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->N:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    invoke-virtual {v1}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->getFinishGridAlphaInter()D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->A:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :pswitch_1
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->C:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private g(Landroid/graphics/Canvas;)V
    .locals 8

    sget-object v0, Lcom/dianxinos/lockscreen/ui/f;->a:[I

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->N:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    invoke-virtual {v1}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->H:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->a(I)D

    move-result-wide v2

    invoke-direct {p0, v0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->b(I)D

    move-result-wide v4

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->d:F

    float-to-double v6, v1

    mul-double/2addr v2, v6

    double-to-float v1, v2

    iput v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->k:F

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->B:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->I:I

    int-to-float v1, v1

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->J:I

    int-to-float v2, v2

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->k:F

    iget-object v4, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->B:[Landroid/graphics/Paint;

    aget-object v4, v4, v0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private getFinishGridAlphaInter()D
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->G:J

    iget-wide v4, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->o:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x44480000    # 800.0f

    div-float/2addr v1, v2

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    float-to-double v0, v0

    return-wide v0

    :cond_1
    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->q:F

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->q:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method private getFinishInnerAlphaInter()D
    .locals 6

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->G:J

    iget-wide v4, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->o:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x44480000    # 800.0f

    div-float/2addr v2, v3

    cmpg-float v3, v2, v0

    if-gez v3, :cond_1

    :cond_0
    :goto_0
    float-to-double v0, v0

    return-wide v0

    :cond_1
    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->r:F

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->s:F

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_0

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->r:F

    sub-float v0, v2, v0

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->s:F

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->r:F

    sub-float/2addr v2, v3

    div-float/2addr v0, v2

    sub-float v0, v1, v0

    goto :goto_0
.end method

.method private getFinishInnerSizeInter()D
    .locals 7

    const v6, 0x3f99999a    # 1.2f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->G:J

    iget-wide v4, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->o:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x44480000    # 800.0f

    div-float/2addr v2, v3

    cmpg-float v3, v2, v0

    if-gez v3, :cond_1

    :cond_0
    :goto_0
    float-to-double v0, v0

    return-wide v0

    :cond_1
    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->q:F

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->r:F

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_3

    const v0, 0x3e4cccd0    # 0.20000005f

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->q:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->r:F

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->q:F

    sub-float/2addr v2, v3

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->s:F

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_0

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->r:F

    sub-float v0, v2, v0

    mul-float/2addr v0, v6

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->s:F

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->r:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    sub-float v0, v6, v0

    goto :goto_0
.end method

.method private getFinishMiddleSizeInter()D
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->G:J

    iget-wide v4, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->o:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x44480000    # 800.0f

    div-float/2addr v1, v2

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    float-to-double v0, v0

    return-wide v0

    :cond_1
    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->q:F

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    mul-float v0, v6, v1

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->q:F

    div-float/2addr v0, v1

    sub-float v0, v6, v0

    goto :goto_0
.end method

.method private getFinishOuterSizeInter()D
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    iget-wide v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->G:J

    iget-wide v4, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->o:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x44480000    # 800.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->q:F

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    :goto_0
    float-to-double v0, v0

    return-wide v0

    :cond_0
    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->s:F

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->q:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->s:F

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->q:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFinishScanAlphaInter()D
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->G:J

    iget-wide v4, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->o:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x44480000    # 800.0f

    div-float/2addr v1, v2

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    float-to-double v0, v0

    return-wide v0

    :cond_1
    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->q:F

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    mul-float v0, v6, v1

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->q:F

    div-float/2addr v0, v1

    sub-float v0, v6, v0

    goto :goto_0
.end method

.method private getInitInnerAlphaInter()D
    .locals 8

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iget-wide v4, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->G:J

    iget-wide v6, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->m:J

    sub-long/2addr v4, v6

    long-to-float v1, v4

    const/high16 v3, 0x43960000    # 300.0f

    div-float/2addr v1, v3

    cmpg-float v3, v1, v0

    if-gez v3, :cond_0

    :goto_0
    float-to-double v0, v0

    return-wide v0

    :cond_0
    cmpg-float v0, v1, v2

    if-gtz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private getInitInnerInter()D
    .locals 7

    const v6, 0x3f99999a    # 1.2f

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->G:J

    iget-wide v4, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->m:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x44480000    # 800.0f

    div-float/2addr v1, v2

    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    :goto_0
    float-to-double v0, v0

    return-wide v0

    :cond_0
    iget v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->p:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->p:F

    div-float v0, v1, v0

    mul-float/2addr v0, v6

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->q:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    const v0, 0x3e99999c    # 0.30000007f

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->p:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->q:F

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->p:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    sub-float v0, v6, v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->r:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_3

    const v0, 0x3f666666    # 0.9f

    const v2, 0x3e4cccd0    # 0.20000005f

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->q:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->r:F

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->q:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->s:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_4

    const v0, 0x3f8ccccd    # 1.1f

    const v2, 0x3dccccd0    # 0.100000024f

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->r:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->s:F

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->r:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getInitOuterInter()D
    .locals 8

    const v7, 0x3e99999c    # 0.30000007f

    const/4 v0, 0x0

    const v6, 0x3f99999a    # 1.2f

    iget-wide v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->G:J

    iget-wide v4, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->l:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x44480000    # 800.0f

    div-float/2addr v1, v2

    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    :goto_0
    float-to-double v0, v0

    return-wide v0

    :cond_0
    iget v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->p:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->p:F

    div-float v0, v1, v0

    mul-float/2addr v0, v6

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->q:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->p:F

    sub-float v0, v1, v0

    mul-float/2addr v0, v7

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->q:F

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->p:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    sub-float v0, v6, v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->r:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_3

    const v0, 0x3f666666    # 0.9f

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->q:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v7

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->r:F

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->q:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->s:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_4

    const v0, 0x3e4cccd0    # 0.20000005f

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->r:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->s:F

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->r:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    sub-float v0, v6, v0

    goto :goto_0

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getInitScanAlphaInter()D
    .locals 8

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iget-wide v4, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->G:J

    iget-wide v6, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->n:J

    sub-long/2addr v4, v6

    long-to-float v1, v4

    const/high16 v3, 0x43960000    # 300.0f

    div-float/2addr v1, v3

    cmpg-float v3, v1, v0

    if-gez v3, :cond_0

    :goto_0
    float-to-double v0, v0

    return-wide v0

    :cond_0
    cmpg-float v0, v1, v2

    if-gtz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private h(Landroid/graphics/Canvas;)V
    .locals 8

    sget-object v0, Lcom/dianxinos/lockscreen/ui/f;->a:[I

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->N:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    invoke-virtual {v1}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->L:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/ui/g;

    iget-wide v2, v0, Lcom/dianxinos/lockscreen/ui/g;->d:J

    iget-wide v4, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->G:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->G:J

    iget-wide v4, v0, Lcom/dianxinos/lockscreen/ui/g;->d:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x320

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/g;->a()Landroid/graphics/PointF;

    move-result-object v2

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/g;->b()F

    move-result v4

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/g;->b()F

    move-result v5

    iget-object v6, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->E:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->E:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/g;->c()F

    move-result v4

    iget-object v5, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->E:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->E:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->D:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, v0, Lcom/dianxinos/lockscreen/ui/g;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;->FINISH:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->a(Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;)V
    .locals 10

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->N:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->G:J

    sget-object v0, Lcom/dianxinos/lockscreen/ui/f;->a:[I

    invoke-virtual {p1}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->N:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    sget-object v1, Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;->IDLE:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->M:Lcom/dianxinos/lockscreen/ui/h;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dianxinos/lockscreen/ui/h;->a(Z)V

    sget-object v0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;->IDLE:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->N:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->G:J

    iput-wide v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->l:J

    iget-wide v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->l:J

    long-to-float v0, v0

    const/high16 v1, 0x44480000    # 800.0f

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->p:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->m:J

    iget-wide v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->m:J

    long-to-float v0, v0

    const/high16 v1, 0x44480000    # 800.0f

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->p:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->n:J

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->N:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->invalidate()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->N:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    sget-object v1, Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;->INIT:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    if-eq v0, v1, :cond_3

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->N:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    sget-object v1, Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;->ROTATE:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    if-eq v0, v1, :cond_4

    new-instance v0, Lcom/dianxinos/lockscreen/ui/c;

    invoke-direct {v0, p0}, Lcom/dianxinos/lockscreen/ui/c;-><init>(Lcom/dianxinos/lockscreen/ui/ChargeCleanView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->L:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->L:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/ui/g;

    iget-wide v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->G:J

    mul-int/lit16 v4, v1, 0xc8

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/dianxinos/lockscreen/ui/g;->d:J

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->L:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/ui/g;

    iget-object v0, v0, Lcom/dianxinos/lockscreen/ui/g;->b:Landroid/graphics/PointF;

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->I:I

    int-to-float v2, v2

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->a:F

    float-to-double v4, v3

    const-wide v6, -0x400f3eadc7d28c9bL    # -1.0471975511965976

    int-to-double v8, v1

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->E:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-double v6, v3

    sub-double/2addr v4, v6

    double-to-float v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->J:I

    int-to-float v3, v3

    iget v4, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->a:F

    float-to-double v4, v4

    const-wide v6, -0x400f3eadc7d28c9bL    # -1.0471975511965976

    int-to-double v8, v1

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    iget-object v6, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->E:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    float-to-double v6, v6

    sub-double/2addr v4, v6

    double-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->H:[J

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->G:J

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->H:[J

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->H:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x190

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->H:[J

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->H:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x190

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->N:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    sget-object v1, Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;->CLEAN:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->G:J

    iput-wide v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->o:J

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->N:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    sget-object v1, Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;->FINISH:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->M:Lcom/dianxinos/lockscreen/ui/h;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->M:Lcom/dianxinos/lockscreen/ui/h;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/dianxinos/lockscreen/ui/h;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->M:Lcom/dianxinos/lockscreen/ui/h;

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getStatus()Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->N:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const-wide/16 v4, 0x320

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->N:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    sget-object v1, Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;->IDLE:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->G:J

    iget-wide v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->G:J

    iget-wide v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->m:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    sget-object v0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;->ROTATE:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->a(Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;)V

    :cond_1
    iget-wide v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->G:J

    iget-wide v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->o:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    sget-object v0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;->DONE:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->a(Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;)V

    :cond_2
    sget-object v0, Lcom/dianxinos/lockscreen/ui/f;->a:[I

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->N:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    invoke-virtual {v1}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :goto_1
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->g(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->f(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->e(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->b(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->c(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->d(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->h(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->invalidate()V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->K:F

    const/high16 v1, 0x41000000    # 8.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->K:F

    goto :goto_1

    :pswitch_2
    iget v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->K:F

    const/high16 v1, 0x41400000    # 12.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->K:F

    goto :goto_1

    :pswitch_3
    iget v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->K:F

    const/high16 v1, 0x41200000    # 10.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->K:F

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 12

    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    shr-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->I:I

    shr-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->J:I

    const/16 v0, 0x8

    new-array v1, v0, [Landroid/graphics/PointF;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->I:I

    int-to-float v3, v3

    iget v4, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->a:F

    float-to-double v4, v4

    const-wide v6, 0x3fe921fb54442d18L    # 0.7853981633974483

    int-to-double v8, v0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->J:I

    int-to-float v4, v4

    iget v5, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->a:F

    float-to-double v6, v5

    const-wide v8, 0x3fe921fb54442d18L    # 0.7853981633974483

    int-to-double v10, v0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v5, v6

    add-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->C:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->C:Landroid/graphics/Path;

    aget-object v3, v1, v0

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v1, v0

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->C:Landroid/graphics/Path;

    array-length v3, v1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    aget-object v3, v1, v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    array-length v4, v1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    aget-object v4, v1, v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setDrawables(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/dianxinos/lockscreen/c/j;->a()Lcom/dianxinos/lockscreen/c/j;

    move-result-object v0

    new-instance v1, Lcom/dianxinos/lockscreen/ui/d;

    invoke-direct {v1, p0, p1}, Lcom/dianxinos/lockscreen/ui/d;-><init>(Lcom/dianxinos/lockscreen/ui/ChargeCleanView;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/c/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method
