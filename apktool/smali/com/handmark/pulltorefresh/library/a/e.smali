.class public abstract Lcom/handmark/pulltorefresh/library/a/e;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/handmark/pulltorefresh/library/a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field static final a:Landroid/view/animation/Interpolator;


# instance fields
.field protected final b:Landroid/widget/ImageView;

.field protected final c:Landroid/widget/ProgressBar;

.field protected final d:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field protected final e:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

.field private f:Landroid/widget/LinearLayout;

.field private g:Z

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/TextView;

.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/handmark/pulltorefresh/library/a/e;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/a/e;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object p3, p0, Lcom/handmark/pulltorefresh/library/a/e;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    sget-object v0, Lcom/handmark/pulltorefresh/library/a/f;->a:[I

    invoke-virtual {p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c0

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :goto_0
    const v0, 0x7f0a0368

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/a/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->f:Landroid/widget/LinearLayout;

    const v1, 0x7f0a036b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->f:Landroid/widget/LinearLayout;

    const v1, 0x7f0a036a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->c:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->f:Landroid/widget/LinearLayout;

    const v1, 0x7f0a036c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->f:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0369

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v1, Lcom/handmark/pulltorefresh/library/a/f;->b:[I

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_1

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    if-ne p3, v1, :cond_9

    const/16 v1, 0x50

    :goto_1
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v0, 0x7f0b0000

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->j:Ljava/lang/CharSequence;

    const v0, 0x7f0b0002

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->k:Ljava/lang/CharSequence;

    const v0, 0x7f0b0001

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->l:Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {p4, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lcom/handmark/pulltorefresh/library/a/i;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/16 v1, 0xa

    invoke-virtual {p4, v1, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, v0}, Lcom/handmark/pulltorefresh/library/a/e;->d(I)V

    :cond_1
    const/16 v0, 0xb

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/16 v1, 0xb

    invoke-virtual {p4, v1, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, v0}, Lcom/handmark/pulltorefresh/library/a/e;->c(I)V

    :cond_2
    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/handmark/pulltorefresh/library/a/e;->b(Landroid/content/res/ColorStateList;)V

    :cond_3
    invoke-virtual {p4, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p4, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lcom/handmark/pulltorefresh/library/a/e;->a(Landroid/content/res/ColorStateList;)V

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p4, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_5
    sget-object v1, Lcom/handmark/pulltorefresh/library/a/f;->b:[I

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    invoke-virtual {p4, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p4, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_6
    :goto_3
    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/e;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_7
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/a/e;->b(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/e;->j()V

    return-void

    :pswitch_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300bf

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    :pswitch_1
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    if-ne p3, v1, :cond_8

    const/16 v1, 0x30

    :goto_4
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v0, 0x7f0b0003

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->j:Ljava/lang/CharSequence;

    const v0, 0x7f0b0005

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->k:Ljava/lang/CharSequence;

    const v0, 0x7f0b0004

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->l:Ljava/lang/CharSequence;

    goto/16 :goto_2

    :cond_8
    move v1, v2

    goto :goto_4

    :cond_9
    const/4 v1, 0x5

    goto/16 :goto_1

    :cond_a
    const/16 v1, 0x11

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "ptrDrawableTop"

    const-string v1, "ptrDrawableStart"

    invoke-static {v0, v1}, Lcom/handmark/pulltorefresh/library/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x11

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3

    :pswitch_2
    const/16 v1, 0x8

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3

    :cond_b
    const/16 v1, 0x12

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "ptrDrawableBottom"

    const-string v1, "ptrDrawableEnd"

    invoke-static {v0, v1}, Lcom/handmark/pulltorefresh/library/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x12

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method private c(I)V
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method private d(I)V
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(F)V
.end method

.method public final a(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/e;->requestLayout()V

    return-void
.end method

.method protected abstract a(Landroid/graphics/drawable/Drawable;)V
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/a/e;->j:Ljava/lang/CharSequence;

    return-void
.end method

.method protected abstract b()V
.end method

.method public final b(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/a/e;->a(F)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/e;->requestLayout()V

    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->g:Z

    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/a/e;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/a/e;->k:Ljava/lang/CharSequence;

    return-void
.end method

.method protected abstract c()V
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/a/e;->l:Ljava/lang/CharSequence;

    return-void
.end method

.method protected abstract d()V
.end method

.method protected abstract e()I
.end method

.method public final f()I
    .locals 2

    sget-object v0, Lcom/handmark/pulltorefresh/library/a/f;->a:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/a/e;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/a/e;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/e;->a()V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/a/e;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->g:Z

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/e;->b()V

    goto :goto_0
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/a/e;->l:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/e;->c()V

    return-void
.end method

.method public final j()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/a/e;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->g:Z

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/e;->d()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/e;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
