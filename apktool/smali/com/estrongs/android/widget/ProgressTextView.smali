.class public Lcom/estrongs/android/widget/ProgressTextView;
.super Landroid/widget/TextView;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:I

.field private d:Landroid/graphics/Rect;

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/ColorDrawable;

.field private h:Landroid/graphics/drawable/LayerDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/widget/ProgressTextView;->c:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/ProgressTextView;->d:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/ProgressTextView;->e:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/widget/ProgressTextView;->c:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/ProgressTextView;->d:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/ProgressTextView;->e:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/widget/ProgressTextView;->c:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/ProgressTextView;->d:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/ProgressTextView;->e:Landroid/graphics/Rect;

    return-void
.end method

.method private getProgressColor()I
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/widget/ProgressTextView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    const v1, 0x7f0d0114

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/widget/ProgressTextView;->c:I

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ProgressTextView;->postInvalidate()V

    return-void
.end method

.method public a(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/estrongs/android/widget/ProgressTextView;->b:Z

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ProgressTextView;->invalidate()V

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/estrongs/android/widget/ProgressTextView;->b:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ProgressTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/ProgressTextView;->f:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0}, Lcom/estrongs/android/widget/ProgressTextView;->getProgressColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/widget/ProgressTextView;->g:Landroid/graphics/drawable/ColorDrawable;

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/estrongs/android/widget/ProgressTextView;->f:Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/estrongs/android/widget/ProgressTextView;->g:Landroid/graphics/drawable/ColorDrawable;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/ProgressTextView;->h:Landroid/graphics/drawable/LayerDrawable;

    iget-object v0, p0, Lcom/estrongs/android/widget/ProgressTextView;->h:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ProgressTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p0}, Lcom/estrongs/android/widget/ProgressTextView;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/widget/ProgressTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ProgressTextView;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/widget/ProgressTextView;->c:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/estrongs/android/widget/ProgressTextView;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ProgressTextView;->d:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ProgressTextView;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ProgressTextView;->e:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/estrongs/android/widget/ProgressTextView;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/estrongs/android/widget/ProgressTextView;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/estrongs/android/widget/ProgressTextView;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/estrongs/android/widget/ProgressTextView;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/estrongs/android/widget/ProgressTextView;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/estrongs/android/widget/ProgressTextView;->c:I

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/estrongs/android/widget/ProgressTextView;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ProgressTextView;->g:Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/estrongs/android/widget/ProgressTextView;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
