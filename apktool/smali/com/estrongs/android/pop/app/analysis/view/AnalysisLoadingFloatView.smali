.class public Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Point;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:J

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Landroid/animation/AnimatorSet;

.field private s:F

.field private t:Landroid/animation/ObjectAnimator;

.field private u:Z

.field private v:Landroid/graphics/Bitmap;

.field private w:Landroid/graphics/Bitmap;

.field private x:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f07007a

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->e:I

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->f:I

    const v0, 0x7f070059

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->g:I

    const v0, 0x7f070056

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->h:I

    const-string v0, "#7f000000"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->i:Ljava/lang/String;

    const-string v0, "#3335a4f2"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->j:Ljava/lang/String;

    const-string v0, "#b2000000"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->k:Ljava/lang/String;

    const-string v0, "#ff35a4f2"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->l:Ljava/lang/String;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->m:J

    const v0, 0x7f02006c

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->n:I

    const v0, 0x7f02006b

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->o:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->s:F

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f07007a

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->e:I

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->f:I

    const v0, 0x7f070059

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->g:I

    const v0, 0x7f070056

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->h:I

    const-string v0, "#7f000000"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->i:Ljava/lang/String;

    const-string v0, "#3335a4f2"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->j:Ljava/lang/String;

    const-string v0, "#b2000000"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->k:Ljava/lang/String;

    const-string v0, "#ff35a4f2"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->l:Ljava/lang/String;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->m:J

    const v0, 0x7f02006c

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->n:I

    const v0, 0x7f02006b

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->o:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->s:F

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const v0, 0x7f07007a

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->e:I

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->f:I

    const v0, 0x7f070059

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->g:I

    const v0, 0x7f070056

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->h:I

    const-string v0, "#7f000000"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->i:Ljava/lang/String;

    const-string v0, "#3335a4f2"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->j:Ljava/lang/String;

    const-string v0, "#b2000000"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->k:Ljava/lang/String;

    const-string v0, "#ff35a4f2"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->l:Ljava/lang/String;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->m:J

    const v0, 0x7f02006c

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->n:I

    const v0, 0x7f02006b

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->o:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->s:F

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->e()V

    return-void
.end method

.method private a(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->d:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->g:I

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->a(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->u:Z

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->u:Z

    return p1
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->d:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->h:I

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->a(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->p:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v3, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->v:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v3, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->d:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->g:I

    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->a(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->s:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->u:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x43340000    # 180.0f

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->d:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->d:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->x:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private e()V
    .locals 5

    const v2, 0x7f070046

    const/4 v4, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->n:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->v:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->o:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020070

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->x:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->b:Landroid/graphics/Paint;

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->c:Landroid/graphics/Paint;

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const-string v0, "animateScan"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->t:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->t:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->t:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->t:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->t:Landroid/animation/ObjectAnimator;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->m:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->t:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/view/a;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/view/a;-><init>(Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->r:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->r:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->t:Landroid/animation/ObjectAnimator;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private f()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->s:F

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private g()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->r:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->q:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->f()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->q:Z

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->p:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->g()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->p:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->g()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->invalidate()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->q:Z

    return v0
.end method

.method public getAnimateScan()F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->s:F

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->d:Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->b(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->c(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->p:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->d(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->e:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->a(I)I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->f:I

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->a(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->resolveSize(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, p2}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->resolveSize(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAnimateScan(F)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->s:F

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->postInvalidate()V

    return-void
.end method
