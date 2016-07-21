.class Lcom/flurry/sdk/kf$2$1;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/lz;

.field final synthetic b:Lcom/flurry/sdk/kf$2;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kf$2;Lcom/flurry/sdk/lz;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/kf$2$1;->b:Lcom/flurry/sdk/kf$2;

    iput-object p2, p0, Lcom/flurry/sdk/kf$2$1;->a:Lcom/flurry/sdk/lz;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/kf$2$1;->a:Lcom/flurry/sdk/lz;

    invoke-virtual {v0}, Lcom/flurry/sdk/lz;->q()V

    return-void
.end method
