.class public Lcom/google/android/gms/plus/c;
.super Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/plus/c;->a()Lcom/google/android/gms/plus/h;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/google/android/gms/plus/h;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/plus/c;->a(I)Landroid/graphics/Point;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/16 v4, 0x11

    invoke-direct {v2, v3, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/plus/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(I)Landroid/graphics/Point;
    .locals 9

    const/16 v1, 0x18

    const/16 v0, 0x14

    const/4 v4, 0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    packed-switch p1, :pswitch_data_0

    const/16 v0, 0x26

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/plus/c;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    int-to-float v1, v1

    invoke-static {v4, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    int-to-float v0, v0

    invoke-static {v4, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-double v4, v1

    add-double/2addr v4, v6

    double-to-int v1, v4

    iput v1, v2, Landroid/graphics/Point;->x:I

    float-to-double v0, v0

    add-double/2addr v0, v6

    double-to-int v0, v0

    iput v0, v2, Landroid/graphics/Point;->y:I

    return-object v2

    :pswitch_0
    const/16 v1, 0x20

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xe

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x32

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a()Lcom/google/android/gms/plus/h;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/plus/f;

    invoke-virtual {p0}, Lcom/google/android/gms/plus/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/plus/f;-><init>(Landroid/content/Context;Lcom/google/android/gms/plus/d;)V

    invoke-interface {v0}, Lcom/google/android/gms/plus/h;->a()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/gms/plus/g;

    invoke-virtual {p0}, Lcom/google/android/gms/plus/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/plus/g;-><init>(Landroid/content/Context;Lcom/google/android/gms/plus/d;)V

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/plus/h;->a()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/google/android/gms/plus/e;

    invoke-virtual {p0}, Lcom/google/android/gms/plus/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/plus/e;-><init>(Landroid/content/Context;Lcom/google/android/gms/plus/d;)V

    :cond_1
    return-object v0
.end method
