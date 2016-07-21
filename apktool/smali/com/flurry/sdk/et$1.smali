.class Lcom/flurry/sdk/et$1;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/et;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/et;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/et$1;->a:Lcom/flurry/sdk/et;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/et$1;->a:Lcom/flurry/sdk/et;

    invoke-virtual {v0}, Lcom/flurry/sdk/et;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "data"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/et$1;->a:Lcom/flurry/sdk/et;

    invoke-static {v1, v0}, Lcom/flurry/sdk/et;->a(Lcom/flurry/sdk/et;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/et$1;->a:Lcom/flurry/sdk/et;

    invoke-static {v1, v0}, Lcom/flurry/sdk/et;->b(Lcom/flurry/sdk/et;Ljava/util/Map;)V

    goto :goto_0
.end method
