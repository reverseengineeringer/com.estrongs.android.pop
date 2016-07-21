.class Lcom/flurry/sdk/iy$2;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/flurry/sdk/iy;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/iy;I)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/iy$2;->b:Lcom/flurry/sdk/iy;

    iput p2, p0, Lcom/flurry/sdk/iy$2;->a:I

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget v0, p0, Lcom/flurry/sdk/iy$2;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/flurry/sdk/hl;->a()Lcom/flurry/sdk/hl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hl;->f()V

    :cond_0
    return-void
.end method
