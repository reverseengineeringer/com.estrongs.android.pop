.class Lcom/estrongs/android/pop/app/analysis/view/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/view/a;->a:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/a;->a:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/a;->a:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->a(Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->a(Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;Z)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
