.class Lcom/estrongs/android/pop/app/analysis/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/w;->a:Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/a/aa;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/w;->a:Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->d(Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/a;->a()Lcom/estrongs/android/pop/app/analysis/a;

    move-result-object v1

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/a/aa;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/app/analysis/a;->a(Ljava/lang/String;Lcom/estrongs/android/pop/app/analysis/y;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/w;->a:Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->finish()V

    return-void
.end method
