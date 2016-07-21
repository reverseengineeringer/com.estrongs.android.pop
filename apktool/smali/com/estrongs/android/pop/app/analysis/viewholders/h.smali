.class Lcom/estrongs/android/pop/app/analysis/viewholders/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/h;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/h;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;

    # getter for: Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimaSwitch:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->access$1200(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
