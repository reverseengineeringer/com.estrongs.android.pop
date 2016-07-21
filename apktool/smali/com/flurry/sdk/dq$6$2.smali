.class Lcom/flurry/sdk/dq$6$2;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ds;

.field final synthetic b:Lcom/flurry/sdk/dq$6;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dq$6;Lcom/flurry/sdk/ds;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/dq$6$2;->b:Lcom/flurry/sdk/dq$6;

    iput-object p2, p0, Lcom/flurry/sdk/dq$6$2;->a:Lcom/flurry/sdk/ds;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/dq$6$2;->b:Lcom/flurry/sdk/dq$6;

    iget-object v0, v0, Lcom/flurry/sdk/dq$6;->a:Lcom/flurry/sdk/dq;

    iget-object v1, p0, Lcom/flurry/sdk/dq$6$2;->a:Lcom/flurry/sdk/ds;

    iget-object v1, v1, Lcom/flurry/sdk/ds;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/dq;Ljava/util/List;)V

    return-void
.end method
