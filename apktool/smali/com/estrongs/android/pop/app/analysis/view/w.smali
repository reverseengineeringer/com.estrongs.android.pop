.class Lcom/estrongs/android/pop/app/analysis/view/w;
.super Landroid/view/animation/Animation;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/view/w;->a:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/w;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;Lcom/estrongs/android/pop/app/analysis/view/v;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/view/w;-><init>(Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/w;->b:Z

    return v0
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/w;->a:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->setAnimateScan(F)V

    return-void
.end method

.method public initialize(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/w;->a:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->b(Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/view/w;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/view/w;->setRepeatMode(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/view/w;->setRepeatCount(I)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/view/w;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, p0}, Lcom/estrongs/android/pop/app/analysis/view/w;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/w;->b:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/w;->b:Z

    return-void
.end method
