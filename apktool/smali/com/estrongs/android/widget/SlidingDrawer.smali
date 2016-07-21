.class public Lcom/estrongs/android/widget/SlidingDrawer;
.super Landroid/view/ViewGroup;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private final D:I

.field private final E:I

.field private final F:I

.field private final G:I

.field private final H:I

.field private final I:I

.field private final a:I

.field private final b:I

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private final e:Landroid/graphics/Rect;

.field private final f:Landroid/graphics/Rect;

.field private g:Z

.field private h:Z

.field private i:Landroid/view/VelocityTracker;

.field private j:Z

.field private k:I

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Lcom/estrongs/android/widget/bq;

.field private r:Lcom/estrongs/android/widget/bp;

.field private s:Lcom/estrongs/android/widget/br;

.field private final t:Landroid/os/Handler;

.field private u:F

.field private v:F

.field private w:F

.field private x:J

.field private y:J

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->e:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->f:Landroid/graphics/Rect;

    new-instance v0, Lcom/estrongs/android/widget/bs;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/estrongs/android/widget/bs;-><init>(Lcom/estrongs/android/widget/SlidingDrawer;Lcom/estrongs/android/widget/bn;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->t:Landroid/os/Handler;

    sget-object v0, Lcom/estrongs/android/pop/ah;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v0, 0x2

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->j:Z

    const/4 v0, 0x3

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->m:I

    const/4 v0, 0x4

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    const/4 v0, 0x5

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->B:Z

    const/4 v0, 0x6

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->C:Z

    const/4 v0, 0x7

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->k:I

    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content and handle attributes must refer to different children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->a:I

    iput v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->b:I

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->D:I

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->E:I

    const/high16 v1, 0x43160000    # 150.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->F:I

    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->G:I

    const/high16 v1, 0x44fa0000    # 2000.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->H:I

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->I:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/widget/SlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method private a(I)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "animateClose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/widget/SlidingDrawer;->c(I)V

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->k:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->k:I

    if-ne v0, v3, :cond_1

    :cond_0
    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->H:I

    int-to-float v0, v0

    :goto_0
    invoke-direct {p0, p1, v0, v3}, Lcom/estrongs/android/widget/SlidingDrawer;->a(IFZ)V

    return-void

    :cond_1
    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->H:I

    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private a(IFZ)V
    .locals 8

    const/16 v7, 0x3e8

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "performFling"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "velocity"

    float-to-double v2, p2

    invoke-direct {p0, v0, v2, v3}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;D)V

    int-to-float v0, p1

    iput v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->w:F

    iput p2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->v:F

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->l:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->k:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->k:I

    if-ne v0, v6, :cond_5

    :cond_0
    if-nez p3, :cond_1

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->G:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_1

    iget v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->j:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->o:I

    :goto_0
    add-int/2addr v0, v1

    if-le p1, v0, :cond_4

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->G:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_4

    :cond_1
    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->H:I

    int-to-float v0, v0

    iput v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->u:F

    cmpg-float v0, p2, v4

    if-gez v0, :cond_2

    iput v4, p0, Lcom/estrongs/android/widget/SlidingDrawer;->v:F

    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->x:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->y:J

    iput-boolean v5, p0, Lcom/estrongs/android/widget/SlidingDrawer;->A:Z

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->t:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->t:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->y:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    invoke-direct {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->f()V

    return-void

    :cond_3
    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->p:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->H:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->u:F

    cmpl-float v0, p2, v4

    if-lez v0, :cond_2

    iput v4, p0, Lcom/estrongs/android/widget/SlidingDrawer;->v:F

    goto :goto_1

    :cond_5
    const-string v1, "delta"

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    sub-int v2, v0, v2

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->j:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->o:I

    :goto_2
    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    int-to-double v2, v0

    invoke-direct {p0, v1, v2, v3}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;D)V

    if-nez p3, :cond_6

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->G:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_9

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    sub-int v1, v0, v1

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->j:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->o:I

    :goto_3
    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    if-le p1, v0, :cond_6

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->G:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gez v0, :cond_9

    :cond_6
    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->H:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->u:F

    cmpl-float v0, p2, v4

    if-lez v0, :cond_2

    iput v4, p0, Lcom/estrongs/android/widget/SlidingDrawer;->v:F

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->p:I

    goto :goto_2

    :cond_8
    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->p:I

    goto :goto_3

    :cond_9
    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->H:I

    int-to-float v0, v0

    iput v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->u:F

    cmpg-float v0, p2, v4

    if-gez v0, :cond_2

    iput v4, p0, Lcom/estrongs/android/widget/SlidingDrawer;->v:F

    goto/16 :goto_1

    :cond_a
    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->k:I

    if-eq v0, v5, :cond_b

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->k:I

    if-ne v0, v6, :cond_f

    :cond_b
    if-nez p3, :cond_e

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->G:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_c

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->j:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getHeight()I

    move-result v0

    :goto_4
    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_e

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->G:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_e

    :cond_c
    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->H:I

    int-to-float v0, v0

    iput v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->u:F

    cmpg-float v0, p2, v4

    if-gez v0, :cond_2

    iput v4, p0, Lcom/estrongs/android/widget/SlidingDrawer;->v:F

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_4

    :cond_e
    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->H:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->u:F

    cmpl-float v0, p2, v4

    if-lez v0, :cond_2

    iput v4, p0, Lcom/estrongs/android/widget/SlidingDrawer;->v:F

    goto/16 :goto_1

    :cond_f
    if-nez p3, :cond_12

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->G:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_10

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->j:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getHeight()I

    move-result v0

    :goto_5
    div-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_12

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->G:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_12

    :cond_10
    const-string v0, "not hard enough!"

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->H:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->u:F

    cmpl-float v0, p2, v4

    if-lez v0, :cond_2

    iput v4, p0, Lcom/estrongs/android/widget/SlidingDrawer;->v:F

    goto/16 :goto_1

    :cond_11
    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_5

    :cond_12
    const-string v0, "hard enough!"

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->H:I

    int-to-float v0, v0

    iput v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->u:F

    cmpg-float v0, p2, v4

    if-gez v0, :cond_2

    iput v4, p0, Lcom/estrongs/android/widget/SlidingDrawer;->v:F

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private a(Ljava/lang/String;D)V
    .locals 0

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/widget/SlidingDrawer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->h:Z

    return v0
