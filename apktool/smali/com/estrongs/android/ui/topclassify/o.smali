.class Lcom/estrongs/android/ui/topclassify/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/estrongs/android/ui/topclassify/ExpandableLayout;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/topclassify/ExpandableLayout;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/topclassify/o;->b:Lcom/estrongs/android/ui/topclassify/ExpandableLayout;

    iput-object p2, p0, Lcom/estrongs/android/ui/topclassify/o;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/o;->a:Landroid/view/View;

    check-cast v0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->getOrientation()I

    move-result v0

    iget-object v2, p0, Lcom/estrongs/android/ui/topclassify/o;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v0, :cond_1

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/o;->b:Lcom/estrongs/android/ui/topclassify/ExpandableLayout;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/o;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x1

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/o;->b:Lcom/estrongs/android/ui/topclassify/ExpandableLayout;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/o;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
