.class final Lcom/dianxinos/library/b/b/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dianxinos/library/b/b/d/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dianxinos/library/b/b/d/p",
        "<[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)[B
    .locals 1

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/dianxinos/library/b/b/d/c;->a([B)[B

    move-result-object v0

    return-object v0
.end method

.method public a([B)[B
    .locals 0

    return-object p1
.end method
