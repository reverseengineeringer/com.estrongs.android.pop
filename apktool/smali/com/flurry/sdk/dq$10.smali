.class Lcom/flurry/sdk/dq$10;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dq;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/dq$10;->a:Lcom/flurry/sdk/dq;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/dq;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Skip timer expired. Start streaming now."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/dq$10;->a:Lcom/flurry/sdk/dq;

    invoke-static {v0}, Lcom/flurry/sdk/dq;->j(Lcom/flurry/sdk/dq;)V

    return-void
.end method
