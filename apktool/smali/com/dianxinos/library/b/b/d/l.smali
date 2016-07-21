.class final Lcom/dianxinos/library/b/b/d/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dianxinos/library/b/b/d/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dianxinos/library/b/b/d/o",
        "<",
        "Ljava/lang/Float;",
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
.method public a([B)Ljava/lang/Float;
    .locals 1

    invoke-static {p1}, Lcom/dianxinos/library/b/b/c/c;->c([B)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([B)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/dianxinos/library/b/b/d/l;->a([B)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
