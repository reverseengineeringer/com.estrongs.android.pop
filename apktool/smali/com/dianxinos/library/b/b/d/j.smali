.class final Lcom/dianxinos/library/b/b/d/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dianxinos/library/b/b/d/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dianxinos/library/b/b/d/o",
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
.method public a([B)Ljava/lang/Long;
    .locals 2

    invoke-static {p1}, Lcom/dianxinos/library/b/b/c/c;->b([B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([B)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/dianxinos/library/b/b/d/j;->a([B)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
