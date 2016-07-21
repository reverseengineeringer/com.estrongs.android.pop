.class Lcom/duapps/ad/stats/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/duapps/ad/stats/k;


# direct methods
.method constructor <init>(Lcom/duapps/ad/stats/k;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/stats/m;->a:Lcom/duapps/ad/stats/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ToolClickHandler"

    const-string v1, "[WebView] Timeout TIMEOUT_START."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/stats/m;->a:Lcom/duapps/ad/stats/k;

    invoke-static {v0}, Lcom/duapps/ad/stats/k;->a(Lcom/duapps/ad/stats/k;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/stats/m;->a:Lcom/duapps/ad/stats/k;

    invoke-static {v0}, Lcom/duapps/ad/stats/k;->b(Lcom/duapps/ad/stats/k;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/stats/m;->a:Lcom/duapps/ad/stats/k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/k;->a(Lcom/duapps/ad/stats/k;Z)Z

    iget-object v0, p0, Lcom/duapps/ad/stats/m;->a:Lcom/duapps/ad/stats/k;

    iget-object v0, v0, Lcom/duapps/ad/stats/k;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/duapps/ad/stats/m;->a:Lcom/duapps/ad/stats/k;

    iget-object v0, v0, Lcom/duapps/ad/stats/k;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :cond_3
    iget-object v0, p0, Lcom/duapps/ad/stats/m;->a:Lcom/duapps/ad/stats/k;

    invoke-static {v0}, Lcom/duapps/ad/stats/k;->c(Lcom/duapps/ad/stats/k;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ToolClickHandler"

    const-string v1, "[WebView] StartRunnable canceled."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/duapps/ad/stats/m;->a:Lcom/duapps/ad/stats/k;

    iget-object v0, v0, Lcom/duapps/ad/stats/k;->c:Lcom/duapps/ad/stats/c;

    invoke-static {v0}, Lcom/duapps/ad/stats/c;->a(Lcom/duapps/ad/stats/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/stats/m;->a:Lcom/duapps/ad/stats/k;

    iget-object v1, v1, Lcom/duapps/ad/stats/k;->a:Lcom/duapps/ad/stats/p;

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/u;->g(Landroid/content/Context;Lcom/duapps/ad/stats/p;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/duapps/ad/stats/m;->a:Lcom/duapps/ad/stats/k;

    iget-object v0, v0, Lcom/duapps/ad/stats/k;->c:Lcom/duapps/ad/stats/c;

    iget-object v1, p0, Lcom/duapps/ad/stats/m;->a:Lcom/duapps/ad/stats/k;

    iget-object v1, v1, Lcom/duapps/ad/stats/k;->a:Lcom/duapps/ad/stats/p;

    iget-object v2, p0, Lcom/duapps/ad/stats/m;->a:Lcom/duapps/ad/stats/k;

    iget-object v2, v2, Lcom/duapps/ad/stats/k;->a:Lcom/duapps/ad/stats/p;

    invoke-virtual {v2}, Lcom/duapps/ad/stats/p;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/duapps/ad/stats/c;->i(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/stats/m;->a:Lcom/duapps/ad/stats/k;

    iget-object v0, v0, Lcom/duapps/ad/stats/k;->c:Lcom/duapps/ad/stats/c;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/c;->a()V

    goto :goto_0
.end method
