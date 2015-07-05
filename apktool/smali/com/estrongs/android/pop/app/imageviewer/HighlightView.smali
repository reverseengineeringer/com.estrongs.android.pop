.class Lcom/estrongs/android/pop/app/imageviewer/HighlightView;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/view/View;

.field b:Z

.field c:Z

.field d:Landroid/graphics/Rect;

.field e:Landroid/graphics/Rect;

.field f:Landroid/graphics/RectF;

.field g:Landroid/graphics/Matrix;

.field private h:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

.field private i:Landroid/graphics/RectF;

.field private j:Z

.field private k:F

.field private l:Z

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/graphics/drawable/Drawable;

.field private final p:Landroid/graphics/Paint;

.field private final q:Landroid/graphics/Paint;

.field private final r:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;->None:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->h:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->j:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->l:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->p:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->q:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->r:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a:Landroid/view/View;

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->o:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private g()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method


# virtual methods
.method public a(FF)I
    .locals 9

    const/16 v0, 0x20

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->g()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_0
    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->l:Z

    if-eqz v2, :cond_6

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v6, v4, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    cmpg-float v0, v3, v8

    if-gez v0, :cond_2

    const/16 v0, 0x8

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v0, 0x10

    goto :goto_0

    :cond_3
    cmpg-float v0, v2, v8

    if-gez v0, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    if-lt v4, v5, :cond_1

    move v0, v1

    goto :goto_0

    :cond_6
    iget v2, v5, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, v7

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_b

    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    add-float/2addr v2, v7

    cmpg-float v2, p2, v2

    if-gez v2, :cond_b

    move v2, v1

    :goto_1
    iget v4, v5, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v4, v7

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_7

    iget v4, v5, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    add-float/2addr v4, v7

    cmpg-float v4, p1, v4

    if-gez v4, :cond_7

    move v3, v1

    :cond_7
    iget v4, v5, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_d

    if-eqz v2, :cond_d

    const/4 v4, 0x3

    :goto_2
    iget v6, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-gez v6, :cond_8

    if-eqz v2, :cond_8

    or-int/lit8 v4, v4, 0x4

    :cond_8
    iget v2, v5, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v7

    if-gez v2, :cond_9

    if-eqz v3, :cond_9

    or-int/lit8 v4, v4, 0x8

    :cond_9
    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v7

    if-gez v2, :cond_c

    if-eqz v3, :cond_c

    or-int/lit8 v4, v4, 0x10

    move v2, v4

    :goto_3
    if-ne v2, v1, :cond_a

    float-to-int v1, p1

    float-to-int v3, p2

    invoke-virtual {v5, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_a
    move v0, v2

    goto :goto_0

    :cond_b
    move v2, v3

    goto :goto_1

    :cond_c
    move v2, v4

    goto :goto_3

    :cond_d
    move v4, v1

    goto :goto_2
.end method

.method a(IFF)V
    .locals 5

    const/4 v1, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->g()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_0
    if-ne p1, v2, :cond_1

    :goto_0
    return-void

    :cond_1
    const/16 v4, 0x20

    if-ne p1, v4, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->b(FF)V

    goto :goto_0

    :cond_2
    and-int/lit8 v4, p1, 0x6

    if-nez v4, :cond_3

    move p2, v0

    :cond_3
    and-int/lit8 v4, p1, 0x18

    if-nez v4, :cond_4

    move p3, v0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    mul-float v4, p2, v0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    mul-float v3, p3, v0

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    int-to-float v0, v0

    mul-float/2addr v4, v0

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-virtual {p0, v4, v0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->c(FF)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 14

    const/high16 v6, 0x40000000    # 2.0f

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->r:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->l:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    div-float v5, v0, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    div-float/2addr v3, v6

    add-float/2addr v3, v5

    div-float/2addr v0, v6

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v4, v3, v0, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->r:Landroid/graphics/Paint;

    const v3, -0x10fb2a

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    :try_start_0
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->p:Landroid/graphics/Paint;

    :goto_3
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->h:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    sget-object v1, Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;->Grow:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->l:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v3, v0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v2, v3, v2

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->o:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/Rect;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->r:Landroid/graphics/Paint;

    const/16 v3, -0x7600

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->q:Landroid/graphics/Paint;

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/Rect;

    if-eqz v4, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    :cond_7
    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v11, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    sub-int v11, v1, v4

    sub-int v12, v9, v5

    add-int/2addr v1, v4

    add-int v13, v9, v5

    invoke-virtual {v10, v11, v12, v1, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    sub-int v10, v0, v4

    sub-int v11, v9, v5

    add-int/2addr v0, v4

    add-int v4, v9, v5

    invoke-virtual {v1, v10, v11, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    sub-int v1, v8, v7

    sub-int v4, v2, v6

    add-int v5, v8, v7

    add-int/2addr v2, v6

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    sub-int v1, v8, v7

    sub-int v2, v3, v6

    add-int v4, v8, v7

    add-int/2addr v3, v6

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method

.method public a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZZ)V
    .locals 5

    const/16 v4, 0x7d

    const/4 v0, 0x1

    const/16 v3, 0x32

    if-eqz p4, :cond_0

    move p5, v0

    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->g:Landroid/graphics/Matrix;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->i:Landroid/graphics/RectF;

    iput-boolean p5, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->j:Z

    iput-boolean p4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->l:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->k:F

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->g()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->q:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->r:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->r:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->r:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;->None:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->h:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    if-eqz p6, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/Rect;

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f()V

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->h:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->h:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->b:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->b:Z

    return v0
.end method

.method public b()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method b(FF)V
    .locals 10

    const/16 v9, -0xa

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    invoke-static {v7, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->i:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->i:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v4, v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/RectF;->offset(FF)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->g()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :goto_1
    invoke-virtual {v1, v9, v9}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    div-float v4, v2, v8

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    div-float v5, v2, v8

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    div-float v6, v2, v8

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    div-float/2addr v2, v8

    add-float/2addr v2, v6

    invoke-direct {v0, v3, v4, v5, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    div-int/lit8 v6, v0, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto/16 :goto_1
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->c:Z

    return-void
.end method

.method public c()Landroid/graphics/Rect;
    .locals 7

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v4

    new-instance v4, Landroid/graphics/Rect;

    sub-float v5, v0, v3

    float-to-int v5, v5

    sub-float v6, v1, v2

    float-to-int v6, v6

    add-float/2addr v0, v3

    float-to-int v0, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method c(FF)V
    .locals 10

    const/high16 v2, 0x41c80000    # 25.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->j:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p1, v4

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->k:F

    div-float p2, p1, v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/Rect;

    if-nez v0, :cond_8

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move v3, v4

    move-object v5, v0

    :goto_1
    cmpl-float v0, p1, v4

    if-lez v0, :cond_d

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v1, v9, p1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    div-float p1, v0, v9

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->j:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->k:F

    div-float p2, p1, v0

    move v0, p2

    move v1, p1

    :goto_2
    cmpl-float v6, v0, v4

    if-lez v6, :cond_1

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float v7, v9, v0

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->i:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v6

    sub-float/2addr v0, v6

    div-float/2addr v0, v9

    iget-boolean v6, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->j:Z

    if-eqz v6, :cond_1

    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->k:F

    mul-float/2addr v1, v0

    :cond_1
    neg-float v1, v1

    neg-float v0, v0

    invoke-virtual {v5, v1, v0}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float v0, v2, v0

    neg-float v0, v0

    div-float/2addr v0, v9

    invoke-virtual {v5, v0, v4}, Landroid/graphics/RectF;->inset(FF)V

    :cond_2
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->j:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->k:F

    div-float v0, v2, v0

    :goto_3
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_3

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    div-float/2addr v0, v9

    invoke-virtual {v5, v4, v0}, Landroid/graphics/RectF;->inset(FF)V

    :cond_3
    iget v0, v5, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->i:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {v5, v0, v4}, Landroid/graphics/RectF;->offset(FF)V

    :cond_4
    :goto_4
    iget v0, v5, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->i:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {v5, v4, v0}, Landroid/graphics/RectF;->offset(FF)V

    :cond_5
    :goto_5
    cmpl-float v0, v3, v4

    if-eqz v0, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_c

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v3

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    div-float/2addr v0, v9

    invoke-virtual {v5, v4, v0}, Landroid/graphics/RectF;->inset(FF)V

    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v0, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->g()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_7
    cmpl-float v0, p2, v4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->k:F

    mul-float p1, p2, v0

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float v3, v1, v9

    new-instance v1, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    sub-float/2addr v5, v3

    iget-object v6, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    sub-float/2addr v6, v3

    iget-object v7, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    add-float/2addr v7, v3

    iget-object v8, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    add-float/2addr v3, v8

    invoke-direct {v1, v5, v6, v7, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    move v3, v0

    move-object v5, v1

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto/16 :goto_3

    :cond_a
    iget v0, v5, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->i:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget v0, v5, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->i:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {v5, v0, v4}, Landroid/graphics/RectF;->offset(FF)V

    goto/16 :goto_4

    :cond_b
    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->i:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->i:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {v5, v4, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto/16 :goto_5

    :cond_c
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr v0, v3

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    div-float/2addr v0, v9

    invoke-virtual {v5, v0, v4}, Landroid/graphics/RectF;->inset(FF)V

    goto/16 :goto_6

    :cond_d
    move v0, p2

    move v1, p1

    goto/16 :goto_2
.end method

.method public d()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->g()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    return-void
.end method

.method e()Landroid/graphics/Rect;
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/Rect;

    return-object v0
.end method
