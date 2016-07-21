.class final Lcom/dianxinos/library/notify/dispatcher/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/dianxinos/library/notify/data/j;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dianxinos/library/notify/data/j;Lcom/dianxinos/library/notify/data/j;)I
    .locals 6

    const-wide/16 v4, 0x0

    iget v0, p1, Lcom/dianxinos/library/notify/data/j;->c:I

    iget v1, p2, Lcom/dianxinos/library/notify/data/j;->c:I

    if-eq v0, v1, :cond_0

    iget v0, p2, Lcom/dianxinos/library/notify/data/j;->c:I

    iget v1, p1, Lcom/dianxinos/library/notify/data/j;->c:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/dianxinos/library/notify/data/j;->e:Lcom/dianxinos/library/notify/data/ShowRule;

    iget-object v0, v0, Lcom/dianxinos/library/notify/data/ShowRule;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p2, Lcom/dianxinos/library/notify/data/j;->e:Lcom/dianxinos/library/notify/data/ShowRule;

    iget-object v2, v2, Lcom/dianxinos/library/notify/data/ShowRule;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/dianxinos/library/notify/data/j;

    check-cast p2, Lcom/dianxinos/library/notify/data/j;

    invoke-virtual {p0, p1, p2}, Lcom/dianxinos/library/notify/dispatcher/i;->a(Lcom/dianxinos/library/notify/data/j;Lcom/dianxinos/library/notify/data/j;)I

    move-result v0

    return v0
.end method
