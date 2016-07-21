.class Lcom/estrongs/android/pop/app/analysis/viewholders/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/g;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/g;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

    # getter for: Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mIsStopped:Z
    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->access$800(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/g;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

    # getter for: Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->access$1100(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/g;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

    # getter for: Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mThreadAnim:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->access$900(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/g;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

    # getter for: Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mDelayTimeSwitch:J
    invoke-static {v2}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->access$1000(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    const/high16 v2, 0x43340000    # 180.0f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/g;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

    # getter for: Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mIsShowBmp:Z
    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->access$500(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/g;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

    # setter for: Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mFromeDegress:F
    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->access$602(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;F)F

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/g;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

    const/high16 v1, 0x43b40000    # 360.0f

    # setter for: Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mToDegress:F
    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->access$702(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;F)F

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/g;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/g;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

    # getter for: Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mIsShowBmp:Z
    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->access$500(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    # setter for: Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mIsShowBmp:Z
    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->access$502(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;Z)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/g;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

    const/4 v1, 0x0

    # setter for: Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mFromeDegress:F
    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->access$602(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;F)F

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/g;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

    # setter for: Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mToDegress:F
    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->access$702(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;F)F

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
