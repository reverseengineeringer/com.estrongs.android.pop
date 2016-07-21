.class public abstract Lcom/estrongs/android/ui/guesture/ESGestureCtrl;
.super Landroid/support/design/widget/CoordinatorLayout;


# static fields
.field public static h:F


# instance fields
.field public g:Z

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Lcom/estrongs/android/ui/guesture/ESGesturePanel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->h:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->g:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->i:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->j:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->k:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->g:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->i:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->j:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->k:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->g:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->i:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->j:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->k:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    return-void
.end method

.method private a(FF)Z
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->k:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->k:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->getGestureStartX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->k:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->getGestureStartY()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->h:F

    sub-float v2, v0, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    sget v2, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->h:F

    add-float/2addr v0, v2

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    sget v0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->h:F

    sub-float v0, v1, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    sget v0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->h:F

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Landroid/gesture/Gesture;)V
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v3, 0x8

    if-lt v0, v3, :cond_f

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    iget-object v3, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->k:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->k:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {v3}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/ui/guesture/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/estrongs/android/ui/guesture/b;->b:Z

    if-nez v0, :cond_2

    :cond_1
    :try_start_1
    invoke-super {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-super {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    goto :goto_0

    :catch_2
    move-exception v0

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    new-array v5, v6, [I

    new-array v6, v6, [I

    invoke-virtual {p0, v5}, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->getLocationOnScreen([I)V

    iget-object v3, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->k:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {v3, v6}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->getLocationOnScreen([I)V

    aget v3, v5, v1

    aget v7, v6, v1

    sub-int/2addr v3, v7

    int-to-float v3, v3

    add-float/2addr v3, v0

    aget v0, v5, v2

    aget v5, v6, v2

    sub-int/2addr v0, v5

    int-to-float v0, v0

    add-float/2addr v0, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->g:Z

    if-nez v0, :cond_d

    :try_start_3
    invoke-super {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v3, v0}, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->a(FF)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->g:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->i:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->j:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->k:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {v1, v3, v0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->a(FF)V

    iget-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->i:Ljava/util/ArrayList;

    new-instance v4, Landroid/gesture/GesturePoint;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v3, v0, v6, v7}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->k:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->a()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    :cond_6
    iput-boolean v1, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->g:Z

    iget-boolean v0, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->j:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->setMovingStart(Z)V

    move v0, v2

    goto/16 :goto_0

    :pswitch_1
    iget-boolean v1, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->g:Z

    if-eqz v1, :cond_4

    :try_start_5
    iget-boolean v1, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->j:Z

    if-eqz v1, :cond_a

    sget v1, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->h:F

    cmpg-float v1, v3, v1

    if-gez v1, :cond_e

    sget v1, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->h:F

    :goto_3
    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->h:F

    sub-float/2addr v3, v4

    cmpl-float v3, v1, v3

    if-lez v3, :cond_7

    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v3, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->h:F

    sub-float/2addr v1, v3

    :cond_7
    sget v3, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->h:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_8

    sget v0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->h:F

    float-to-int v0, v0

    int-to-float v0, v0

    :cond_8
    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->h:F

    sub-float/2addr v3, v4

    cmpl-float v3, v0, v3

    if-lez v3, :cond_9

    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->getHeight()I

    move-result v0

    sget v3, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->h:F

    float-to-int v3, v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    :cond_9
    iget-object v3, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->k:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    float-to-int v1, v1

    float-to-int v0, v0

    invoke-virtual {v3, v1, v0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->a(II)V

    :goto_4
    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->k:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->a()V

    goto/16 :goto_2

    :catch_4
    move-exception v0

    goto/16 :goto_2

    :cond_a
    iget-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->k:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {v1, v3, v0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->a(FF)V

    iget-object v1, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->i:Ljava/util/ArrayList;

    new-instance v4, Landroid/gesture/GesturePoint;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v3, v0, v6, v7}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :pswitch_2
    iget-boolean v0, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->g:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    :try_start_6
    iget-boolean v0, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->j:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->k:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->b()V

    new-instance v0, Landroid/gesture/Gesture;

    invoke-direct {v0}, Landroid/gesture/Gesture;-><init>()V

    new-instance v1, Landroid/gesture/GestureStroke;

    iget-object v3, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->i:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->a(Landroid/gesture/Gesture;)V

    :goto_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->g:Z

    :goto_6
    move v0, v2

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_c

    move v1, v2

    :cond_c
    new-instance v0, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->k:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {v3}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->getGestureStartX()I

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->k:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {v4}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->getGestureStartY()I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/graphics/Point;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    move v0, v2

    goto/16 :goto_0

    :cond_d
    move v0, v2

    goto/16 :goto_0

    :cond_e
    move v1, v3

    goto/16 :goto_3

    :cond_f
    move v0, v1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public e()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->j:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->setMovingStart(Z)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setGesturePanel(Lcom/estrongs/android/ui/guesture/ESGesturePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->k:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    return-void
.end method

.method public setMovingStart(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->j:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->k:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    const v1, 0x7f0201b1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->k:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->k:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->k:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->b()V

    goto :goto_0
.end method
