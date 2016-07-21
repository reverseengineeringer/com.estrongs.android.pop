.class final Lcom/dianxinos/library/b/b/d/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dianxinos/library/b/b/d/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dianxinos/library/b/b/d/p",
        "<",
        "Ljava/lang/String;",
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
.method public bridge synthetic a(Ljava/lang/Object;)[B
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dianxinos/library/b/b/d/m;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p1}, Lcom/dianxinos/library/b/b/c/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
