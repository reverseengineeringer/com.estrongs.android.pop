.class Lcom/estrongs/android/ui/recycler/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/recycler/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/recycler/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/recycler/j;->a:Lcom/estrongs/android/ui/recycler/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/a;->a()Lcom/estrongs/android/pop/app/analysis/a;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/recycler/j;->a:Lcom/estrongs/android/ui/recycler/h;

    invoke-static {v1}, Lcom/estrongs/android/ui/recycler/h;->a(Lcom/estrongs/android/ui/recycler/h;)Lcom/estrongs/android/pop/app/analysis/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/analysis/y;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/recycler/j;->a:Lcom/estrongs/android/ui/recycler/h;

    invoke-static {v2}, Lcom/estrongs/android/ui/recycler/h;->a(Lcom/estrongs/android/ui/recycler/h;)Lcom/estrongs/android/pop/app/analysis/y;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/a;->a(Ljava/lang/String;Lcom/estrongs/android/pop/app/analysis/y;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/z;->b()V

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/j;->a:Lcom/estrongs/android/ui/recycler/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/recycler/h;->b(Lcom/estrongs/android/ui/recycler/h;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/j;->a:Lcom/estrongs/android/ui/recycler/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/recycler/h;->c(Lcom/estrongs/android/ui/recycler/h;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/j;->a:Lcom/estrongs/android/ui/recycler/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/recycler/h;->c(Lcom/estrongs/android/ui/recycler/h;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->at()Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "A_sdtop_click"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v1, "analysis"

    const-string v2, "A_sdtop_click"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
