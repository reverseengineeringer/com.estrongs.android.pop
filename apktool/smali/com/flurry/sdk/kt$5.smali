.class Lcom/flurry/sdk/kt$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/le;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/le",
        "<",
        "Lcom/flurry/sdk/ku;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/kt;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kt;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/kt$5;->a:Lcom/flurry/sdk/kt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/sdk/lb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/flurry/sdk/lb",
            "<",
            "Lcom/flurry/sdk/ku;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/flurry/sdk/ku$a;

    invoke-direct {v0}, Lcom/flurry/sdk/ku$a;-><init>()V

    return-object v0
.end method
