.class Lcom/duapps/ad/base/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/duapps/ad/entity/AdModel;

.field final synthetic b:Lcom/duapps/ad/base/t;


# direct methods
.method constructor <init>(Lcom/duapps/ad/base/t;Lcom/duapps/ad/entity/AdModel;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/base/ac;->b:Lcom/duapps/ad/base/t;

    iput-object p2, p0, Lcom/duapps/ad/base/ac;->a:Lcom/duapps/ad/entity/AdModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/duapps/ad/base/ac;->a:Lcom/duapps/ad/entity/AdModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/base/ac;->a:Lcom/duapps/ad/entity/AdModel;

    iget-object v0, v0, Lcom/duapps/ad/entity/AdModel;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/base/ac;->a:Lcom/duapps/ad/entity/AdModel;

    iget-object v0, v0, Lcom/duapps/ad/entity/AdModel;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "ToolboxCacheManager"

    const-string v1, "ads == null || ads.list == null || ads.list.size() == 0"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/base/ac;->b:Lcom/duapps/ad/base/t;

    invoke-virtual {v0}, Lcom/duapps/ad/base/t;->b()V

    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/base/ac;->a:Lcom/duapps/ad/entity/AdModel;

    iget-object v0, v0, Lcom/duapps/ad/entity/AdModel;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    const-string v2, "ToolboxCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wall---before insert: ad.package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/duapps/ad/entity/AdData;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",ad.preParse:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/duapps/ad/entity/AdData;->G:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v0, Lcom/duapps/ad/entity/AdData;->G:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/duapps/ad/base/ac;->b:Lcom/duapps/ad/base/t;

    new-instance v3, Lcom/duapps/ad/stats/p;

    invoke-direct {v3, v0}, Lcom/duapps/ad/stats/p;-><init>(Lcom/duapps/ad/entity/AdData;)V

    invoke-virtual {v2, v3}, Lcom/duapps/ad/base/t;->b(Lcom/duapps/ad/stats/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ToolboxCacheManager"

    const-string v2, "wall---batch update or insert triggerPreParse data error: "

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
