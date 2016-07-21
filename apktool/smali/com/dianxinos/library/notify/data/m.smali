.class public Lcom/dianxinos/library/notify/data/m;
.super Lcom/dianxinos/library/notify/data/ShowRule;


# instance fields
.field public h:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dianxinos/library/notify/data/ShowRule;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    sget-object v0, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->NORMAL:Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    invoke-virtual {p0, v0}, Lcom/dianxinos/library/notify/data/m;->c(Lcom/dianxinos/library/notify/data/ShowRule$ShowType;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(Lcom/dianxinos/library/notify/data/ShowRule$ShowType;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/dianxinos/library/notify/data/m;->h:Ljava/lang/Integer;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/dianxinos/library/notify/data/m;->b:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/dianxinos/library/notify/h/b;->a(Ljava/lang/String;Lcom/dianxinos/library/notify/data/ShowRule$ShowType;)I

    move-result v1

    iget-object v2, p0, Lcom/dianxinos/library/notify/data/m;->h:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_2

    :goto_1
    sget-boolean v2, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkShowTimes failure.totalShowTimes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dianxinos/library/notify/data/m;->h:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",alreadyShowTimes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",showType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
