.class Lcom/flurry/sdk/ks$3;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ks;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ks;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ks$3;->a:Lcom/flurry/sdk/ks;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/ks$3;->a:Lcom/flurry/sdk/ks;

    iget-object v1, p0, Lcom/flurry/sdk/ks$3;->a:Lcom/flurry/sdk/ks;

    invoke-static {v1}, Lcom/flurry/sdk/ks;->b(Lcom/flurry/sdk/ks;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ks;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/flurry/sdk/ks$3;->a:Lcom/flurry/sdk/ks;

    invoke-static {v0}, Lcom/flurry/sdk/ks;->a(Lcom/flurry/sdk/ks;)V

    return-void
.end method