.end method

.method private b(I)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "animateOpen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/widget/SlidingDrawer;->c(I)V

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->k:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->k:I

    if-ne v0, v4, :cond_1

    :cond_0
    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->H:I

    neg-int v0, v0

    int-to-float v0, v0

    :goto_0
    const-string v1, "velocity"

    float-to-double v2, v0

    invoke-direct {p0, v1, v2, v3}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;D)V

    invoke-direct {p0, p1, v0, v4}, Lcom/estrongs/android/widget/SlidingDrawer;->a(IFZ)V

    return-void

    :cond_1
    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->H:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/widget/SlidingDrawer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->C:Z

    return v0
.end method

.method private c(I)V
    .locals 6

    const/16 v5, 0x3e8

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "prepareTracking"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->g:Z

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->i:Landroid/view/VelocityTracker;

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->l:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->H:I

    int-to-float v0, v0

    iput v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->u:F

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->G:I

    int-to-float v0, v0

    iput v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->v:F

    iget v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->m:I

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->j:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->o:I

    sub-int/2addr v0, v3

    :goto_1
    add-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->w:F

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->w:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->d(I)V

    iput-boolean v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->A:Z

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->t:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->x:J

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->y:J

    iput-boolean v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->A:Z

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->k:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->p:I

    sub-int/2addr v0, v3

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->A:Z

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->A:Z

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->t:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/estrongs/android/widget/SlidingDrawer;->d(I)V

    goto :goto_2
