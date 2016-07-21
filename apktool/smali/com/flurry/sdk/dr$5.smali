.class Lcom/flurry/sdk/dr$5;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dr;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dr;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/dr$5;->a:Lcom/flurry/sdk/dr;

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

    iget-object v1, p0, Lcom/flurry/sdk/dr$5;->a:Lcom/flurry/sdk/dr;

    invoke-static {v1}, Lcom/flurry/sdk/dr;->f(Lcom/flurry/sdk/dr;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ab;->a(Ljava/util/List;)V

    return-void
.end method
