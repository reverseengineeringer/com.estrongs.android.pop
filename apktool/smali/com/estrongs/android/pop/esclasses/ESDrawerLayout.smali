.class public Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;
.super Landroid/support/v4/widget/DrawerLayout;


# instance fields
.field private a:I

.field private b:F

.field private c:F


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

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->e()V

    return-void
.end method

.method private e()V
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->a:I

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v7, 0x2

    const/4 v1, 0x0

    const v6, 0x800005

    invoke-static {p1}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;)I

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

    return v0

    :pswitch_0
    iput v3, p0, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->b:F

    iput v4, p0, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->c:F

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v6}, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->d(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v0, :cond_0

    iget v2, p0, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->b:F

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iget v5, p0, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->c:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->a:I

    if-le v2, v5, :cond_1

    if-lt v2, v4, :cond_1

    :goto_1
    if-eqz v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->b:F

    cmpg-float v0, v3, v0

    if-gez v0, :cond_2

    invoke-virtual {p0, v7, v6}, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->b(II)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v6}, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->a(I)I

    move-result v0

    if-ne v7, v0, :cond_0

    invoke-virtual {p0, v1, v6}, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->b(II)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v6}, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->a(I)I

    move-result v0

    if-ne v0, v7, :cond_0

    invoke-virtual {p0, v1, v6}, Lcom/estrongs/android/pop/esclasses/ESDrawerLayout;->b(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
