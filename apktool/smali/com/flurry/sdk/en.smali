.class public Lcom/flurry/sdk/en;
.super Lcom/flurry/sdk/el;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/el;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/flurry/sdk/kp$a;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/kp$a;->c:Lcom/flurry/sdk/kp$a;

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/en$a;)V
    .locals 3

    new-instance v0, Lcom/flurry/sdk/kn;

    invoke-direct {v0}, Lcom/flurry/sdk/kn;-><init>()V

    invoke-virtual {p0}, Lcom/flurry/sdk/en;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/en;->a()Lcom/flurry/sdk/kp$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/kp$a;)V

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->d(I)V

    const-string v1, "Content-Type"

    invoke-static {}, Lcom/flurry/sdk/em;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kn;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/flurry/sdk/lc;

    invoke-direct {v1}, Lcom/flurry/sdk/lc;-><init>()V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->b(Lcom/flurry/sdk/lb;)V

    new-instance v1, Lcom/flurry/sdk/lc;

    invoke-direct {v1}, Lcom/flurry/sdk/lc;-><init>()V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/lb;)V

    sget-object v1, Lcom/flurry/sdk/en;->a:Lcom/flurry/sdk/eg;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/en;->a(Lcom/flurry/sdk/kn;Lcom/flurry/sdk/eg;)V

    new-instance v1, Lcom/flurry/sdk/en$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/en$1;-><init>(Lcom/flurry/sdk/en;Lcom/flurry/sdk/en$a;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/kn$a;)V

    invoke-static {}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/jq;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/jq;->a(Ljava/lang/Object;Lcom/flurry/sdk/lz;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/ea;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/jq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/jq;->a(Ljava/lang/Object;)V

    return-void
.end method
