.class Lcom/estrongs/android/pop/app/analysis/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/v;->a:Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/v;->a:Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/v;->a:Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->bj()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/v;->a:Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->bi()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/v;->a:Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->c(Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/v;->a:Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->a(Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;Landroid/view/View;)V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/v;->a:Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->b(Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "A_top_click"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/v;->a:Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->b(Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "analysis"

    const-string v2, "A_top_click"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0077 -> :sswitch_1
        0x7f0e009f -> :sswitch_0
        0x7f0e00a0 -> :sswitch_1
    .end sparse-switch
.end method
