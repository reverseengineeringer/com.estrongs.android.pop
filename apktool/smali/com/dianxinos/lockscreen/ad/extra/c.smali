.class Lcom/dianxinos/lockscreen/ad/extra/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duapps/ad/d;


# instance fields
.field final synthetic a:Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;


# direct methods
.method constructor <init>(Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ad/extra/c;->a:Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAd click , adTitle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ad/extra/c;->a:Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

    iget-object v2, v2, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->c:Lcom/duapps/ad/c;

    invoke-virtual {v2}, Lcom/duapps/ad/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/c;->a:Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->a(Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/c;->a:Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->b(Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;)Lcom/dianxinos/lockscreen/ad/extra/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/c;->a:Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->b(Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;)Lcom/dianxinos/lockscreen/ad/extra/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/dianxinos/lockscreen/ad/extra/d;->a()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/duapps/ad/b;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/duapps/ad/c;)V
    .locals 0

    return-void
.end method
