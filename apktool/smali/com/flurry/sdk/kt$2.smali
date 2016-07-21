.class Lcom/flurry/sdk/kt$2;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/sdk/kt;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kt;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/kt$2;->b:Lcom/flurry/sdk/kt;

    iput-object p2, p0, Lcom/flurry/sdk/kt$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/kt$2;->b:Lcom/flurry/sdk/kt;

    new-instance v1, Lcom/flurry/sdk/kv;

    iget-object v2, p0, Lcom/flurry/sdk/kt$2;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/flurry/sdk/kv;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/flurry/sdk/kt;->c:Lcom/flurry/sdk/kv;

    return-void
.end method
