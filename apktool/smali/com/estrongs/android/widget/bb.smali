.class public abstract Lcom/estrongs/android/widget/bb;
.super Lcom/estrongs/android/widget/aw;


# instance fields
.field protected e:Landroid/content/Context;

.field protected f:Lcom/estrongs/android/ui/theme/al;

.field private g:Landroid/view/View;

.field private h:Ljava/lang/String;

.field private i:Landroid/view/View;

.field private j:I

.field private k:I

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:I

.field private q:I

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)V
    .locals 1

    invoke-direct {p0, p2, p5}, Lcom/estrongs/android/widget/aw;-><init>(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/widget/bb;->r:Z

    iput-object p1, p0, Lcom/estrongs/android/widget/bb;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/widget/bb;->g:Landroid/view/View;

    iput-object p3, p0, Lcom/estrongs/android/widget/bb;->h:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/estrongs/android/widget/bb;->r:Z

    invoke-virtual {p0, p4}, Lcom/estrongs/android/widget/bb;->c(I)V

    invoke-direct {p0}, Lcom/estrongs/android/widget/bb;->a()V

    return-void
.end method

.method private a()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/bb;->f:Lcom/estrongs/android/ui/theme/al;

    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/bb;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->f:Lcom/estrongs/android/ui/theme/al;

    const v1, 0x7f0201af

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/bb;->i:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/estrongs/android/widget/bb;->i:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/estrongs/android/widget/bb;->a(Landroid/view/View;)V

    iget-object v1, p0, Lcom/estrongs/android/widget/bb;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/widget/bb;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/estrongs/android/widget/bb;->q:I

    iput v0, p0, Lcom/estrongs/android/widget/bb;->p:I

    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/bb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->e:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/widget/bb;->j:I

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/widget/bb;->k:I

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/widget/bb;->a(II)V

    iget v0, p0, Lcom/estrongs/android/widget/bb;->j:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/bb;->b(I)V

    iget v0, p0, Lcom/estrongs/android/widget/bb;->k:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/bb;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->i:Landroid/view/View;

    const v1, 0x7f0a034c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/widget/bb;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->i:Landroid/view/View;

    const v1, 0x7f0a0353

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/widget/bb;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->i:Landroid/view/View;

    const v1, 0x7f0a034f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/widget/bb;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->i:Landroid/view/View;

    const v1, 0x7f0a0351

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/widget/bb;->o:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/estrongs/android/widget/bb;->a(Z)V

    invoke-virtual {p0, v4}, Lcom/estrongs/android/widget/bb;->b(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/bb;->c(Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->g:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/bb;->b(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/estrongs/android/widget/bb;->m()V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/bb;->b()V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->i:Landroid/view/View;

    const v1, 0x7f0a034e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/widget/bb;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/widget/bb;->h:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/widget/bb;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private d(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/bb;->j()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->g:Landroid/view/View;

    invoke-super {p0, v0, v1, v1, v1}, Lcom/estrongs/android/widget/aw;->a(Landroid/view/View;III)V

    goto :goto_0
.end method

.method private m()V
    .locals 5

    const/high16 v4, 0x42580000    # 54.0f

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/estrongs/android/widget/bb;->r:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/widget/bb;->k()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/widget/bb;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/bb;->j()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/estrongs/android/widget/bb;->p:I

    if-ge v0, v2, :cond_2

    iget v0, p0, Lcom/estrongs/android/widget/bb;->p:I

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->i:Landroid/view/View;

    const v2, 0x7f0a034b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/estrongs/android/widget/bb;->j:I

    iget v3, p0, Lcom/estrongs/android/widget/bb;->q:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    if-le v0, v2, :cond_3

    iget v0, p0, Lcom/estrongs/android/widget/bb;->j:I

    iget v2, p0, Lcom/estrongs/android/widget/bb;->q:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/estrongs/android/widget/bb;->k()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/estrongs/android/widget/bb;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/bb;->j()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/estrongs/android/widget/bb;->p:I

    if-ge v0, v2, :cond_5

    iget v0, p0, Lcom/estrongs/android/widget/bb;->p:I

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->i:Landroid/view/View;

    const v2, 0x7f0a0352

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_0

    :cond_5
    iget v2, p0, Lcom/estrongs/android/widget/bb;->j:I

    iget v3, p0, Lcom/estrongs/android/widget/bb;->q:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    if-le v0, v2, :cond_6

    iget v0, p0, Lcom/estrongs/android/widget/bb;->j:I

    iget v2, p0, Lcom/estrongs/android/widget/bb;->q:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    move v1, v0

    goto :goto_2

    :cond_6
    move v1, v0

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/estrongs/android/widget/bb;->k()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/estrongs/android/widget/bb;->n:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/widget/bb;->n:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/estrongs/android/widget/bb;->j()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/estrongs/android/widget/bb;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/estrongs/android/widget/bb;->e:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v1, v3

    if-gez v1, :cond_9

    move v1, v0

    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->n:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v3, p0, Lcom/estrongs/android/widget/bb;->q:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    if-le v1, v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/widget/bb;->q:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    move v1, v0

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/estrongs/android/widget/bb;->k()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/widget/bb;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/widget/bb;->o:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/estrongs/android/widget/bb;->j()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/estrongs/android/widget/bb;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/estrongs/android/widget/bb;->e:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v1, v3

    if-gez v1, :cond_c

    move v1, v0

    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->o:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v3, p0, Lcom/estrongs/android/widget/bb;->q:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    if-le v1, v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/widget/bb;->q:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    move v1, v0

    goto :goto_4
.end method


# virtual methods
.method protected a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->i:Landroid/view/View;

    const v1, 0x7f0a0350

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/bb;->h:Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/android/widget/bb;->d()V

    return-void
.end method

.method protected abstract b()V
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/widget/bb;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/bb;->j()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/bb;->d(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/bb;->h()V

    goto :goto_0
.end method

.method protected l()Landroid/widget/RelativeLayout;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/widget/bb;->i:Landroid/view/View;

    const v1, 0x7f0a034d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method
