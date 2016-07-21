.class Lcom/flurry/sdk/go$2;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Lcom/flurry/sdk/go;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/go;FF)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/go$2;->c:Lcom/flurry/sdk/go;

    iput p2, p0, Lcom/flurry/sdk/go$2;->a:F

    iput p3, p0, Lcom/flurry/sdk/go$2;->b:F

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/go$2;->c:Lcom/flurry/sdk/go;

    invoke-static {v0}, Lcom/flurry/sdk/go;->a(Lcom/flurry/sdk/go;)Lcom/flurry/sdk/gp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go$2;->c:Lcom/flurry/sdk/go;

    invoke-static {v0}, Lcom/flurry/sdk/go;->a(Lcom/flurry/sdk/go;)Lcom/flurry/sdk/gp;

    move-result-object v0

    iget v1, p0, Lcom/flurry/sdk/go$2;->a:F

    iget v2, p0, Lcom/flurry/sdk/go$2;->b:F

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/gp;->a(FF)V

    :cond_0
    return-void
.end method
