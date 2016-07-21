.class Lcom/flurry/sdk/am$2$1;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/am$2;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/am$2;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/am$2$1;->a:Lcom/flurry/sdk/am$2;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/am$2$1;->a:Lcom/flurry/sdk/am$2;

    iget-object v0, v0, Lcom/flurry/sdk/am$2;->a:Lcom/flurry/sdk/am;

    invoke-static {v0}, Lcom/flurry/sdk/am;->g(Lcom/flurry/sdk/am;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/am$2$1;->a:Lcom/flurry/sdk/am$2;

    iget-object v0, v0, Lcom/flurry/sdk/am$2;->a:Lcom/flurry/sdk/am;

    invoke-virtual {v0}, Lcom/flurry/sdk/am;->h()V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/am$2$1;->a:Lcom/flurry/sdk/am$2;

    iget-object v0, v0, Lcom/flurry/sdk/am$2;->a:Lcom/flurry/sdk/am;

    invoke-static {v0}, Lcom/flurry/sdk/am;->h(Lcom/flurry/sdk/am;)V

    return-void
.end method
