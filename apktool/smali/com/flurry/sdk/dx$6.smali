.class Lcom/flurry/sdk/dx$6;
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
        "Lcom/flurry/sdk/ay;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dx;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dx;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/dx$6;->a:Lcom/flurry/sdk/dx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/sdk/lb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/flurry/sdk/lb",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ay;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/flurry/sdk/la;

    new-instance v1, Lcom/flurry/sdk/ay$a;

    new-instance v2, Lcom/flurry/sdk/ax$a;

    invoke-direct {v2}, Lcom/flurry/sdk/ax$a;-><init>()V

    invoke-direct {v1, v2}, Lcom/flurry/sdk/ay$a;-><init>(Lcom/flurry/sdk/ax$a;)V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/la;-><init>(Lcom/flurry/sdk/lb;)V

    return-object v0
.end method
