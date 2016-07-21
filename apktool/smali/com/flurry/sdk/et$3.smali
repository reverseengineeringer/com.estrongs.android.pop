.class Lcom/flurry/sdk/et$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/ek$a;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/et;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/et;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/et$3;->a:Lcom/flurry/sdk/et;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0x191

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/dy;->a()V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/et$3;->a:Lcom/flurry/sdk/et;

    sget-object v1, Lcom/flurry/sdk/ed;->k:Lcom/flurry/sdk/ed;

    invoke-virtual {v0, v1, p2}, Lcom/flurry/sdk/et;->a(Lcom/flurry/sdk/ed;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 4

    invoke-static {}, Lcom/flurry/sdk/hl;->a()Lcom/flurry/sdk/hl;

    move-result-object v0

    const-string v1, "PostSend"

    iget-object v2, p0, Lcom/flurry/sdk/et$3;->a:Lcom/flurry/sdk/et;

    iget-object v2, v2, Lcom/flurry/sdk/et;->b:Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/hl;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    iget-object v0, p0, Lcom/flurry/sdk/et$3;->a:Lcom/flurry/sdk/et;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/et;->a(Ljava/lang/Long;)V

    return-void
.end method
