.class public Lcom/estrongs/android/ui/controller/widget/e;
.super Landroid/view/animation/Animation;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;IFF)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/widget/e;->a:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/controller/widget/e;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/controller/widget/e;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, p0}, Lcom/estrongs/android/ui/controller/widget/e;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iput p3, p0, Lcom/estrongs/android/ui/controller/widget/e;->b:F

    iput p4, p0, Lcom/estrongs/android/ui/controller/widget/e;->c:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/e;->b:F

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/e;->c:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/widget/e;->a:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setPhase(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
