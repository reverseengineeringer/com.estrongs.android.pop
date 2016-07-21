.class public Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;
.super Landroid/support/design/widget/FloatingActionButton;


# instance fields
.field private A:I

.field private B:Landroid/graphics/Bitmap;

.field private C:Z

.field private D:Z

.field private E:Lcom/estrongs/android/ui/controller/widget/f;

.field private F:I

.field private G:Z

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:Z

.field private M:Lcom/estrongs/android/ui/controller/widget/e;

.field private N:I

.field private O:I

.field private P:Ljava/lang/Runnable;

.field private Q:Ljava/lang/Runnable;

.field private a:Z

.field private b:Ljava/lang/String;

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Z

.field private j:I

.field private k:Ljava/text/DecimalFormat;

.field private l:[Ljava/lang/String;

.field private m:Landroid/graphics/RectF;

.field private n:Landroid/graphics/Paint;

.field private o:Landroid/graphics/Paint;

.field private p:Landroid/graphics/Paint;

.field private q:I

.field private r:F

.field private s:F

.field private t:I

.field private u:F

.field private v:F

.field private w:I

.field private x:Landroid/content/res/ColorStateList;

.field private y:Landroid/content/res/ColorStateList;

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->a:Z

    const-string v0, "%"

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->b:Ljava/lang/String;

    const/high16 v0, 0x43870000    # 270.0f

    iput v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->c:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->d:F

    iput v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->e:F

    iput v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->f:F

    iput v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->g:F

    iput v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->h:F

    iput-boolean v5, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->i:Z

    const/16 v0, 0x50

    iput v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->j:I

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###,##0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->k:Ljava/text/DecimalFormat;

    iput-object v3, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->l:[Ljava/lang/String;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->m:Landroid/graphics/RectF;

    iput v4, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->q:I

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/controller/widget/g;->a(Landroid/content/res/Resources;F)F

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->r:F

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/controller/widget/g;->a(Landroid/content/res/Resources;F)F

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->s:F

    iput v4, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->t:I

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->u:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->v:F

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->w:I

    iput-object v3, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->x:Landroid/content/res/ColorStateList;

    iput-object v3, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->y:Landroid/content/res/ColorStateList;

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->z:F

    iput v4, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->A:I

    iput-object v3, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->B:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->C:Z

    iput-boolean v5, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->D:Z

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->F:I

    iput-boolean v2, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->G:Z

    iput-boolean v2, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->L:Z

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->N:I

    iput v5, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->O:I

    new-instance v0, Lcom/estrongs/android/ui/controller/widget/a;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/controller/widget/a;-><init>(Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->P:Ljava/lang/Runnable;

    new-instance v0, Lcom/estrongs/android/ui/controller/widget/b;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/controller/widget/b;-><init>(Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->Q:Ljava/lang/Runnable;

    :try_start_0
    sget-object v0, Landroid/support/design/j;->FloatingActionButton:[I

    const v1, 0x7f090167

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->O:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->e()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 14

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const-wide v10, 0x3fe999999999999aL    # 0.8

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getHeight()I

    move-result v3

    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getIconWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getIconHeight()I

    move-result v0

    iget-object v4, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->B:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->A:I

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->B:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v4, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->B:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-double v6, v4

    int-to-double v8, v1

    mul-double/2addr v8, v10

    cmpg-double v4, v6, v8

    if-gez v4, :cond_1

    int-to-double v6, v1

    mul-double/2addr v6, v10

    double-to-int v1, v6

    :cond_1
    int-to-double v4, v5

    int-to-double v6, v0

    mul-double/2addr v6, v10

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    int-to-double v4, v0

    mul-double/2addr v4, v10

    double-to-int v0, v4

    :cond_2
    int-to-double v4, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    div-double/2addr v4, v12

    double-to-int v4, v4

    int-to-double v0, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v0, v6

    div-double/2addr v0, v12

    double-to-int v5, v0

    sub-int v0, v2, v4

    div-int/lit8 v2, v0, 0x2

    sub-int v0, v3, v5

    div-int/lit8 v3, v0, 0x2

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->B:Landroid/graphics/Bitmap;

    move-object v0, p1

    move v6, v2

    move v7, v3

    invoke-static/range {v0 .. v7}, Lcom/estrongs/android/ui/controller/widget/g;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIII)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->a:Z

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->G:Z

    return p1
.end method

.method private b(F)F
    .locals 2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;)F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->f:F

    return v0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 6

    const v5, 0x3f4ccccd    # 0.8f

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->k:Ljava/text/DecimalFormat;

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->g:F

    iget v2, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->f:F

    mul-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->o:Landroid/graphics/Paint;

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/controller/widget/g;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->p:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/controller/widget/g;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    add-int v3, v1, v0

    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getIconWidth()I

    move-result v4

    int-to-float v3, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->u:F

    mul-float/2addr v0, v5

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setTextSize(F)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->o:Landroid/graphics/Paint;

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/controller/widget/g;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->p:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/controller/widget/g;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->o:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->o:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->g:F

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->f:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->d:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->l:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->l:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->o:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "ESFloatingActionButton"

    const-string v1, "Custom text array not long enough."

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->G:Z

    return v0
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->m:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->n:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->h()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;)Lcom/estrongs/android/ui/controller/widget/f;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->E:Lcom/estrongs/android/ui/controller/widget/f;

    return-object v0
.end method

.method private e()V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->L:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->n:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->q:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->r:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->o:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->o:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->u:F

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/controller/widget/g;->a(Landroid/content/res/Resources;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->p:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->p:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->u:F

    iget v3, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->v:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/controller/widget/g;->a(Landroid/content/res/Resources;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private e(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->n:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->e:F

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->f:F

    mul-float v3, v0, v1

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->m:Landroid/graphics/RectF;

    iget v2, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->c:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->n:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private f()V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getDiameter()F

    move-result v2

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v0

    sub-float/2addr v4, v2

    div-float/2addr v4, v7

    iget v5, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->s:F

    add-float/2addr v4, v5

    int-to-float v5, v1

    sub-float/2addr v5, v2

    div-float/2addr v5, v7

    iget v6, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->s:F

    add-float/2addr v5, v6

    int-to-float v0, v0

    add-float/2addr v0, v2

    div-float/2addr v0, v7

    iget v6, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->s:F

    sub-float/2addr v0, v6

    int-to-float v1, v1

    add-float/2addr v1, v2

    div-float/2addr v1, v7

    iget v2, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->s:F

    sub-float/2addr v1, v2

    invoke-direct {v3, v4, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->m:Landroid/graphics/RectF;

    return-void
.end method

.method private g()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->f:F

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->M:Lcom/estrongs/android/ui/controller/widget/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->M:Lcom/estrongs/android/ui/controller/widget/e;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/controller/widget/e;->cancel()V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->M:Lcom/estrongs/android/ui/controller/widget/e;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->P:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->P:Ljava/lang/Runnable;

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->w:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/controller/widget/e;

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->w:I

    iget v2, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->f:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/estrongs/android/ui/controller/widget/e;-><init>(Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;IFF)V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->M:Lcom/estrongs/android/ui/controller/widget/e;

    goto :goto_0
.end method

.method private getDiameter()F
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getRamViewWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getRamViewHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getDimensionSize()I
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->O:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070121

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-super {p0}, Landroid/support/design/widget/FloatingActionButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/controller/widget/g;->a(Landroid/content/res/Resources;F)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getWidth()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getIconHeight()I
    .locals 2

    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->I:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getRamViewHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->s:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->r:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->s:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->I:I

    :cond_0
    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->I:I

    return v0
.end method

.method private getIconWidth()I
    .locals 2

    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->H:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getRamViewWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->s:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->r:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->s:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->H:I

    :cond_0
    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->H:I

    return v0
.end method

.method private h()V
    .locals 6

    const/4 v1, -0x1

    const/high16 v5, 0x40000000    # 2.0f

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->a:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->C:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->A:I

    if-eq v0, v1, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->E:Lcom/estrongs/android/ui/controller/widget/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/controller/widget/f;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v5

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v5, v1, v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/controller/widget/f;-><init>(Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;FFFF)V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->E:Lcom/estrongs/android/ui/controller/widget/f;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->E:Lcom/estrongs/android/ui/controller/widget/f;

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->F:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/controller/widget/f;->setDuration(J)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->Q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->Q:Ljava/lang/Runnable;

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->N:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->C:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->A:I

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->D:Z

    if-eqz v0, :cond_1

    goto :goto_0
.end method


# virtual methods
.method public a(F)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->a(FZ)V

    return-void
.end method

.method public a(FFZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->E:Lcom/estrongs/android/ui/controller/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->E:Lcom/estrongs/android/ui/controller/widget/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/controller/widget/f;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->M:Lcom/estrongs/android/ui/controller/widget/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->M:Lcom/estrongs/android/ui/controller/widget/e;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/controller/widget/e;->cancel()V

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->clearAnimation()V

    :cond_2
    div-float v0, p1, p2

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->z:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->C:Z

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->C:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->y:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_1
    div-float v0, p1, p2

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->b(F)F

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->e:F

    iput p1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->g:F

    iput p2, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->h:F

    if-eqz p3, :cond_7

    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->g()V

    :goto_2
    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->D:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->A:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->C:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->E:Lcom/estrongs/android/ui/controller/widget/f;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->E:Lcom/estrongs/android/ui/controller/widget/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/controller/widget/f;->cancel()V

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->clearAnimation()V

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->x:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->f:F

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->invalidate()V

    goto :goto_2
.end method

.method public a(FZ)V
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p0, p1, v0, p2}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->a(FFZ)V

    return-void
.end method

.method public a(IF)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setNullTextImageResId(I)V

    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->a(F)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/controller/widget/c;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/controller/widget/c;-><init>(Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/controller/widget/c;->start()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->a:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->C:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->y:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->G:Z

    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->f:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->f:F

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->invalidate()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->x:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public getCenter()Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getPhase()F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->f:F

    return v0
.end method

.method public getRamViewHeight()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->K:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getDimensionSize()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->K:I

    :cond_0
    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->K:I

    return v0
.end method

.method public getRamViewWidth()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->J:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getDimensionSize()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->J:I

    :cond_0
    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->J:I

    return v0
.end method

.method public getRingColor()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->q:I

    return v0
.end method

.method public getRingStrokeWidth()F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->r:F

    return v0
.end method

.method public getStepSize()F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->d:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->t:I

    return v0
.end method

.method public getValue()F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->g:F

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/support/design/widget/FloatingActionButton;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->B:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->B:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->a:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->L:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->L:Z

    invoke-direct {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->f()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->d(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->e(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->G:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->l:[Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->c(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->A:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setAnimDuration(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->w:I

    return-void
.end method

.method public setCustomText([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->l:[Ljava/lang/String;

    return-void
.end method

.method public setDimAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->j:I

    return-void
.end method

.method public setDrawText(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->i:Z

    return-void
.end method

.method public setFormatDigits(I)V
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    if-nez v0, :cond_0

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "###,###,###,##0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->k:Ljava/text/DecimalFormat;

    return-void
.end method

.method public setIsRamAnimView(Z)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iput-boolean p1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->a:Z

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->a:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->E:Lcom/estrongs/android/ui/controller/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->E:Lcom/estrongs/android/ui/controller/widget/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/controller/widget/f;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->M:Lcom/estrongs/android/ui/controller/widget/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->M:Lcom/estrongs/android/ui/controller/widget/e;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/controller/widget/e;->cancel()V

    :cond_1
    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->f:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setPhase(F)V

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->clearAnimation()V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->P:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->Q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public setNeedRotateWhenWarn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->D:Z

    return-void
.end method

.method public setNormalColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->x:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setNullTextImageResId(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->A:I

    return-void
.end method

.method public setPhase(F)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->f:F

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->invalidate()V

    return-void
.end method

.method public setRingColor(I)V
    .locals 2

    iput p1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->q:I

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->q:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setRingMargin(F)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->s:F

    return-void
.end method

.method public setRingStrokeWidth(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/controller/widget/g;->a(Landroid/content/res/Resources;F)F

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->r:F

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->r:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setStartAngle(F)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->c:F

    return-void
.end method

.method public setStepSize(F)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->d:F

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    iput p1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->t:I

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 4

    iput p1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->u:F

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->o:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->u:F

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/controller/widget/g;->a(Landroid/content/res/Resources;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->p:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->u:F

    iget v3, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->v:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/controller/widget/g;->a(Landroid/content/res/Resources;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->b:Ljava/lang/String;

    return-void
.end method

.method public setUnitTextSizePercent(F)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->v:F

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-super {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->a:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->E:Lcom/estrongs/android/ui/controller/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->E:Lcom/estrongs/android/ui/controller/widget/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/controller/widget/f;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->M:Lcom/estrongs/android/ui/controller/widget/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->M:Lcom/estrongs/android/ui/controller/widget/e;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/controller/widget/e;->cancel()V

    :cond_1
    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->f:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setPhase(F)V

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->clearAnimation()V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->P:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->Q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public setWarnColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->y:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setWarnPercent(F)V
    .locals 2

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    div-float/2addr p1, v1

    :cond_0
    iput p1, p0, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->z:F

    return-void
.end method
