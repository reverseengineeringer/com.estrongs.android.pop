.class final Lcom/flurry/sdk/h$1;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/flurry/sdk/az;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "playVideo"

    sget-object v1, Lcom/flurry/sdk/az;->u:Lcom/flurry/sdk/az;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/h$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "open"

    sget-object v1, Lcom/flurry/sdk/az;->v:Lcom/flurry/sdk/az;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/h$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "expand"

    sget-object v1, Lcom/flurry/sdk/az;->s:Lcom/flurry/sdk/az;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/h$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "collapse"

    sget-object v1, Lcom/flurry/sdk/az;->t:Lcom/flurry/sdk/az;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/h$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
