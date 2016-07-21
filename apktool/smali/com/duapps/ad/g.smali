.class Lcom/duapps/ad/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duapps/ad/d;


# instance fields
.field final synthetic a:Lcom/duapps/ad/f;


# direct methods
.method constructor <init>(Lcom/duapps/ad/f;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/g;->a:Lcom/duapps/ad/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/g;->a:Lcom/duapps/ad/f;

    invoke-static {v0}, Lcom/duapps/ad/f;->a(Lcom/duapps/ad/f;)Lcom/duapps/ad/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/g;->a:Lcom/duapps/ad/f;

    invoke-static {v0}, Lcom/duapps/ad/f;->a(Lcom/duapps/ad/f;)Lcom/duapps/ad/e;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/g;->a:Lcom/duapps/ad/f;

    invoke-interface {v0, v1}, Lcom/duapps/ad/e;->a(Lcom/duapps/ad/f;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/duapps/ad/b;)V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/g;->a:Lcom/duapps/ad/f;

    invoke-static {v0}, Lcom/duapps/ad/f;->a(Lcom/duapps/ad/f;)Lcom/duapps/ad/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/g;->a:Lcom/duapps/ad/f;

    invoke-static {v0}, Lcom/duapps/ad/f;->a(Lcom/duapps/ad/f;)Lcom/duapps/ad/e;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/g;->a:Lcom/duapps/ad/f;

    invoke-interface {v0, v1, p1}, Lcom/duapps/ad/e;->a(Lcom/duapps/ad/f;Lcom/duapps/ad/b;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/g;->a:Lcom/duapps/ad/f;

    invoke-static {v0}, Lcom/duapps/ad/f;->b(Lcom/duapps/ad/f;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/duapps/ad/i;

    invoke-direct {v1, p0, p1}, Lcom/duapps/ad/i;-><init>(Lcom/duapps/ad/g;Lcom/duapps/ad/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Lcom/duapps/ad/c;)V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/g;->a:Lcom/duapps/ad/f;

    invoke-static {v0, p1}, Lcom/duapps/ad/f;->a(Lcom/duapps/ad/f;Lcom/duapps/ad/c;)Lcom/duapps/ad/c;

    iget-object v0, p0, Lcom/duapps/ad/g;->a:Lcom/duapps/ad/f;

    invoke-static {v0}, Lcom/duapps/ad/f;->a(Lcom/duapps/ad/f;)Lcom/duapps/ad/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/g;->a:Lcom/duapps/ad/f;

    invoke-static {v0}, Lcom/duapps/ad/f;->a(Lcom/duapps/ad/f;)Lcom/duapps/ad/e;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/g;->a:Lcom/duapps/ad/f;

    invoke-interface {v0, v1}, Lcom/duapps/ad/e;->b(Lcom/duapps/ad/f;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/g;->a:Lcom/duapps/ad/f;

    invoke-static {v0}, Lcom/duapps/ad/f;->b(Lcom/duapps/ad/f;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/duapps/ad/h;

    invoke-direct {v1, p0}, Lcom/duapps/ad/h;-><init>(Lcom/duapps/ad/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
