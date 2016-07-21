.class public Lcom/dianxinos/lockscreen/ad/extra/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;Lcom/duapps/ad/c;Z)Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "BaseCardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createAdCard -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;->SCREENLOCKBIGCARD:Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;

    if-ne p1, v1, :cond_0

    new-instance v0, Lcom/dianxinos/lockscreen/ad/extra/g;

    invoke-direct {v0, p0, p2}, Lcom/dianxinos/lockscreen/ad/extra/g;-><init>(Landroid/content/Context;Lcom/duapps/ad/c;)V

    goto :goto_0
.end method
