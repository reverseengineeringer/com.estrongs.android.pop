.class Lcom/flurry/sdk/dk$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/le;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/le",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/flurry/sdk/dj;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dk;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dk;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/dk$1;->a:Lcom/flurry/sdk/dk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/sdk/lb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/flurry/sdk/lb",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/dj;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/flurry/sdk/la;

    new-instance v1, Lcom/flurry/sdk/dj$c;

    invoke-direct {v1}, Lcom/flurry/sdk/dj$c;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/la;-><init>(Lcom/flurry/sdk/lb;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    new-instance v0, Lcom/flurry/sdk/la;

    new-instance v1, Lcom/flurry/sdk/dj$b;

    invoke-direct {v1}, Lcom/flurry/sdk/dj$b;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/la;-><init>(Lcom/flurry/sdk/lb;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/flurry/sdk/la;

    new-instance v1, Lcom/flurry/sdk/dj$a;

    invoke-direct {v1}, Lcom/flurry/sdk/dj$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/la;-><init>(Lcom/flurry/sdk/lb;)V

    goto :goto_0
.end method
