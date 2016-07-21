.class Lcom/estrongs/android/pop/app/analysis/b/af;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/b/ad;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:I

.field private e:I

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/analysis/b/ad;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/b/af;->a:Lcom/estrongs/android/pop/app/analysis/b/ad;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/b/af;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/b/af;->f:Z

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/af;->c:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/af;->c:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/af;->b:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/b/af;->e:I

    int-to-float v0, v0

    invoke-static {p2, v0}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/b/af;->d:I

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/analysis/b/ad;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/b/af;->g:I

    return-void
.end method

.method private a(I)Z
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/b/af;->b(I)Lcom/estrongs/android/pop/app/analysis/b/ae;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/analysis/b/af;->b(I)Lcom/estrongs/android/pop/app/analysis/b/ae;

    move-result-object v1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget v2, v2, Lcom/estrongs/android/pop/app/analysis/b/ae;->d:I

    iget v1, v1, Lcom/estrongs/android/pop/app/analysis/b/ae;->d:I

    if-eq v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(I)Lcom/estrongs/android/pop/app/analysis/b/ae;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/af;->a:Lcom/estrongs/android/pop/app/analysis/b/ad;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/b/ad;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/analysis/a/i;->a(I)Lcom/estrongs/android/pop/app/analysis/b/g;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/b/ae;

    return-object v0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/b/af;->d:I

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/analysis/b/af;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/b/af;->g:I

    :goto_0
    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/analysis/b/af;->f:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {p1, v3, v0, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/b/af;->d:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3, v3, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 9

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    sub-int v4, v0, v1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v5

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/b/af;->d:I

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_2

    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/b/af;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/b/af;->g:I

    move v1, v0

    :goto_1
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/b/af;->f:Z

    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/af;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v0, v3, v7, v4, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/af;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v6

    add-int/2addr v1, v0

    iget-object v6, p0, Lcom/estrongs/android/pop/app/analysis/b/af;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v3, v0, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/af;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/b/af;->d:I

    move v1, v0

    goto :goto_1

    :cond_2
    return-void
.end method
