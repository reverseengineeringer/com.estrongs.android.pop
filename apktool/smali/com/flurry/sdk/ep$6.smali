.class final Lcom/flurry/sdk/ep$6;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/sdk/ej$a;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/flurry/sdk/ej$a;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ep$6;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/sdk/ep$6;->b:Lcom/flurry/sdk/ej$a;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    new-instance v0, Lcom/flurry/sdk/ej;

    invoke-direct {v0}, Lcom/flurry/sdk/ej;-><init>()V

    iget-object v1, p0, Lcom/flurry/sdk/ep$6;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/flurry/sdk/ea;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/flurry/sdk/ep$6;->b:Lcom/flurry/sdk/ej$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/ej;->a(Ljava/lang/String;ILcom/flurry/sdk/ej$a;)V

    return-void
.end method
