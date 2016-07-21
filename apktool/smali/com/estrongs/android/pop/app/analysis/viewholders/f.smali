.class Lcom/estrongs/android/pop/app/analysis/viewholders/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/f;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

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

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/f;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

    # getter for: Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mArrColorsSecond:[I
    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->access$100(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/f;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/f;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

    # getter for: Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mPercentSecond:F
    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->access$300(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)F

    move-result v1

    # setter for: Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mPercent:F
    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->access$202(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;F)F

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/f;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/f;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

    # getter for: Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mArrColorsSecond:[I
    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->access$100(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/f;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

    # getter for: Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mArrDataSecond:Ljava/util/List;
    invoke-static {v2}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->access$400(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)Ljava/util/List;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->setColorAndData([ILjava/util/List;I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/f;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

    # invokes: Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->startAnimSwitch()V
    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->access$000(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)V

    return-void
.end method
