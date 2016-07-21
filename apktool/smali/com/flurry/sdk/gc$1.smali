.class Lcom/flurry/sdk/gc$1;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gc;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gc;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gc$1;->a:Lcom/flurry/sdk/gc;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gc$1;->a:Lcom/flurry/sdk/gc;

    iget-object v0, v0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gc$1;->a:Lcom/flurry/sdk/gc;

    iget-object v0, v0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->i()V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gc$1;->a:Lcom/flurry/sdk/gc;

    invoke-static {v0}, Lcom/flurry/sdk/gc;->a(Lcom/flurry/sdk/gc;)V

    return-void
.end method
