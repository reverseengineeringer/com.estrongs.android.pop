.class public Lcom/estrongs/android/widget/TranslateImageView;
.super Lcom/estrongs/android/pop/esclasses/ESImageView;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/graphics/Bitmap;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:J

.field private h:Lcom/estrongs/android/widget/bv;

.field private i:Lcom/estrongs/android/widget/bu;

.field private j:Landroid/graphics/Rect;

.field private k:Z

.field private l:Ljava/lang/Runnable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/graphics/Paint;

.field private s:Landroid/graphics/ColorMatrixColorFilter;

.field private t:Landroid/graphics/ColorMatrix;

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->a:Landroid/os/Handler;

    const/16 v0, 0xfa

    iput v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->f:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->j:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->k:Z

    invoke-direct {p0}, Lcom/estrongs/android/widget/TranslateImageView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/pop/esclasses/ESImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->a:Landroid/os/Handler;

    const/16 v0, 0xfa

    iput v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->f:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->j:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->k:Z

    invoke-direct {p0}, Lcom/estrongs/android/widget/TranslateImageView;->a()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/widget/TranslateImageView;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/widget/TranslateImageView;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/widget/TranslateImageView;->c:I

    return p1
.end method

.method static synthetic a(Lcom/estrongs/android/widget/TranslateImageView;Lcom/estrongs/android/widget/bv;)Lcom/estrongs/android/widget/bv;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/TranslateImageView;->h:Lcom/estrongs/android/widget/bv;

    return-object p1
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->c:I

    iput v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    iput v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    iput-boolean v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->k:Z

    invoke-virtual {p0}, Lcom/estrongs/android/widget/TranslateImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->x:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->y:I

    new-instance v0, Lcom/estrongs/android/widget/bt;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/bt;-><init>(Lcom/estrongs/android/widget/TranslateImageView;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->l:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/TranslateImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020281

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/TranslateImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020280

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->n:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->o:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->t:Landroid/graphics/ColorMatrix;

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->t:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->s:Landroid/graphics/ColorMatrixColorFilter;

    iget-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->o:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->s:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/widget/TranslateImageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/widget/TranslateImageView;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/widget/TranslateImageView;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    return v0
.end method

.method private b()V
    .locals 6

    iget v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->f:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    iput v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->c:I

    sub-int v1, v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/estrongs/android/widget/TranslateImageView;->g:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iget v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->f:I

    if-le v0, v2, :cond_1

    iget v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->f:I

    :cond_1
    mul-int/2addr v0, v1

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->f:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/widget/TranslateImageView;)Lcom/estrongs/android/widget/bv;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->h:Lcom/estrongs/android/widget/bv;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/widget/TranslateImageView;)Lcom/estrongs/android/widget/bu;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->i:Lcom/estrongs/android/widget/bu;

    return-object v0
.end method