.end method

.method static synthetic c(Lcom/estrongs/android/widget/SlidingDrawer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->g()V

    return-void
.end method

.method private d(I)V
    .locals 9

    const/4 v8, 0x0

    const/16 v7, -0x2711

    const/16 v6, -0x2712

    const-string v0, "moveHandle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getRight()I

    move-result v5

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->j:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->k:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    if-ne p1, v7, :cond_0

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->invalidate()V

    :goto_0
    return-void

    :cond_0
    if-ne p1, v6, :cond_1

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->m:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v3

    iget v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->o:I

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v0, p1, v4

    iget v5, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    if-ge p1, v5, :cond_3

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    sub-int/2addr v0, v4

    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->e:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->f:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v0

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v0

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getWidth()I

    move-result v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v0

    iget-object v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v3, v8, v1, v4, v0}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v3}, Lcom/estrongs/android/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/estrongs/android/widget/SlidingDrawer;->m:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v3

    iget v6, p0, Lcom/estrongs/android/widget/SlidingDrawer;->o:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    if-le v0, v5, :cond_2

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->m:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v3

    iget v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->o:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v4

    goto :goto_1

    :cond_4
    const-string v0, "direction_down_to_up"

    const-string v1, "not finished"

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->k:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    if-ne p1, v7, :cond_6

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_0

    :cond_6
    if-ne p1, v6, :cond_7

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->m:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v4

    iget v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->p:I

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v0, p1, v2

    iget v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    if-ge p1, v3, :cond_9

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    sub-int/2addr v0, v2

    :cond_8
    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    iget-object v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->e:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->f:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v0

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    iget v1, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v0

    iget-object v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getHeight()I

    move-result v2

    invoke-virtual {v3, v1, v8, v0, v2}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v3}, Lcom/estrongs/android/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_9
    iget v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->m:I

    add-int/2addr v3, v5

    sub-int/2addr v3, v4

    iget v6, p0, Lcom/estrongs/android/widget/SlidingDrawer;->p:I

    sub-int/2addr v3, v6

    sub-int/2addr v3, v2

    if-le v0, v3, :cond_8

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->m:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v4

    iget v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->p:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    goto :goto_2

    :cond_a
    if-ne p1, v7, :cond_b

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_0

    :cond_b
    if-ne p1, v6, :cond_c

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->m:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v0, p1, v2

    iget v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->m:I

    if-ge p1, v3, :cond_e

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->m:I

    sub-int/2addr v0, v2

    :cond_d
    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    iget-object v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->e:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->f:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v0

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/estrongs/android/widget/SlidingDrawer;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v1, v4

    sub-int/2addr v1, v0

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getHeight()I

    move-result v2

    invoke-virtual {v3, v1, v8, v0, v2}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v3}, Lcom/estrongs/android/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/estrongs/android/widget/SlidingDrawer;->m:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/estrongs/android/widget/SlidingDrawer;->p:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    if-le v0, v3, :cond_d

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->m:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->p:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    goto :goto_3
.end method

.method private e()V
    .locals 8

    const/4 v1, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const-string v0, "prepareContent"

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->A:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/estrongs/android/widget/SlidingDrawer;->d:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->j:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->o:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    sub-int/2addr v2, v3

    sub-int v3, v5, v4

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v6, v3, v2}, Landroid/view/View;->measure(II)V

    iget v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    add-int/2addr v2, v0

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    add-int/2addr v0, v4

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {v6, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    :cond_1
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    invoke-virtual {v6}, Landroid/view/View;->buildDrawingCache()V

    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int v4, v5, v4

    sub-int/2addr v4, v0

    iget v5, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    sub-int/2addr v4, v5

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    sub-int/2addr v2, v3

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v6, v4, v2}, Landroid/view/View;->measure(II)V

    iget v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->k:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    :goto_2
    iget v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    add-int/2addr v0, v2

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    const-string v1, "content layout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "left:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "right:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private f()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "stopTracking"

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iput-boolean v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->g:Z

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->s:Lcom/estrongs/android/widget/br;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->s:Lcom/estrongs/android/widget/br;

    invoke-interface {v0}, Lcom/estrongs/android/widget/br;->b()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->i:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->i:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method

