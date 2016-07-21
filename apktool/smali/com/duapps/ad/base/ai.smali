.class Lcom/duapps/ad/base/ai;
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
.field final synthetic a:Lcom/duapps/ad/base/ah;


# direct methods
.method constructor <init>(Lcom/duapps/ad/base/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/base/ai;->a:Lcom/duapps/ad/base/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/duapps/ad/base/ah;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start load cache data--"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/base/ai;->a:Lcom/duapps/ad/base/ah;

    iput-boolean v2, v0, Lcom/duapps/ad/base/ah;->c:Z

    iget-object v0, p0, Lcom/duapps/ad/base/ai;->a:Lcom/duapps/ad/base/ah;

    iput-boolean v2, v0, Lcom/duapps/ad/base/ah;->e:Z

    return-void
.end method

.method public a(ILcom/duapps/ad/entity/AdModel;)V
    .locals 4

    iget-object v0, p0, Lcom/duapps/ad/base/ai;->a:Lcom/duapps/ad/base/ah;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/duapps/ad/base/ah;->c:Z

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/base/ai;->a:Lcom/duapps/ad/base/ah;

    invoke-static {v0}, Lcom/duapps/ad/base/ah;->a(Lcom/duapps/ad/base/ah;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/ai;->a:Lcom/duapps/ad/base/ah;

    iget-object v2, p2, Lcom/duapps/ad/entity/AdModel;->h:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/duapps/ad/base/ah;->a(Lcom/duapps/ad/base/ah;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/ai;->a:Lcom/duapps/ad/base/ah;

    invoke-static {v1}, Lcom/duapps/ad/base/ah;->b(Lcom/duapps/ad/base/ah;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v0, p0, Lcom/duapps/ad/base/ai;->a:Lcom/duapps/ad/base/ah;

    invoke-static {v0}, Lcom/duapps/ad/base/ah;->c(Lcom/duapps/ad/base/ah;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/duapps/ad/base/ai;->a:Lcom/duapps/ad/base/ah;

    invoke-static {v2}, Lcom/duapps/ad/base/ah;->d(Lcom/duapps/ad/base/ah;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/duapps/ad/stats/b;->c(Landroid/content/Context;I)V

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
    iget-object v2, p0, Lcom/duapps/ad/base/ai;->a:Lcom/duapps/ad/base/ah;

    invoke-static {v2}, Lcom/duapps/ad/base/ah;->b(Lcom/duapps/ad/base/ah;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/duapps/ad/base/ah;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "store data into cache list -- list.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/base/ai;->a:Lcom/duapps/ad/base/ah;

    invoke-static {v3}, Lcom/duapps/ad/base/ah;->b(Lcom/duapps/ad/base/ah;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duapps/ad/base/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/duapps/ad/entity/AdModel;

    invoke-virtual {p0, p1, p2}, Lcom/duapps/ad/base/ai;->a(ILcom/duapps/ad/entity/AdModel;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/duapps/ad/base/ah;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to get cache -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/base/ai;->a:Lcom/duapps/ad/base/ah;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/duapps/ad/base/ah;->b:Z

    iget-object v0, p0, Lcom/duapps/ad/base/ai;->a:Lcom/duapps/ad/base/ah;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/duapps/ad/base/ah;->c:Z

    return-void
.end method
