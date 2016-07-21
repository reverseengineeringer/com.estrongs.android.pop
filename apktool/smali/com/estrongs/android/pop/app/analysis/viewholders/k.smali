.class Lcom/estrongs/android/pop/app/analysis/viewholders/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/k;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;

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

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/k;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;

    # getter for: Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrColorsSecond:Ljava/util/List;
    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->access$000(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/k;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/k;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;

    # getter for: Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrColorsSecond:Ljava/util/List;
    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->access$000(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/k;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;

    # getter for: Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrDataSecond:Ljava/util/List;
    invoke-static {v2}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->access$100(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/k;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;

    # getter for: Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mPercentSecond:F
    invoke-static {v3}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->access$200(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->setColorAndData(Ljava/util/List;Ljava/util/List;F)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
