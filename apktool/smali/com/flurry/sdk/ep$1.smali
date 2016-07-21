.class final Lcom/flurry/sdk/ep$1;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/en$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/en$a;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ep$1;->a:Lcom/flurry/sdk/en$a;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Lcom/flurry/sdk/en;

    invoke-direct {v0}, Lcom/flurry/sdk/en;-><init>()V

    iget-object v1, p0, Lcom/flurry/sdk/ep$1;->a:Lcom/flurry/sdk/en$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/en;->a(Lcom/flurry/sdk/en$a;)V

    return-void
.end method
