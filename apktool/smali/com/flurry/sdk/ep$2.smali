.class final Lcom/flurry/sdk/ep$2;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/eg;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/flurry/sdk/eh$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/eg;Ljava/lang/String;Lcom/flurry/sdk/eh$a;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ep$2;->a:Lcom/flurry/sdk/eg;

    iput-object p2, p0, Lcom/flurry/sdk/ep$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/ep$2;->c:Lcom/flurry/sdk/eh$a;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    new-instance v0, Lcom/flurry/sdk/eh;

    invoke-direct {v0}, Lcom/flurry/sdk/eh;-><init>()V

    iget-object v1, p0, Lcom/flurry/sdk/ep$2;->a:Lcom/flurry/sdk/eg;

    iget-object v2, p0, Lcom/flurry/sdk/ep$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/sdk/ep$2;->c:Lcom/flurry/sdk/eh$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/eh;->a(Lcom/flurry/sdk/eg;Ljava/lang/String;Lcom/flurry/sdk/eh$a;)V

    return-void
.end method
