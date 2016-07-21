.class Lcom/duapps/ad/stats/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/duapps/ad/stats/c;


# direct methods
.method constructor <init>(Lcom/duapps/ad/stats/c;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/stats/e;->a:Lcom/duapps/ad/stats/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/stats/e;->a:Lcom/duapps/ad/stats/c;

    invoke-static {v0}, Lcom/duapps/ad/stats/c;->a(Lcom/duapps/ad/stats/c;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/stats/e;->a:Lcom/duapps/ad/stats/c;

    invoke-static {v0}, Lcom/duapps/ad/stats/c;->a(Lcom/duapps/ad/stats/c;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duapps/ad/stats/e;->a:Lcom/duapps/ad/stats/c;

    invoke-static {v0}, Lcom/duapps/ad/stats/c;->a(Lcom/duapps/ad/stats/c;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/stats/e;->a:Lcom/duapps/ad/stats/c;

    invoke-static {v0}, Lcom/duapps/ad/stats/c;->b(Lcom/duapps/ad/stats/c;)Lcom/duapps/ad/base/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/stats/e;->a:Lcom/duapps/ad/stats/c;

    invoke-static {v0}, Lcom/duapps/ad/stats/c;->b(Lcom/duapps/ad/stats/c;)Lcom/duapps/ad/base/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/base/k;->dismiss()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/stats/e;->a:Lcom/duapps/ad/stats/c;

    invoke-static {v0}, Lcom/duapps/ad/stats/c;->b(Lcom/duapps/ad/stats/c;)Lcom/duapps/ad/base/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/stats/e;->a:Lcom/duapps/ad/stats/c;

    invoke-static {v0}, Lcom/duapps/ad/stats/c;->b(Lcom/duapps/ad/stats/c;)Lcom/duapps/ad/base/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/base/k;->dismiss()V

    goto :goto_0
.end method
