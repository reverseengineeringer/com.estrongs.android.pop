.class Lcom/estrongs/android/ui/topclassify/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/topclassify/ExpandableLayout;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/topclassify/ExpandableLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/topclassify/n;->a:Lcom/estrongs/android/ui/topclassify/ExpandableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/n;->a:Lcom/estrongs/android/ui/topclassify/ExpandableLayout;

    invoke-static {v0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->a(Lcom/estrongs/android/ui/topclassify/ExpandableLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
