.class public abstract Lcom/estrongs/android/pop/app/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# instance fields
.field private a:Landroid/view/View$OnTouchListener;

.field private b:I

.field private c:F

.field private d:Z

.field private e:Landroid/graphics/PointF;

.field private f:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/a;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/a;->c:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/a;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View$OnTouchListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/a;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/a;->c:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/a;->d:Z

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a;->a:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method private a(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 4

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x3d4c0000    # -90.0f

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method

.method private b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/a;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42340000    # 45.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d()Z
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/high16 v8, 0x42200000    # 40.0f

    const/4 v7, 0x0

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/a;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v0, :cond_3

    iput-boolean v6, p0, Lcom/estrongs/android/pop/app/a;->d:Z

    iput v7, p0, Lcom/estrongs/android/pop/app/a;->c:F

    if-eqz v1, :cond_0

    if-ne v1, v3, :cond_1

    :cond_0
    iput v0, p0, Lcom/estrongs/android/pop/app/a;->b:I

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/a;->a:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a;->a:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_2
    :goto_0
    return v0

    :cond_3
    if-ne v2, v3, :cond_8

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v3, p0, Lcom/estrongs/android/pop/app/a;->e:Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v3, p0, Lcom/estrongs/android/pop/app/a;->f:Landroid/graphics/PointF;

    const/16 v3, 0x105

    if-ne v1, v3, :cond_4

    iput-boolean v6, p0, Lcom/estrongs/android/pop/app/a;->d:Z

    iput v2, p0, Lcom/estrongs/android/pop/app/a;->c:F

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_4
    :try_start_0
    iget v1, p0, Lcom/estrongs/android/pop/app/a;->c:F

    cmpl-float v1, v7, v1

    if-nez v1, :cond_5

    iput v2, p0, Lcom/estrongs/android/pop/app/a;->c:F

    :cond_5
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/a;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a;->e:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/a;->f:Landroid/graphics/PointF;

    invoke-direct {p0, v1, v3}, Lcom/estrongs/android/pop/app/a;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_6
    const/4 v1, 0x2

    iput v1, p0, Lcom/estrongs/android/pop/app/a;->b:I

    iget v1, p0, Lcom/estrongs/android/pop/app/a;->c:F

    sub-float v1, v2, v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_7

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/a;->d:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/a;->c()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/a;->d:Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_7
    iget v1, p0, Lcom/estrongs/android/pop/app/a;->c:F

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v8

    if-lez v1, :cond_2

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/a;->d:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/a;->b()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/a;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_8
    iget v1, p0, Lcom/estrongs/android/pop/app/a;->b:I

    if-eq v1, v3, :cond_2

    :cond_9
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/a;->e()Z

    move-result v0

    goto/16 :goto_0
.end method
