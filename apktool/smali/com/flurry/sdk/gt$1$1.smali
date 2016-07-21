.class Lcom/flurry/sdk/gt$1$1;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gt$1;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gt$1;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gt$1$1;->a:Lcom/flurry/sdk/gt$1;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/gt;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to load view in 8 seconds."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/gt$1$1;->a:Lcom/flurry/sdk/gt$1;

    iget-object v0, v0, Lcom/flurry/sdk/gt$1;->a:Lcom/flurry/sdk/gt;

    invoke-virtual {v0}, Lcom/flurry/sdk/gt;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/flurry/sdk/gt$1$1;->a:Lcom/flurry/sdk/gt$1;

    iget-object v0, v0, Lcom/flurry/sdk/gt$1;->a:Lcom/flurry/sdk/gt;

    invoke-virtual {v0}, Lcom/flurry/sdk/gt;->removeTimerListener()V

    iget-object v0, p0, Lcom/flurry/sdk/gt$1$1;->a:Lcom/flurry/sdk/gt$1;

    iget-object v0, v0, Lcom/flurry/sdk/gt$1;->a:Lcom/flurry/sdk/gt;

    invoke-virtual {v0}, Lcom/flurry/sdk/gt;->onViewLoadTimeout()V

    return-void
.end method
