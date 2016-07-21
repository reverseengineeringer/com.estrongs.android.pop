.class Lcom/estrongs/android/pop/app/analysis/viewholders/d;
.super Landroid/view/animation/Animation;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/d;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/d;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;Lcom/estrongs/android/pop/app/analysis/viewholders/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/d;-><init>(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/d;->b:Z

    return v0
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/d;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->setAnimateScan(F)V

    return-void
.end method

.method public initialize(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/d;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;

    # getter for: Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->mAnimateTime:J
    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;->access$200(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisLoadingView;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/d;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/d;->setRepeatMode(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/d;->setRepeatCount(I)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/d;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/d;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/d;->b:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/d;->b:Z

    return-void
.end method
