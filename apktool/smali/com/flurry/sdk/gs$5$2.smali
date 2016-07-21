.class Lcom/flurry/sdk/gs$5$2;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gs$5;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gs$5;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gs$5$2;->a:Lcom/flurry/sdk/gs$5;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "errorCode"

    sget-object v2, Lcom/flurry/sdk/ba;->j:Lcom/flurry/sdk/ba;

    invoke-virtual {v2}, Lcom/flurry/sdk/ba;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/flurry/sdk/gs$5$2;->a:Lcom/flurry/sdk/gs$5;

    iget-object v1, v1, Lcom/flurry/sdk/gs$5;->b:Lcom/flurry/sdk/gs;

    sget-object v2, Lcom/flurry/sdk/bb;->g:Lcom/flurry/sdk/bb;

    iget-object v3, p0, Lcom/flurry/sdk/gs$5$2;->a:Lcom/flurry/sdk/gs$5;

    iget-object v3, v3, Lcom/flurry/sdk/gs$5;->b:Lcom/flurry/sdk/gs;

    invoke-virtual {v3}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    return-void
.end method
