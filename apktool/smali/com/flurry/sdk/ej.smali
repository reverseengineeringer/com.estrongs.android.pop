.class public Lcom/flurry/sdk/ej;
.super Lcom/flurry/sdk/el;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/el;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/sdk/ej;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()Lcom/flurry/sdk/kp$a;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/kp$a;->b:Lcom/flurry/sdk/kp$a;

    return-object v0
.end method

.method public a(Ljava/lang/String;ILcom/flurry/sdk/ej$a;)V
    .locals 2

    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    invoke-interface {p3}, Lcom/flurry/sdk/ej$a;->a()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/flurry/sdk/kn;

    invoke-direct {v0}, Lcom/flurry/sdk/kn;-><init>()V

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/kn;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/ej;->a()Lcom/flurry/sdk/kp$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/kp$a;)V

    const v1, 0x9c40

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->d(I)V

    new-instance v1, Lcom/flurry/sdk/dw;

    invoke-direct {v1}, Lcom/flurry/sdk/dw;-><init>()V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->b(Lcom/flurry/sdk/lb;)V

    new-instance v1, Lcom/flurry/sdk/ej$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/flurry/sdk/ej$1;-><init>(Lcom/flurry/sdk/ej;Lcom/flurry/sdk/ej$a;I)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/kn$a;)V

    invoke-static {}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/jq;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/jq;->a(Ljava/lang/Object;Lcom/flurry/sdk/lz;)V

    goto :goto_0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ej;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/jq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/jq;->a(Ljava/lang/Object;)V

    return-void
.end method
