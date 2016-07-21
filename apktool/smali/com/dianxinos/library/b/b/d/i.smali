.class final Lcom/dianxinos/library/b/b/d/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dianxinos/library/b/b/d/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dianxinos/library/b/b/d/p",
        "<",
        "Ljava/lang/Long;",
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
.method public a(Ljava/lang/Long;)[B
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/dianxinos/library/b/b/c/c;->a(J)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)[B
    .locals 1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/dianxinos/library/b/b/d/i;->a(Ljava/lang/Long;)[B

    move-result-object v0

    return-object v0
.end method
