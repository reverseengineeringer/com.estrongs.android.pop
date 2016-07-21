.class Lcom/flurry/sdk/et$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kb",
        "<",
        "Lcom/flurry/sdk/ln;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/et;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/et;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/et$6;->a:Lcom/flurry/sdk/et;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/ka;)V
    .locals 0

    check-cast p1, Lcom/flurry/sdk/ln;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/et$6;->a(Lcom/flurry/sdk/ln;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/ln;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/flurry/sdk/et$6;->a:Lcom/flurry/sdk/et;

    invoke-static {v2}, Lcom/flurry/sdk/et;->b(Lcom/flurry/sdk/et;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/et$6$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/et$6$1;-><init>(Lcom/flurry/sdk/et$6;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
