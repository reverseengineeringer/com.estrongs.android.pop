.class Lcom/estrongs/android/ui/controller/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/estrongs/android/ui/controller/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/a;Ljava/lang/String;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/b;->d:Lcom/estrongs/android/ui/controller/a;

    iput-object p2, p0, Lcom/estrongs/android/ui/controller/b;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/estrongs/android/ui/controller/b;->b:Z

    iput-boolean p4, p0, Lcom/estrongs/android/ui/controller/b;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/a;->a()Lcom/estrongs/android/pop/app/analysis/a;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/b;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/a;->a(Ljava/lang/String;Lcom/estrongs/android/pop/app/analysis/y;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/b;->d:Lcom/estrongs/android/ui/controller/a;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/b;->d:Lcom/estrongs/android/ui/controller/a;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->at()Lcom/estrongs/android/j/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/estrongs/android/ui/controller/b;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "A_addessb_sd_click"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v1, "analysis"

    const-string v2, "A_addessb_sd_click"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/estrongs/android/ui/controller/b;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "A_addessb_ima_click"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v1, "analysis"

    const-string v2, "A_addessb_ima_click"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
