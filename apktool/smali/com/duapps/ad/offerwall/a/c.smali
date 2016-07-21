.class Lcom/duapps/ad/offerwall/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duapps/ad/base/am;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/duapps/ad/base/am",
        "<",
        "Lcom/duapps/ad/entity/AdModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/offerwall/a/b;


# direct methods
.method constructor <init>(Lcom/duapps/ad/offerwall/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/offerwall/a/c;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/c;->a:Lcom/duapps/ad/offerwall/a/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duapps/ad/offerwall/a/b;->a(Lcom/duapps/ad/offerwall/a/b;Z)Z

    return-void
.end method

.method public a(ILcom/duapps/ad/entity/AdModel;)V
    .locals 3

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/c;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v0, p2}, Lcom/duapps/ad/offerwall/a/b;->a(Lcom/duapps/ad/offerwall/a/b;Lcom/duapps/ad/entity/AdModel;)Lcom/duapps/ad/entity/AdModel;

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/c;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/b;->a(Lcom/duapps/ad/offerwall/a/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/a/c;->a:Lcom/duapps/ad/offerwall/a/b;

    iget-object v2, p2, Lcom/duapps/ad/entity/AdModel;->h:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/duapps/ad/offerwall/a/b;->a(Lcom/duapps/ad/offerwall/a/b;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/a/c;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/a/b;->b(Lcom/duapps/ad/offerwall/a/b;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/c;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/b;->a(Lcom/duapps/ad/offerwall/a/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/duapps/ad/offerwall/a/c;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v2}, Lcom/duapps/ad/offerwall/a/b;->c(Lcom/duapps/ad/offerwall/a/b;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/duapps/ad/stats/b;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/c;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/b;->e(Lcom/duapps/ad/offerwall/a/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/duapps/ad/offerwall/a/d;

    invoke-direct {v2, p0}, Lcom/duapps/ad/offerwall/a/d;-><init>(Lcom/duapps/ad/offerwall/a/c;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/duapps/ad/offerwall/a/c;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v2}, Lcom/duapps/ad/offerwall/a/b;->b(Lcom/duapps/ad/offerwall/a/b;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/duapps/ad/offerwall/a/c;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v2}, Lcom/duapps/ad/offerwall/a/b;->b(Lcom/duapps/ad/offerwall/a/b;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/c;->a:Lcom/duapps/ad/offerwall/a/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duapps/ad/offerwall/a/b;->b(Lcom/duapps/ad/offerwall/a/b;Z)Z

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/c;->a:Lcom/duapps/ad/offerwall/a/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duapps/ad/offerwall/a/b;->a(Lcom/duapps/ad/offerwall/a/b;Z)Z

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/c;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/b;->e(Lcom/duapps/ad/offerwall/a/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/duapps/ad/offerwall/a/e;

    invoke-direct {v1, p0}, Lcom/duapps/ad/offerwall/a/e;-><init>(Lcom/duapps/ad/offerwall/a/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/duapps/ad/entity/AdModel;

    invoke-virtual {p0, p1, p2}, Lcom/duapps/ad/offerwall/a/c;->a(ILcom/duapps/ad/entity/AdModel;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/c;->a:Lcom/duapps/ad/offerwall/a/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duapps/ad/offerwall/a/b;->a(Lcom/duapps/ad/offerwall/a/b;Z)Z

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/c;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/b;->e(Lcom/duapps/ad/offerwall/a/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/duapps/ad/offerwall/a/f;

    invoke-direct {v1, p0}, Lcom/duapps/ad/offerwall/a/f;-><init>(Lcom/duapps/ad/offerwall/a/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
