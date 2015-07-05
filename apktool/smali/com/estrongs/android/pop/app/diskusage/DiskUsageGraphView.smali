.class public Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;
.super Landroid/view/View;


# static fields
.field private static f:I

.field private static m:Landroid/util/DisplayMetrics;


# instance fields
.field a:[I

.field b:[F

.field c:[I

.field d:[J

.field private e:Z

.field private g:Landroid/graphics/Path;

.field private h:I

.field private i:I

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    sput v0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->f:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->m:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->e:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a:[I

    iput-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->g:Landroid/graphics/Path;

    iput v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->h:I

    iput v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->i:I

    iput-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->j:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->k:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->l:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->b:[F

    iput-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->c:[I

    iput-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->d:[J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->e:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a:[I

    iput-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->g:Landroid/graphics/Path;

    iput v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->h:I

    iput v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->i:I

    iput-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->j:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->k:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->l:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->b:[F

    iput-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->c:[I

    iput-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->d:[J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->e:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a:[I

    iput-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->g:Landroid/graphics/Path;

    iput v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->h:I

    iput v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->i:I

    iput-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->j:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->k:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->l:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->b:[F

    iput-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->c:[I

    iput-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->d:[J

    return-void
.end method

.method private a(II)Landroid/graphics/Path;
    .locals 9

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v7, 0x0

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    sget v0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->f:I

    int-to-double v4, v0

    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->m:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    :goto_0
    mul-double/2addr v0, v4

    double-to-int v0, v0

    int-to-float v1, v0

    invoke-virtual {v2, v1, v7}, Landroid/graphics/Path;->moveTo(FF)V

    mul-int/lit8 v1, v0, 0x2

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {v2, v1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v1, Landroid/graphics/RectF;

    mul-int/lit8 v3, v0, 0x2

    sub-int v3, p1, v3

    int-to-float v3, v3

    int-to-float v4, p1

    mul-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    invoke-direct {v1, v3, v7, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v2, v1, v3, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    int-to-float v1, p1

    sub-int v3, p2, v0

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v1, Landroid/graphics/RectF;

    mul-int/lit8 v3, v0, 0x2

    sub-int v3, p1, v3

    int-to-float v3, v3

    mul-int/lit8 v4, v0, 0x2

    sub-int v4, p2, v4

    int-to-float v4, v4

    int-to-float v5, p1

    int-to-float v6, p2

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v1, v7, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    int-to-float v1, v0

    int-to-float v3, p2

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v1, Landroid/graphics/RectF;

    mul-int/lit8 v3, v0, 0x2

    sub-int v3, p2, v3

    int-to-float v3, v3

    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    int-to-float v5, p2

    invoke-direct {v1, v7, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v1, v8, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    int-to-float v1, v0

    invoke-virtual {v2, v7, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v1, Landroid/graphics/RectF;

    mul-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {v1, v7, v7, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v2, v1, v0, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    return-object v2

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->m:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    goto :goto_0
.end method


# virtual methods
.method public a([J[I)V
    .locals 8

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->b:[F

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p1, v0

    long-to-float v2, v0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->b:[F

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-wide v4, p1, v1

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-wide v4, p1, v0

    long-to-float v1, v4

    div-float/2addr v1, v2

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->d:[J

    iput-object p2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->c:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->e:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->postInvalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v7, 0x2

    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->getHeight()I

    move-result v9

    iget v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->h:I

    if-ne v0, v8, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->i:I

    if-ne v0, v9, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->g:Landroid/graphics/Path;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, v8, v9}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a(II)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->g:Landroid/graphics/Path;

    iput v8, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->h:I

    iput v9, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->i:I

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->d:[J

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->d:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v4, v0, v3

    cmp-long v0, v4, v10

    if-eqz v0, :cond_7

    :cond_2
    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->e:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->b:[F

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a:[I

    move v0, v2

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->b:[F

    array-length v4, v4

    if-ge v0, v4, :cond_7

    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->d:[J

    aget-wide v4, v4, v0

    cmp-long v4, v4, v10

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a:[I

    aput v2, v4, v0

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a:[I

    int-to-float v5, v9

    iget-object v6, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->b:[F

    aget v6, v6, v0

    mul-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, v4, v0

    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a:[I

    aget v4, v4, v0

    if-ge v4, v7, :cond_5

    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a:[I

    aget v4, v4, v0

    rsub-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a:[I

    aput v7, v4, v0

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a:[I

    aget v4, v4, v0

    add-int/lit8 v5, v3, 0x2

    if-le v4, v5, :cond_6

    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a:[I

    aget v5, v4, v0

    sub-int v3, v5, v3

    aput v3, v4, v0

    move v3, v2

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a:[I

    aget v4, v4, v0

    const/4 v5, 0x4

    if-le v4, v5, :cond_3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a:[I

    aget v5, v4, v0

    add-int/lit8 v5, v5, -0x2

    aput v5, v4, v0

    add-int/lit8 v3, v3, -0x2

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->g:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->k:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->k:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->d:[J

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->d:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v4, v0, v3

    cmp-long v0, v4, v10

    if-eqz v0, :cond_c

    move v6, v2

    move v7, v2

    :goto_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a:[I

    aget v0, v0, v6

    if-nez v0, :cond_8

    move v0, v7

    :goto_5
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v7, v0

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->k:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->c:[I

    aget v2, v2, v6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v7

    int-to-float v3, v8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a:[I

    aget v0, v0, v6

    add-int/2addr v0, v7

    int-to-float v4, v0

    iget-object v5, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->k:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a:[I

    aget v0, v0, v6

    add-int/2addr v0, v7

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a:[I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->k:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->c:[I

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v7

    int-to-float v3, v8

    int-to-float v4, v9

    iget-object v5, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->k:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_a
    :goto_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->j:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->j:Landroid/graphics/drawable/Drawable;

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->l:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->j:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->l:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->k:Landroid/graphics/Paint;

    const v3, -0x3d3833

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v2

    int-to-float v3, v8

    int-to-float v4, v9

    iget-object v5, p0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->k:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_2
.end method
