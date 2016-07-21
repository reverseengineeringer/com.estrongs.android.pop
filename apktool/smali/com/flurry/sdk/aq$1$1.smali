.class Lcom/flurry/sdk/aq$1$1;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/aq$1;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/aq$1;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/aq$1$1;->a:Lcom/flurry/sdk/aq$1;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/aq$1$1;->a:Lcom/flurry/sdk/aq$1;

    iget-object v0, v0, Lcom/flurry/sdk/aq$1;->a:Lcom/flurry/sdk/aq;

    invoke-static {v0}, Lcom/flurry/sdk/aq;->b(Lcom/flurry/sdk/aq;)Lcom/flurry/sdk/ai;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/aq$1$1;->a:Lcom/flurry/sdk/aq$1;

    iget-object v0, v0, Lcom/flurry/sdk/aq$1;->a:Lcom/flurry/sdk/aq;

    invoke-virtual {v0}, Lcom/flurry/sdk/aq;->b()V

    iget-object v0, p0, Lcom/flurry/sdk/aq$1$1;->a:Lcom/flurry/sdk/aq$1;

    iget-object v0, v0, Lcom/flurry/sdk/aq$1;->a:Lcom/flurry/sdk/aq;

    invoke-virtual {v0}, Lcom/flurry/sdk/aq;->a()V

    goto :goto_0
.end method