.method private g()V
    .locals 8

    const-wide/16 v6, 0x10

    const/16 v5, 0x3e8

    const/4 v4, 0x0

    const-string v0, "doAnimation"

    iget v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->w:F

    float-to-double v2, v1

    invoke-direct {p0, v0, v2, v3}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;D)V

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->A:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->h()V

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->k:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    :cond_0
    iget v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->w:F

    iget v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->m:I

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->j:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getHeight()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_3

    iput-boolean v4, p0, Lcom/estrongs/android/widget/SlidingDrawer;->A:Z

    invoke-direct {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->i()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->w:F

    iget v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iput-boolean v4, p0, Lcom/estrongs/android/widget/SlidingDrawer;->A:Z

    invoke-direct {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->j()V

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->w:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->d(I)V

    iget-wide v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->y:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->y:J

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->t:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->y:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->w:F

    iget v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->m:I

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->j:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getHeight()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_7

    iput-boolean v4, p0, Lcom/estrongs/android/widget/SlidingDrawer;->A:Z

    invoke-direct {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->j()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->w:F

    iget v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    iput-boolean v4, p0, Lcom/estrongs/android/widget/SlidingDrawer;->A:Z

    invoke-direct {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->i()V

    goto :goto_1

    :cond_8
    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->w:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->d(I)V

    iget-wide v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->y:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->y:J

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->t:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->y:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private h()V
    .locals 10

    const-string v0, "incrementAnimation"

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->x:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->w:F

    iget v4, p0, Lcom/estrongs/android/widget/SlidingDrawer;->v:F

    iget v5, p0, Lcom/estrongs/android/widget/SlidingDrawer;->u:F

    const-string v6, "mAnimatedVelocity"

    iget v7, p0, Lcom/estrongs/android/widget/SlidingDrawer;->v:F

    float-to-double v8, v7

    invoke-direct {p0, v6, v8, v9}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;D)V

    const-string v6, "mAnimatedAcceleration"

    iget v7, p0, Lcom/estrongs/android/widget/SlidingDrawer;->u:F

    float-to-double v8, v7

    invoke-direct {p0, v6, v8, v9}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;D)V

    mul-float v6, v4, v2

    add-float/2addr v3, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v5

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    iput v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->w:F

    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    iput v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->v:F

    iput-wide v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->x:J

    return-void
.end method

.method private i()V
    .locals 2

    const-string v0, "closeDrawer"

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;)V

    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->d(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->l:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->l:Z

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->r:Lcom/estrongs/android/widget/bp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->r:Lcom/estrongs/android/widget/bp;

    invoke-interface {v0}, Lcom/estrongs/android/widget/bp;->a()V

    goto :goto_0
.end method

.method private j()V
    .locals 2

    const-string v0, "openDrawer"

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;)V

    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->d(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->l:Z

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->q:Lcom/estrongs/android/widget/bq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->q:Lcom/estrongs/android/widget/bq;

    invoke-interface {v0}, Lcom/estrongs/android/widget/bq;->a()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->l:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->j()V

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->invalidate()V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->requestLayout()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->i()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->l:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->d()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->c()V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    const-string v0, "animateClose"

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->e()V

    iget-object v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->s:Lcom/estrongs/android/widget/br;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/estrongs/android/widget/br;->a()V

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->j:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->k:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->a(I)V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/estrongs/android/widget/br;->b()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->k:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getRight()I

    move-result v0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    const-string v0, "animateOpen"

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->e()V

    iget-object v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->s:Lcom/estrongs/android/widget/br;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/estrongs/android/widget/br;->a()V

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->b(I)V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/estrongs/android/widget/br;->b()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getDrawingTime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->c:Landroid/view/View;

    iget-boolean v6, p0, Lcom/estrongs/android/widget/SlidingDrawer;->j:Z

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/estrongs/android/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->A:Z

    if-eqz v0, :cond_a

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_5

    if-eqz v6, :cond_3

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->k:I

    if-ne v0, v8, :cond_2

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->m:I

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p1, v2, v1, v0, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->k:I

    if-ne v0, v7, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    :goto_2
    invoke-virtual {p1, v2, v0, v1, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz v6, :cond_6

    move v2, v1

    :goto_3
    if-eqz v6, :cond_9

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->k:I

    if-ne v0, v8, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :goto_4
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->d:Landroid/view/View;

    invoke-virtual {p0, p1, v0, v4, v5}, Lcom/estrongs/android/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->k:I

    if-ne v0, v7, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    move v2, v0

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    move v2, v0

    goto :goto_3

    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_4

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_a
    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->d:Landroid/view/View;

    invoke-virtual {p0, p1, v0, v4, v5}, Lcom/estrongs/android/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->d:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->c:Landroid/view/View;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->a:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->c:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->c:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/widget/bo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/widget/bo;-><init>(Lcom/estrongs/android/widget/SlidingDrawer;Lcom/estrongs/android/widget/bn;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->b:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->d:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/widget/bn;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/bn;-><init>(Lcom/estrongs/android/widget/SlidingDrawer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->d:Landroid/view/View;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->h:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/estrongs/android/widget/SlidingDrawer;->e:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/estrongs/android/widget/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-boolean v7, p0, Lcom/estrongs/android/widget/SlidingDrawer;->g:Z

    if-nez v7, :cond_2

    float-to-int v7, v3

    float-to-int v8, v4

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    if-nez v2, :cond_4

    iput-boolean v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->g:Z

    invoke-virtual {v6, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-direct {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->e()V

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->s:Lcom/estrongs/android/widget/br;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->s:Lcom/estrongs/android/widget/br;

    invoke-interface {v0}, Lcom/estrongs/android/widget/br;->a()V

    :cond_3
    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->j:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    float-to-int v2, v4

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->z:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->c(I)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    float-to-int v2, v3

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->z:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->c(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sub-int v0, p4, p2

    sub-int v2, p5, p3

    iget-object v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/estrongs/android/widget/SlidingDrawer;->d:Landroid/view/View;

    iget-boolean v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->j:Z

    if-eqz v1, :cond_2

    sub-int/2addr v0, v4

    div-int/lit8 v1, v0, 0x2

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->l:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    :goto_1
    const/4 v2, 0x0

    iget v7, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    add-int/2addr v7, v5

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v9, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    add-int/2addr v9, v5

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v6, v2, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    :goto_2
    const-string v2, "expanded"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/estrongs/android/widget/SlidingDrawer;->l:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int v2, v1, v4

    add-int v4, v0, v5

    invoke-virtual {v3, v1, v0, v2, v4}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->o:I

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->p:I

    goto :goto_0

    :cond_1
    sub-int v0, v2, v5

    iget v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->m:I

    add-int/2addr v0, v2

    goto :goto_1

    :cond_2
    sub-int v1, v2, v5

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->k:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_4

    iget-boolean v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->l:Z

    if-eqz v2, :cond_3

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    :goto_3
    iget v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    add-int/2addr v2, v4

    const/4 v7, 0x0

    iget v8, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    add-int/2addr v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v6, v2, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_2

    :cond_3
    sub-int/2addr v0, v4

    iget v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->m:I

    add-int/2addr v0, v2

    goto :goto_3

    :cond_4
    const-string v2, "direction"

    const-string v7, "left_to_right"

    invoke-direct {p0, v2, v7}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->l:Z

    if-eqz v2, :cond_5

    sub-int/2addr v0, v4

    iget v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->m:I

    add-int/2addr v0, v2

    :goto_4
    iget v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->m:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/estrongs/android/widget/SlidingDrawer;->m:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v6, v2, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    move v11, v1

    move v1, v0

    move v0, v11

    goto/16 :goto_2

    :cond_5
    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->m:I

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Lcom/estrongs/android/widget/SlidingDrawer;->measureChild(Landroid/view/View;II)V

    iget-boolean v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->j:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v1, v2

    iget v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->d:Landroid/view/View;

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v3, v4, v2}, Landroid/view/View;->measure(II)V

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/widget/SlidingDrawer;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v0, v2

    iget v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->d:Landroid/view/View;

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getRight()I

    move-result v6

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    const-string v0, "content layout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getContent()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "right:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/SlidingDrawer;->getContent()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->g:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->A:Z

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->j:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_2
    float-to-int v0, v0

    iget v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->z:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->d(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_2

    :pswitch_1
    const-string v0, "------------ACTION_CANCEL"

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->i:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->I:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-boolean v7, p0, Lcom/estrongs/android/widget/SlidingDrawer;->j:Z

    if-eqz v7, :cond_8

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_7

    const/4 v2, 0x1

    :goto_3
    const/4 v8, 0x0

    cmpg-float v8, v0, v8

    if-gez v8, :cond_4

    neg-float v0, v0

    :cond_4
    iget v8, p0, Lcom/estrongs/android/widget/SlidingDrawer;->F:I

    int-to-float v8, v8

    cmpl-float v8, v0, v8

    if-lez v8, :cond_1a

    iget v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->F:I

    int-to-float v0, v0

    move v12, v2

    move v2, v1

    move v1, v0

    move v0, v12

    :goto_4
    float-to-double v8, v1

    float-to-double v10, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v1, v8

    if-eqz v0, :cond_19

    neg-float v0, v1

    :goto_5
    iget-object v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/widget/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/estrongs/android/widget/SlidingDrawer;->E:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_16

    const-string v8, "left"

    int-to-double v10, v2

    invoke-direct {p0, v8, v10, v11}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;D)V

    const-string v8, "mTapThreshold + mTopOffset"

    iget v9, p0, Lcom/estrongs/android/widget/SlidingDrawer;->D:I

    iget v10, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    add-int/2addr v9, v10

    int-to-double v10, v9

    invoke-direct {p0, v8, v10, v11}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;D)V

    const-string v8, "mMaximumTapVelocity"

    iget v9, p0, Lcom/estrongs/android/widget/SlidingDrawer;->E:I

    int-to-double v10, v9

    invoke-direct {p0, v8, v10, v11}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;D)V

    if-eqz v7, :cond_b

    iget-boolean v5, p0, Lcom/estrongs/android/widget/SlidingDrawer;->l:Z

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/estrongs/android/widget/SlidingDrawer;->D:I

    iget v6, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    add-int/2addr v5, v6

    if-lt v1, v5, :cond_6

    :cond_5
    iget-boolean v5, p0, Lcom/estrongs/android/widget/SlidingDrawer;->l:Z

    if-nez v5, :cond_d

    iget v5, p0, Lcom/estrongs/android/widget/SlidingDrawer;->m:I

    add-int/2addr v3, v5

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/estrongs/android/widget/SlidingDrawer;->o:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/estrongs/android/widget/SlidingDrawer;->D:I

    sub-int/2addr v3, v4

    if-le v1, v3, :cond_d

    :cond_6
    :goto_6
    iget-boolean v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->B:Z

    if-eqz v3, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->playSoundEffect(I)V

    iget-boolean v0, p0, Lcom/estrongs/android/widget/SlidingDrawer;->l:Z

    if-eqz v0, :cond_11

    const-string v0, "case1++++++++++"

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;)V

    if-eqz v7, :cond_10

    move v0, v1

    :goto_7
    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->a(I)V

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_8
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_a

    const/4 v2, 0x1

    :goto_8
    const/4 v8, 0x0

    cmpg-float v8, v1, v8

    if-gez v8, :cond_9

    neg-float v1, v1

    :cond_9
    iget v8, p0, Lcom/estrongs/android/widget/SlidingDrawer;->F:I

    int-to-float v8, v8

    cmpl-float v8, v1, v8

    if-lez v8, :cond_1a

    iget v1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->F:I

    int-to-float v1, v1

    move v12, v2

    move v2, v1

    move v1, v0

    move v0, v12

    goto/16 :goto_4

    :cond_a
    const/4 v2, 0x0

    goto :goto_8

    :cond_b
    iget v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->k:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    iget-boolean v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->l:Z

    if-eqz v3, :cond_c

    iget v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->D:I

    iget v4, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_6

    :cond_c
    iget-boolean v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->l:Z

    if-nez v3, :cond_d

    iget v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->m:I

    add-int/2addr v3, v6

    sub-int/2addr v3, v5

    iget v4, p0, Lcom/estrongs/android/widget/SlidingDrawer;->p:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/estrongs/android/widget/SlidingDrawer;->D:I

    sub-int/2addr v3, v4

    if-gt v2, v3, :cond_6

    :cond_d
    const-string v3, "case4++++++++++"

    invoke-direct {p0, v3}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;)V

    if-eqz v7, :cond_15

    :goto_9
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/estrongs/android/widget/SlidingDrawer;->a(IFZ)V

    goto/16 :goto_1

    :cond_e
    iget-boolean v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->l:Z

    if-nez v3, :cond_f

    iget v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->D:I

    iget v4, p0, Lcom/estrongs/android/widget/SlidingDrawer;->m:I

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_6

    :cond_f
    iget-boolean v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->l:Z

    if-eqz v3, :cond_d

    iget v3, p0, Lcom/estrongs/android/widget/SlidingDrawer;->n:I

    add-int/2addr v3, v6

    sub-int/2addr v3, v5

    iget v4, p0, Lcom/estrongs/android/widget/SlidingDrawer;->p:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/estrongs/android/widget/SlidingDrawer;->D:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_d

    goto/16 :goto_6

    :cond_10
    move v0, v2

    goto :goto_7

    :cond_11
    const-string v0, "case2++++++++++"

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;)V

    if-eqz v7, :cond_12

    :goto_a
    invoke-direct {p0, v1}, Lcom/estrongs/android/widget/SlidingDrawer;->b(I)V

    goto/16 :goto_1

    :cond_12
    move v1, v2

    goto :goto_a

    :cond_13
    const-string v3, "case3++++++++++"

    invoke-direct {p0, v3}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;)V

    if-eqz v7, :cond_14

    :goto_b
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/estrongs/android/widget/SlidingDrawer;->a(IFZ)V

    goto/16 :goto_1

    :cond_14
    move v1, v2

    goto :goto_b

    :cond_15
    move v1, v2

    goto :goto_9

    :cond_16
    const-string v3, "case5++++++++++"

    invoke-direct {p0, v3}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Ljava/lang/String;)V

    if-eqz v7, :cond_17

    :goto_c
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/estrongs/android/widget/SlidingDrawer;->a(IFZ)V

    goto/16 :goto_1

    :cond_17
    move v1, v2

    goto :goto_c

    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_19
    move v0, v1

    goto/16 :goto_5

    :cond_1a
    move v12, v2

    move v2, v1

    move v1, v0

    move v0, v12

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnDrawerCloseListener(Lcom/estrongs/android/widget/bp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->r:Lcom/estrongs/android/widget/bp;

    return-void
.end method

.method public setOnDrawerOpenListener(Lcom/estrongs/android/widget/bq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->q:Lcom/estrongs/android/widget/bq;

    return-void
.end method

.method public setOnDrawerScrollListener(Lcom/estrongs/android/widget/br;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/SlidingDrawer;->s:Lcom/estrongs/android/widget/br;

    return-void
.end method
