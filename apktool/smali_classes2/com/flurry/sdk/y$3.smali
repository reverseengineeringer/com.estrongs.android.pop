.class Lcom/flurry/sdk/y$3;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/flurry/sdk/y;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/y;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/y$3;->b:Lcom/flurry/sdk/y;

    iput-object p2, p0, Lcom/flurry/sdk/y$3;->a:Ljava/util/List;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/y$3;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ab;->a(Ljava/util/List;)V

    return-void
.end method
