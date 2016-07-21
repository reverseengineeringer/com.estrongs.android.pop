.class public Lcom/estrongs/android/widget/ScaledImageView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/os/Handler;

.field private c:Landroid/os/Handler;

.field private d:Lcom/estrongs/android/widget/bg;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/LinearLayout;

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Landroid/view/ViewGroup$LayoutParams;

.field private p:I

.field private q:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->g:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->p:I

    invoke-direct {p0}, Lcom/estrongs/android/widget/ScaledImageView;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->g:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->p:I

    invoke-direct {p0}, Lcom/estrongs/android/widget/ScaledImageView;->d()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/widget/ScaledImageView;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/widget/ScaledImageView;->m:I

    return p1
.end method

.method static synthetic a(Lcom/estrongs/android/widget/ScaledImageView;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->q:J

    return-wide v0
.end method

.method static synthetic b(Lcom/estrongs/android/widget/ScaledImageView;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->p:I

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/widget/ScaledImageView;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/widget/ScaledImageView;->n:I

    return p1
.end method

.method static synthetic c(Lcom/estrongs/android/widget/ScaledImageView;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->j:I

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/widget/ScaledImageView;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->i:I

    return v0
.end method

.method private d()V
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ScaledImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->a:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ScaledImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->e:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/widget/ScaledImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0200bc

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ScaledImageView;->setBackgroundResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ScaledImageView;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->e:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/widget/ScaledImageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/estrongs/android/widget/ScaledImageView;->e()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/widget/ScaledImageView;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->l:I

    return v0
.end method

.method private e()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/widget/be;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/be;-><init>(Lcom/estrongs/android/widget/ScaledImageView;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->b:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/widget/bf;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/bf;-><init>(Lcom/estrongs/android/widget/ScaledImageView;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/widget/ScaledImageView;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->k:I

    return v0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->o:Landroid/view/ViewGroup$LayoutParams;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ScaledImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->o:Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->o:Landroid/view/ViewGroup$LayoutParams;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->g:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->o:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/estrongs/android/widget/ScaledImageView;->n:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->o:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/estrongs/android/widget/ScaledImageView;->m:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/widget/ScaledImageView;->n:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/widget/ScaledImageView;->m:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ScaledImageView;->c()V

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ScaledImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ScaledImageView;->invalidate()V

    invoke-direct {p0}, Lcom/estrongs/android/widget/ScaledImageView;->g()V

    goto :goto_0
.end method

.method private g()V
    .locals 6

    const-wide/16 v4, 0x14

    const/4 v3, 0x0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p0, Lcom/estrongs/android/widget/ScaledImageView;->g:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/estrongs/android/widget/ScaledImageView;->h:Z

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/estrongs/android/widget/ScaledImageView;->h:Z

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ScaledImageView;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/widget/ScaledImageView;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/estrongs/android/widget/ScaledImageView;->g:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/estrongs/android/widget/ScaledImageView;->h:Z

    if-eqz v1, :cond_3

    iput-boolean v3, p0, Lcom/estrongs/android/widget/ScaledImageView;->h:Z

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ScaledImageView;->b()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/widget/ScaledImageView;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method static synthetic g(Lcom/estrongs/android/widget/ScaledImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/widget/ScaledImageView;->f()V

    return-void
.end method

.method private setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->g:I

    iget v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->i:I

    iput v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->m:I

    iget v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->k:I

    iput v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->n:I

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->o:Landroid/view/ViewGroup$LayoutParams;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ScaledImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->o:Landroid/view/ViewGroup$LayoutParams;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->o:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->o:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/estrongs/android/widget/ScaledImageView;->i:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->o:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/estrongs/android/widget/ScaledImageView;->k:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/ScaledImageView;->setAlpha(I)V

    invoke-direct {p0}, Lcom/estrongs/android/widget/ScaledImageView;->f()V

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->d:Lcom/estrongs/android/widget/bg;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->d:Lcom/estrongs/android/widget/bg;

    invoke-interface {v0}, Lcom/estrongs/android/widget/bg;->a()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->d:Lcom/estrongs/android/widget/bg;

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->g:I

    iget v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->j:I

    iput v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->m:I

    iget v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->l:I

    iput v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->n:I

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->o:Landroid/view/ViewGroup$LayoutParams;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ScaledImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->o:Landroid/view/ViewGroup$LayoutParams;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->o:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->o:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/estrongs/android/widget/ScaledImageView;->j:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->o:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/estrongs/android/widget/ScaledImageView;->l:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/ScaledImageView;->setAlpha(I)V

    invoke-direct {p0}, Lcom/estrongs/android/widget/ScaledImageView;->f()V

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->d:Lcom/estrongs/android/widget/bg;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->d:Lcom/estrongs/android/widget/bg;

    invoke-interface {v0}, Lcom/estrongs/android/widget/bg;->a()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->d:Lcom/estrongs/android/widget/bg;

    return-void
.end method

.method public c()V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    move v3, v2

    move v1, v2

    :goto_0
    if-ge v3, v4, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/ScaledImageView;

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/estrongs/android/widget/ScaledImageView;->m:I

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    move v1, v2

    move v2, v0

    :goto_2
    if-ge v1, v4, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/ScaledImageView;

    iget v3, v0, Lcom/estrongs/android/widget/ScaledImageView;->m:I

    iget v5, v0, Lcom/estrongs/android/widget/ScaledImageView;->n:I

    invoke-virtual {v0, v3, v5}, Lcom/estrongs/android/widget/ScaledImageView;->measure(II)V

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ScaledImageView;->getTop()I

    move-result v6

    add-int v7, v2, v3

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ScaledImageView;->getTop()I

    move-result v8

    add-int/2addr v5, v8

    invoke-virtual {v0, v2, v6, v7, v5}, Lcom/estrongs/android/widget/ScaledImageView;->layout(IIII)V

    add-int/2addr v2, v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    return-void
.end method

.method public getContainer()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setContainer(Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/ScaledImageView;->f:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/widget/ScaledImageView;->p:I

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/estrongs/android/widget/ScaledImageView;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setImageResource(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ScaledImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->a:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/widget/ScaledImageView;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/widget/ScaledImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOnScaledListener(Lcom/estrongs/android/widget/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/ScaledImageView;->d:Lcom/estrongs/android/widget/bg;

    return-void
.end method
