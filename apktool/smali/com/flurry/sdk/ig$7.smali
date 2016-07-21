.class Lcom/flurry/sdk/ig$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/le;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/le",
        "<",
        "Lcom/flurry/sdk/ie;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ig;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ig;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ig$7;->a:Lcom/flurry/sdk/ig;

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
            "Lcom/flurry/sdk/ie;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/flurry/sdk/ie$a;

    invoke-direct {v0}, Lcom/flurry/sdk/ie$a;-><init>()V

    return-object v0
.end method
