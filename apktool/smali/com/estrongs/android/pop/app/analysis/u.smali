.class Lcom/estrongs/android/pop/app/analysis/u;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/u;->a:Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/u;->a:Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->a(Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x14

    if-le p3, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/u;->a:Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->a(Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;Z)Z

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/u;->a:Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->b(Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "A_scroll"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/u;->a:Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->b(Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "analysis"

    const-string v2, "A_scroll"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
