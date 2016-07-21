.class public abstract Lcom/dianxinos/library/notify/data/ShowRule;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Long;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/Integer;

.field public g:Lcom/dianxinos/library/notify/data/Checkers;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/dianxinos/library/notify/data/ShowRule;->e:Ljava/util/List;

    return-void
.end method

.method private d()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/dianxinos/library/notify/data/ShowRule;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/dianxinos/library/notify/data/ShowRule;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Z
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/dianxinos/library/notify/data/ShowRule;->e:Ljava/util/List;

    add-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, -0x2

    rem-int/lit8 v0, v0, 0x7

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    rem-int/lit8 v1, v1, 0x18

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 8

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/dianxinos/library/notify/data/ShowRule;->f:Ljava/lang/Integer;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/dianxinos/library/notify/data/ShowRule;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/dianxinos/library/notify/h/b;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/dianxinos/library/notify/data/ShowRule;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v6, v2

    cmp-long v1, v6, v4

    if-ltz v1, :cond_0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/dianxinos/library/notify/data/ShowRule;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/dianxinos/library/notify/data/ShowRule$ShowType;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/dianxinos/library/notify/data/ShowRule;->b(Lcom/dianxinos/library/notify/data/ShowRule$ShowType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/library/notify/data/ShowRule;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/library/notify/data/ShowRule;->g:Lcom/dianxinos/library/notify/data/Checkers;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/data/ShowRule;->g:Lcom/dianxinos/library/notify/data/Checkers;

    invoke-virtual {v0}, Lcom/dianxinos/library/notify/data/Checkers;->doCheck()Z

    move-result v0

    goto :goto_0
.end method

.method public b(Lcom/dianxinos/library/notify/data/ShowRule$ShowType;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/dianxinos/library/notify/data/ShowRule;->d()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkShowDay failure.Start day:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/library/notify/data/ShowRule;->c:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",end day:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/library/notify/data/ShowRule;->d:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",current day:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/dianxinos/library/notify/data/ShowRule;->e()Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "checkShowWeek failure"

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/dianxinos/library/notify/data/ShowRule;->c(Lcom/dianxinos/library/notify/data/ShowRule$ShowType;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/dianxinos/library/notify/data/ShowRule;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract c()Z
.end method

.method protected abstract c(Lcom/dianxinos/library/notify/data/ShowRule$ShowType;)Z
.end method
