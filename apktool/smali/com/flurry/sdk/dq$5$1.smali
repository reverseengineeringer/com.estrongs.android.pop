.class Lcom/flurry/sdk/dq$5$1;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ae;

.field final synthetic b:Lcom/flurry/sdk/dq$5;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dq$5;Lcom/flurry/sdk/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/dq$5$1;->b:Lcom/flurry/sdk/dq$5;

    iput-object p2, p0, Lcom/flurry/sdk/dq$5$1;->a:Lcom/flurry/sdk/ae;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/dq$5$1;->b:Lcom/flurry/sdk/dq$5;

    iget-object v0, v0, Lcom/flurry/sdk/dq$5;->a:Lcom/flurry/sdk/dq;

    iget-object v1, p0, Lcom/flurry/sdk/dq$5$1;->a:Lcom/flurry/sdk/ae;

    iget-object v1, v1, Lcom/flurry/sdk/ae;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/dq$5$1;->a:Lcom/flurry/sdk/ae;

    iget-object v2, v2, Lcom/flurry/sdk/ae;->b:Lcom/flurry/sdk/al;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/dq;Ljava/lang/String;Lcom/flurry/sdk/al;)V

    return-void
.end method