.method private getImageRect()Landroid/graphics/Rect;
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->j:Landroid/graphics/Rect;

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    invoke-virtual {p0}, Lcom/estrongs/android/widget/TranslateImageView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/estrongs/android/widget/TranslateImageView;->getBottom()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->j:Landroid/graphics/Rect;

    return-object v0

    :cond_0
    iget v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->j:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/TranslateImageView;->getRight()I

    move-result v1

    iget v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/estrongs/android/widget/TranslateImageView;->getBottom()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->j:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/TranslateImageView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/TranslateImageView;->getBottom()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public a(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->k:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    iput p2, p0, Lcom/estrongs/android/widget/TranslateImageView;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->k:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->g:J

    iget-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/estrongs/android/widget/TranslateImageView;->invalidate()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESImageView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :try_start_0
    iget-boolean v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->k:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/widget/TranslateImageView;->b()V

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    if-lez v2, :cond_4

    iget v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    iget-object v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v0, v2

    if-gez v0, :cond_3

    iget v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    :cond_1
    :goto_0
    iget v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    mul-int/lit8 v2, v2, 0x50

    div-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x0

    iget-object v3, p0, Lcom/estrongs/android/widget/TranslateImageView;->t:Landroid/graphics/ColorMatrix;

    invoke-virtual {v3}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v3

    const/4 v4, 0x4

    const/16 v5, 0x9

    const/16 v6, 0xe

    int-to-float v2, v2

    aput v2, v3, v6

    aput v2, v3, v5

    aput v2, v3, v4

    iget-object v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->t:Landroid/graphics/ColorMatrix;

    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v3, p0, Lcom/estrongs/android/widget/TranslateImageView;->t:Landroid/graphics/ColorMatrix;

    invoke-direct {v2, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->s:Landroid/graphics/ColorMatrixColorFilter;

    iget-object v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->o:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/estrongs/android/widget/TranslateImageView;->s:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    if-lez v2, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->b:Landroid/graphics/Bitmap;

    int-to-float v2, v0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/estrongs/android/widget/TranslateImageView;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->m:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, v0, v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/TranslateImageView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    if-gez v2, :cond_1

    iget v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    iget-object v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v0, v2

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    goto/16 :goto_0

    :cond_6
    iget v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    if-gez v2, :cond_7

    iget-object v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->b:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/estrongs/android/widget/TranslateImageView;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->n:Landroid/graphics/drawable/Drawable;

    add-int v3, v1, v0

    const/4 v4, 0x0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/TranslateImageView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->b:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/estrongs/android/widget/TranslateImageView;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getOnHideListener()Lcom/estrongs/android/widget/bu;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->i:Lcom/estrongs/android/widget/bu;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/estrongs/android/widget/TranslateImageView;->getImageRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    iput v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->v:I

    iput v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->w:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->z:Landroid/view/VelocityTracker;

    iget-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->z:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_1
    iget v3, p0, Lcom/estrongs/android/widget/TranslateImageView;->u:I

    if-ne v3, v6, :cond_4

    iget v3, p0, Lcom/estrongs/android/widget/TranslateImageView;->v:I

    sub-int v3, v1, v3

    iget v4, p0, Lcom/estrongs/android/widget/TranslateImageView;->v:I

    sub-int v4, v1, v4

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/estrongs/android/widget/TranslateImageView;->w:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/estrongs/android/widget/TranslateImageView;->w:I

    sub-int/2addr v2, v5

    mul-int/2addr v2, v4

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p0, Lcom/estrongs/android/widget/TranslateImageView;->x:I

    if-le v2, v3, :cond_2

    iput v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->u:I

    :cond_2
    :goto_1
    iget v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->u:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->v:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->u:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    if-lez v1, :cond_6

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    if-gez v1, :cond_5

    iput v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/estrongs/android/widget/TranslateImageView;->invalidate()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->z:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    iput v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    goto :goto_2

    :cond_6
    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    if-gez v1, :cond_3

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    if-lez v1, :cond_7

    iput v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    iput v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    goto :goto_2

    :pswitch_2
    iget v3, p0, Lcom/estrongs/android/widget/TranslateImageView;->u:I

    if-ne v3, v6, :cond_8

    iget v3, p0, Lcom/estrongs/android/widget/TranslateImageView;->v:I

    sub-int v3, v1, v3

    iget v4, p0, Lcom/estrongs/android/widget/TranslateImageView;->v:I

    sub-int/2addr v1, v4

    mul-int/2addr v1, v3

    iget v3, p0, Lcom/estrongs/android/widget/TranslateImageView;->w:I

    sub-int v3, v2, v3

    iget v4, p0, Lcom/estrongs/android/widget/TranslateImageView;->w:I

    sub-int/2addr v2, v4

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->x:I

    if-le v1, v2, :cond_8

    iput v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->u:I

    :cond_8
    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->u:I

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->z:Landroid/view/VelocityTracker;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->z:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    if-lez v2, :cond_d

    iget v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    iget v3, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    if-lt v2, v3, :cond_b

    iput-object v5, p0, Lcom/estrongs/android/widget/TranslateImageView;->h:Lcom/estrongs/android/widget/bv;

    iget v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    sub-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0xfa

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    iput v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->c:I

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/widget/TranslateImageView;->a(II)V

    :cond_9
    :goto_3
    iput v6, p0, Lcom/estrongs/android/widget/TranslateImageView;->u:I

    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->z:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    goto/16 :goto_0

    :cond_b
    if-lez v1, :cond_c

    iget v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->y:I

    if-le v1, v2, :cond_c

    iput-object v5, p0, Lcom/estrongs/android/widget/TranslateImageView;->h:Lcom/estrongs/android/widget/bv;

    iget v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    sub-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0xfa

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    iput v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->c:I

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/widget/TranslateImageView;->a(II)V

    goto :goto_3

    :cond_c
    iput-object v5, p0, Lcom/estrongs/android/widget/TranslateImageView;->h:Lcom/estrongs/android/widget/bv;

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    add-int/lit8 v1, v1, 0x0

    mul-int/lit16 v1, v1, 0xfa

    iget v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    iput v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->c:I

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/widget/TranslateImageView;->a(II)V

    goto :goto_3

    :cond_d
    iget v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    if-gez v2, :cond_9

    iget v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    iget v3, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    if-lt v2, v3, :cond_f

    if-gez v1, :cond_e

    iget v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->y:I

    rsub-int/lit8 v2, v2, 0x0

    if-ge v1, v2, :cond_e

    iput-object v5, p0, Lcom/estrongs/android/widget/TranslateImageView;->h:Lcom/estrongs/android/widget/bv;

    iget v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    sub-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0xfa

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    iput v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->c:I

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/widget/TranslateImageView;->a(II)V

    goto :goto_3

    :cond_e
    iput-object v5, p0, Lcom/estrongs/android/widget/TranslateImageView;->h:Lcom/estrongs/android/widget/bv;

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    add-int/lit8 v1, v1, 0x0

    mul-int/lit16 v1, v1, 0xfa

    iget v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    iput v2, p0, Lcom/estrongs/android/widget/TranslateImageView;->c:I

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/widget/TranslateImageView;->a(II)V

    goto :goto_3

    :cond_f
    iput-object v5, p0, Lcom/estrongs/android/widget/TranslateImageView;->h:Lcom/estrongs/android/widget/bv;

    iget v0, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    sub-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0xfa

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->d:I

    iput v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->c:I

    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/widget/TranslateImageView;->a(II)V

    goto/16 :goto_3

    :cond_10
    iget v1, p0, Lcom/estrongs/android/widget/TranslateImageView;->u:I

    if-ne v1, v6, :cond_a

    const/16 v1, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/widget/TranslateImageView;->a(II)V

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOnHideListener(Lcom/estrongs/android/widget/bu;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/TranslateImageView;->i:Lcom/estrongs/android/widget/bu;

    return-void
.end method

.method public setOnTranslateListener(Lcom/estrongs/android/widget/bv;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/TranslateImageView;->h:Lcom/estrongs/android/widget/bv;

    return-void
.end method

.method public setTranslateBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/TranslateImageView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/TranslateImageView;->postInvalidate()V

    return-void
.end method

.method public setmDestPosition(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/widget/TranslateImageView;->e:I

    return-void
.end method

.method public setmDuration(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/widget/TranslateImageView;->f:I

    return-void
.end method
