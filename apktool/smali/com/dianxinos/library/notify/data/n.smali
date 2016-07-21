.class public Lcom/dianxinos/library/notify/data/n;
.super Lcom/dianxinos/library/notify/data/ShowRule;


# instance fields
.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Integer;

.field public j:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dianxinos/library/notify/data/ShowRule;-><init>()V

    return-void
.end method

.method private a(Lcom/dianxinos/library/notify/data/ShowRule$ShowType;I)Z
    .locals 4

    iget-object v0, p0, Lcom/dianxinos/library/notify/data/n;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/dianxinos/library/notify/h/b;->a(Ljava/lang/String;Lcom/dianxinos/library/notify/data/ShowRule$ShowType;)I

    move-result v1

    if-ge v1, p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    sget-boolean v2, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkShowTimes failure.totalShowTimes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public c()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->ICON:Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    invoke-virtual {p0, v0}, Lcom/dianxinos/library/notify/data/n;->c(Lcom/dianxinos/library/notify/data/ShowRule$ShowType;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sget-object v3, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->WIDGET:Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    invoke-virtual {p0, v3}, Lcom/dianxinos/library/notify/data/n;->c(Lcom/dianxinos/library/notify/data/ShowRule$ShowType;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    :goto_1
    sget-object v4, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->NOTF:Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    invoke-virtual {p0, v4}, Lcom/dianxinos/library/notify/data/n;->c(Lcom/dianxinos/library/notify/data/ShowRule$ShowType;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v1

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    :goto_3
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v4, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method protected c(Lcom/dianxinos/library/notify/data/ShowRule$ShowType;)Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->ICON:Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/dianxinos/library/notify/data/n;->h:Ljava/lang/Integer;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/dianxinos/library/notify/data/n;->h:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/dianxinos/library/notify/data/n;->a(Lcom/dianxinos/library/notify/data/ShowRule$ShowType;I)Z

    move-result v0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->WIDGET:Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/dianxinos/library/notify/data/n;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/dianxinos/library/notify/data/n;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/dianxinos/library/notify/data/n;->a(Lcom/dianxinos/library/notify/data/ShowRule$ShowType;I)Z

    move-result v0

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->NOTF:Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/dianxinos/library/notify/data/n;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/dianxinos/library/notify/data/n;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/dianxinos/library/notify/data/n;->a(Lcom/dianxinos/library/notify/data/ShowRule$ShowType;I)Z

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
