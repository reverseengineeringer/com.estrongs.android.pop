.class public Lcom/duapps/ad/view/a;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:J


# instance fields
.field private A:Z

.field private B:I

.field private c:I

.field private d:I

.field private e:I

.field private final f:Landroid/view/View;

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private final q:Landroid/graphics/Paint;

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:Landroid/graphics/RectF;

.field private w:F

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/duapps/ad/view/a;->x:I

    iput v0, p0, Lcom/duapps/ad/view/a;->y:I

    iput-boolean v1, p0, Lcom/duapps/ad/view/a;->z:Z

    iput-boolean v0, p0, Lcom/duapps/ad/view/a;->A:Z

    const/16 v0, 0x320

    iput v0, p0, Lcom/duapps/ad/view/a;->B:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    iput-object p1, p0, Lcom/duapps/ad/view/a;->f:Landroid/view/View;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/view/a;->q:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/duapps/ad/view/a;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public static a(Lcom/duapps/ad/view/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/duapps/ad/view/a;->d()V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;FF)Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-gtz v4, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_3

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gez v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-gez v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-lez v0, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, p2, v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p3, v1

    invoke-direct {p0, v0, v5, v1}, Lcom/duapps/ad/view/a;->a(Landroid/view/ViewGroup;FF)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public static b(Lcom/duapps/ad/view/a;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/view/a;->f:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/duapps/ad/view/a;->r:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/duapps/ad/view/a;->o:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/duapps/ad/view/a;->n:F

    iget v0, p0, Lcom/duapps/ad/view/a;->o:F

    neg-float v0, v0

    iput v0, p0, Lcom/duapps/ad/view/a;->o:F

    iput v1, p0, Lcom/duapps/ad/view/a;->p:F

    iget v0, p0, Lcom/duapps/ad/view/a;->h:F

    iget v1, p0, Lcom/duapps/ad/view/a;->c:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/duapps/ad/view/a;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/duapps/ad/view/a;->h:F

    iget v0, p0, Lcom/duapps/ad/view/a;->l:F

    iget v1, p0, Lcom/duapps/ad/view/a;->c:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/duapps/ad/view/a;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/duapps/ad/view/a;->l:F

    :cond_0
    return-void
.end method

.method private d()V
    .locals 8

    :try_start_0
    iget-object v2, p0, Lcom/duapps/ad/view/a;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    instance-of v3, v2, Landroid/widget/AdapterView;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Landroid/widget/AdapterView;

    move-object v3, v0

    iget-object v2, p0, Lcom/duapps/ad/view/a;->f:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/duapps/ad/view/a;->f:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v6

    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/duapps/ad/view/a;->w:F

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/duapps/ad/view/a;->x:I

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/duapps/ad/view/a;->r:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/duapps/ad/view/a;->z:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/duapps/ad/view/a;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget-object v2, p0, Lcom/duapps/ad/view/a;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    int-to-float v0, v0

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/view/a;->q:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/duapps/ad/view/a;->q:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/duapps/ad/view/a;->q:Landroid/graphics/Paint;

    iget v2, p0, Lcom/duapps/ad/view/a;->x:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/duapps/ad/view/a;->w:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/duapps/ad/view/a;->q:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    iget v3, p0, Lcom/duapps/ad/view/a;->n:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/duapps/ad/view/a;->t:I

    int-to-float v3, v0

    iget v0, p0, Lcom/duapps/ad/view/a;->u:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/duapps/ad/view/a;->q:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    iget v0, p0, Lcom/duapps/ad/view/a;->n:F

    iget v2, p0, Lcom/duapps/ad/view/a;->o:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/duapps/ad/view/a;->n:F

    iget v0, p0, Lcom/duapps/ad/view/a;->o:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    iget v0, p0, Lcom/duapps/ad/view/a;->n:F

    iget v2, p0, Lcom/duapps/ad/view/a;->p:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    iget v0, p0, Lcom/duapps/ad/view/a;->p:F

    iput v0, p0, Lcom/duapps/ad/view/a;->n:F

    iput-boolean v6, p0, Lcom/duapps/ad/view/a;->r:Z

    iget-boolean v0, p0, Lcom/duapps/ad/view/a;->s:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duapps/ad/view/a;->f:Landroid/view/View;

    new-instance v2, Lcom/duapps/ad/view/b;

    invoke-direct {v2, p0, p0}, Lcom/duapps/ad/view/b;-><init>(Lcom/duapps/ad/view/a;Lcom/duapps/ad/view/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iput-boolean v6, p0, Lcom/duapps/ad/view/a;->s:Z

    :cond_2
    :goto_1
    iget v0, p0, Lcom/duapps/ad/view/a;->w:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/duapps/ad/view/a;->q:Landroid/graphics/Paint;

    iget v2, p0, Lcom/duapps/ad/view/a;->y:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/duapps/ad/view/a;->g:F

    iget v2, p0, Lcom/duapps/ad/view/a;->j:F

    iget v3, p0, Lcom/duapps/ad/view/a;->k:F

    iget-object v4, p0, Lcom/duapps/ad/view/a;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_2
    iget v0, p0, Lcom/duapps/ad/view/a;->g:F

    iget v2, p0, Lcom/duapps/ad/view/a;->h:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/duapps/ad/view/a;->g:F

    iget v0, p0, Lcom/duapps/ad/view/a;->h:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    iget v0, p0, Lcom/duapps/ad/view/a;->g:F

    iget v1, p0, Lcom/duapps/ad/view/a;->i:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget v0, p0, Lcom/duapps/ad/view/a;->i:F

    iput v0, p0, Lcom/duapps/ad/view/a;->g:F

    :cond_3
    :goto_3
    iget v0, p0, Lcom/duapps/ad/view/a;->k:F

    iget v1, p0, Lcom/duapps/ad/view/a;->l:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/duapps/ad/view/a;->k:F

    iget v0, p0, Lcom/duapps/ad/view/a;->k:F

    iget v1, p0, Lcom/duapps/ad/view/a;->m:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget v0, p0, Lcom/duapps/ad/view/a;->m:F

    iput v0, p0, Lcom/duapps/ad/view/a;->k:F

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/duapps/ad/view/a;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/duapps/ad/view/a;->v:Landroid/graphics/RectF;

    iget v2, p0, Lcom/duapps/ad/view/a;->w:F

    iget v3, p0, Lcom/duapps/ad/view/a;->w:F

    iget-object v4, p0, Lcom/duapps/ad/view/a;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/duapps/ad/view/a;->n:F

    iget v2, p0, Lcom/duapps/ad/view/a;->p:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget v0, p0, Lcom/duapps/ad/view/a;->p:F

    iput v0, p0, Lcom/duapps/ad/view/a;->n:F

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/duapps/ad/view/a;->v:Landroid/graphics/RectF;

    iget v2, p0, Lcom/duapps/ad/view/a;->w:F

    iget v3, p0, Lcom/duapps/ad/view/a;->w:F

    iget-object v4, p0, Lcom/duapps/ad/view/a;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/duapps/ad/view/a;->v:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/duapps/ad/view/a;->q:Landroid/graphics/Paint;

    const/16 v3, 0x1f

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    iget-object v2, p0, Lcom/duapps/ad/view/a;->q:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/duapps/ad/view/a;->v:Landroid/graphics/RectF;

    iget v3, p0, Lcom/duapps/ad/view/a;->w:F

    iget v4, p0, Lcom/duapps/ad/view/a;->w:F

    iget-object v5, p0, Lcom/duapps/ad/view/a;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/duapps/ad/view/a;->q:Landroid/graphics/Paint;

    iget v3, p0, Lcom/duapps/ad/view/a;->y:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/duapps/ad/view/a;->q:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget v2, p0, Lcom/duapps/ad/view/a;->g:F

    iget v3, p0, Lcom/duapps/ad/view/a;->j:F

    iget v4, p0, Lcom/duapps/ad/view/a;->k:F

    iget-object v5, p0, Lcom/duapps/ad/view/a;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_2

    :cond_9
    iget v0, p0, Lcom/duapps/ad/view/a;->g:F

    iget v1, p0, Lcom/duapps/ad/view/a;->i:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/duapps/ad/view/a;->i:F

    iput v0, p0, Lcom/duapps/ad/view/a;->g:F

    goto/16 :goto_3
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 9

    const/16 v8, 0x3e8

    const/4 v3, 0x1

    const/high16 v5, 0x41a00000    # 20.0f

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/duapps/ad/view/a;->z:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/duapps/ad/view/a;->s:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/view/a;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/view/a;->f:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/view/a;->f:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/duapps/ad/view/a;->a(Landroid/view/ViewGroup;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/duapps/ad/view/a;->r:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/duapps/ad/view/a;->j:F

    sget v0, Lcom/duapps/ad/view/a;->a:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/duapps/ad/view/a;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcom/duapps/ad/view/a;->a:I

    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/view/a;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/view/a;->t:I

    iget-object v0, p0, Lcom/duapps/ad/view/a;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/view/a;->u:I

    iget-object v0, p0, Lcom/duapps/ad/view/a;->v:Landroid/graphics/RectF;

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/duapps/ad/view/a;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/duapps/ad/view/a;->u:I

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/duapps/ad/view/a;->v:Landroid/graphics/RectF;

    :cond_3
    iget-boolean v0, p0, Lcom/duapps/ad/view/a;->A:Z

    if-nez v0, :cond_5

    const/high16 v0, 0x44fa0000    # 2000.0f

    iget v1, p0, Lcom/duapps/ad/view/a;->t:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sget v1, Lcom/duapps/ad/view/a;->a:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/duapps/ad/view/a;->c:I

    iget v0, p0, Lcom/duapps/ad/view/a;->c:I

    if-ge v0, v8, :cond_4

    iput v8, p0, Lcom/duapps/ad/view/a;->c:I

    :cond_4
    :goto_1
    const/16 v0, 0xc8

    iput v0, p0, Lcom/duapps/ad/view/a;->d:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/duapps/ad/view/a;->e:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/duapps/ad/view/a;->g:F

    iget v0, p0, Lcom/duapps/ad/view/a;->t:I

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iput v0, p0, Lcom/duapps/ad/view/a;->i:F

    iget v0, p0, Lcom/duapps/ad/view/a;->i:F

    iget v1, p0, Lcom/duapps/ad/view/a;->g:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v5

    iget v1, p0, Lcom/duapps/ad/view/a;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/duapps/ad/view/a;->h:F

    iput v4, p0, Lcom/duapps/ad/view/a;->k:F

    iget v0, p0, Lcom/duapps/ad/view/a;->u:I

    iget v1, p0, Lcom/duapps/ad/view/a;->j:F

    shr-int/lit8 v2, v0, 0x1

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_6

    iget v0, p0, Lcom/duapps/ad/view/a;->t:I

    shr-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/duapps/ad/view/a;->j:F

    float-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/duapps/ad/view/a;->m:F

    :goto_2
    iget v0, p0, Lcom/duapps/ad/view/a;->m:F

    iget v1, p0, Lcom/duapps/ad/view/a;->k:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v5

    iget v1, p0, Lcom/duapps/ad/view/a;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/duapps/ad/view/a;->l:F

    iput v4, p0, Lcom/duapps/ad/view/a;->n:F

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/duapps/ad/view/a;->p:F

    const/high16 v0, 0x40000000    # 2.0f

    iget v1, p0, Lcom/duapps/ad/view/a;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/duapps/ad/view/a;->o:F

    iget-object v0, p0, Lcom/duapps/ad/view/a;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/duapps/ad/view/a;->B:I

    iput v0, p0, Lcom/duapps/ad/view/a;->c:I

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/duapps/ad/view/a;->t:I

    shr-int/lit8 v1, v1, 0x1

    int-to-double v2, v1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    int-to-float v0, v0

    iget v1, p0, Lcom/duapps/ad/view/a;->j:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/duapps/ad/view/a;->m:F

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpl-float v2, v0, v4

    if-ltz v2, :cond_8

    iget v2, p0, Lcom/duapps/ad/view/a;->t:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_8

    cmpl-float v0, v1, v4

    if-ltz v0, :cond_8

    iget v0, p0, Lcom/duapps/ad/view/a;->u:I

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-lez v0, :cond_0

    :cond_8
    invoke-direct {p0}, Lcom/duapps/ad/view/a;->c()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/view/a;->A:Z

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/duapps/ad/view/a;->c()V

    goto/16 :goto_0
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/duapps/ad/view/a;->r:Z

    return v0
.end method

.method public final b()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/duapps/ad/view/a;->b:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    sput-wide v0, Lcom/duapps/ad/view/a;->b:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/view/a;->s:Z

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/duapps/ad/view/a;->y:I

    return-void
.end method
