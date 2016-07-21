.class Lcom/estrongs/android/pop/app/analysis/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/x;->a:Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/x;->a:Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/x;->a:Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/x;->a:Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->e(Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;)V

    return-void
.end method
