.class public Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;
.super Landroid/support/v4/widget/DrawerLayout;


# instance fields
.field private b:I

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->f()V

    return-void
.end method

.method private f()V
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->b:I

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    const v10, 0x800005

    invoke-static {p1}, Landroid/support/v4/view/bi;->a(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    return v0

    :pswitch_0
    iput v3, p0, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->c:F

    iput v4, p0, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->d:F

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v1, :cond_2

    iget v2, p0, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->c:F

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iget v5, p0, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->d:F

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v5, v5

    if-lez v2, :cond_2

    if-lez v5, :cond_2

    mul-int v6, v2, v2

    mul-int v7, v5, v5

    add-int/2addr v6, v7

    iget v7, p0, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->b:I

    iget v8, p0, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->b:I

    mul-int/2addr v7, v8

    if-le v6, v7, :cond_2

    div-int/2addr v2, v5

    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    cmpg-double v2, v6, v8

    if-ltz v2, :cond_1

    :cond_2
    invoke-virtual {p0, v10}, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->g(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v1, :cond_0

    iget v2, p0, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->c:F

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iget v5, p0, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->d:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->b:I

    if-le v2, v5, :cond_3

    if-lt v2, v4, :cond_3

    :goto_1
    if-eqz v1, :cond_0

    iget v1, p0, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->c:F

    cmpg-float v1, v3, v1

    if-gez v1, :cond_4

    invoke-virtual {p0, v11, v10}, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->b(II)V

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v10}, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->a(I)I

    move-result v1

    if-ne v11, v1, :cond_0

    invoke-virtual {p0, v0, v10}, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->b(II)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v10}, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->a(I)I

    move-result v1

    if-ne v1, v11, :cond_0

    invoke-virtual {p0, v0, v10}, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->b(II)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
