.class Lcom/flurry/sdk/et$6$1;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/et$6;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/et$6;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/et$6$1;->a:Lcom/flurry/sdk/et$6;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/et;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to load view in 10 seconds."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/ed;->n:Lcom/flurry/sdk/ed;

    iget-object v1, p0, Lcom/flurry/sdk/et$6$1;->a:Lcom/flurry/sdk/et$6;

    iget-object v1, v1, Lcom/flurry/sdk/et$6;->a:Lcom/flurry/sdk/et;

    invoke-static {v1}, Lcom/flurry/sdk/et;->c(Lcom/flurry/sdk/et;)I

    move-result v1

    const-string v2, "Request timed out"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ec;->a(Lcom/flurry/sdk/ed;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/et$6$1;->a:Lcom/flurry/sdk/et$6;

    iget-object v0, v0, Lcom/flurry/sdk/et$6;->a:Lcom/flurry/sdk/et;

    invoke-static {v0}, Lcom/flurry/sdk/et;->d(Lcom/flurry/sdk/et;)V

    iget-object v0, p0, Lcom/flurry/sdk/et$6$1;->a:Lcom/flurry/sdk/et$6;

    iget-object v0, v0, Lcom/flurry/sdk/et$6;->a:Lcom/flurry/sdk/et;

    invoke-static {v0}, Lcom/flurry/sdk/et;->e(Lcom/flurry/sdk/et;)Lcom/flurry/sdk/el;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/et$6$1;->a:Lcom/flurry/sdk/et$6;

    iget-object v0, v0, Lcom/flurry/sdk/et$6;->a:Lcom/flurry/sdk/et;

    invoke-static {v0}, Lcom/flurry/sdk/et;->e(Lcom/flurry/sdk/et;)Lcom/flurry/sdk/el;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/el;->c()V

    :cond_0
    return-void
.end method
