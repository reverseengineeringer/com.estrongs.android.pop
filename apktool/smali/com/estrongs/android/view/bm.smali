.class Lcom/estrongs/android/view/bm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/view/aw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/aw;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bm;->b:Lcom/estrongs/android/view/aw;

    iput p2, p0, Lcom/estrongs/android/view/bm;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v5, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/estrongs/android/view/bm;->b:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/HeaderGridView;->getChildCount()I

    move-result v3

    iget-object v0, p0, Lcom/estrongs/android/view/bm;->b:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/HeaderGridView;->getFirstVisiblePosition()I

    move-result v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    add-int v7, v4, v0

    iget-object v8, p0, Lcom/estrongs/android/view/bm;->b:Lcom/estrongs/android/view/aw;

    iget-object v8, v8, Lcom/estrongs/android/view/aw;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v8, v0}, Lcom/estrongs/android/widget/HeaderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_1

    iget v8, p0, Lcom/estrongs/android/view/bm;->a:I

    if-ne v7, v8, :cond_1

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
