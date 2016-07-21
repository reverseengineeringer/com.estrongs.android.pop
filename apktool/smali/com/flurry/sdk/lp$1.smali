.class Lcom/flurry/sdk/lp$1;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/lp;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/lp;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/lp$1;->a:Lcom/flurry/sdk/lp;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    new-instance v0, Lcom/flurry/sdk/ln;

    invoke-direct {v0}, Lcom/flurry/sdk/ln;-><init>()V

    invoke-virtual {v0}, Lcom/flurry/sdk/ln;->b()V

    iget-object v0, p0, Lcom/flurry/sdk/lp$1;->a:Lcom/flurry/sdk/lp;

    invoke-static {v0}, Lcom/flurry/sdk/lp;->a(Lcom/flurry/sdk/lp;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/lp$1;->a:Lcom/flurry/sdk/lp;

    invoke-static {v0}, Lcom/flurry/sdk/lp;->b(Lcom/flurry/sdk/lp;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/lp$1;->a:Lcom/flurry/sdk/lp;

    invoke-static {v1}, Lcom/flurry/sdk/lp;->c(Lcom/flurry/sdk/lp;)Lcom/flurry/sdk/ly;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/lp$1;->a:Lcom/flurry/sdk/lp;

    invoke-static {v2}, Lcom/flurry/sdk/lp;->d(Lcom/flurry/sdk/lp;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
