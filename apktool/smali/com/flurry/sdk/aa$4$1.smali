.class Lcom/flurry/sdk/aa$4$1;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/aa$4;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/aa$4;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/aa$4$1;->a:Lcom/flurry/sdk/aa$4;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/aa$4$1;->a:Lcom/flurry/sdk/aa$4;

    iget-object v0, v0, Lcom/flurry/sdk/aa$4;->b:Lcom/flurry/sdk/aa;

    invoke-static {v0}, Lcom/flurry/sdk/aa;->b(Lcom/flurry/sdk/aa;)V

    return-void
.end method
