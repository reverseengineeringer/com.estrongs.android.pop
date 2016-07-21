.class Lcom/estrongs/android/pop/app/analysis/view/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/view/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/view/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/view/f;->a:Lcom/estrongs/android/pop/app/analysis/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/f;->a:Lcom/estrongs/android/pop/app/analysis/view/b;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/b;->e(Lcom/estrongs/android/pop/app/analysis/view/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/f;->a:Lcom/estrongs/android/pop/app/analysis/view/b;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/b;->f(Lcom/estrongs/android/pop/app/analysis/view/b;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/f;->a:Lcom/estrongs/android/pop/app/analysis/view/b;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/b;->b(Lcom/estrongs/android/pop/app/analysis/view/b;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/f;->a:Lcom/estrongs/android/pop/app/analysis/view/b;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/b;->b(Lcom/estrongs/android/pop/app/analysis/view/b;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->at()Lcom/estrongs/android/j/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "A_widget_click"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v1, "analysis"

    const-string v2, "A_widget_click"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/f;->a:Lcom/estrongs/android/pop/app/analysis/view/b;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/b;->g(Lcom/estrongs/android/pop/app/analysis/view/b;)Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/f;->a:Lcom/estrongs/android/pop/app/analysis/view/b;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/f;->a:Lcom/estrongs/android/pop/app/analysis/view/b;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/view/b;->h(Lcom/estrongs/android/pop/app/analysis/view/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/view/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
