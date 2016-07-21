.class Lcom/flurry/sdk/gf$1;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gf;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gf;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gf$1;->a:Lcom/flurry/sdk/gf;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gf$1;->a:Lcom/flurry/sdk/gf;

    iget-object v0, v0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gf$1;->a:Lcom/flurry/sdk/gf;

    iget-object v0, v0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->i()V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gf$1;->a:Lcom/flurry/sdk/gf;

    invoke-static {v0}, Lcom/flurry/sdk/gf;->a(Lcom/flurry/sdk/gf;)V

    return-void
.end method
