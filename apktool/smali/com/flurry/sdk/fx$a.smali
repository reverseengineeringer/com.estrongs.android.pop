.class public Lcom/flurry/sdk/fx$a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/flurry/sdk/fx;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/flurry/sdk/fx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fx;-><init>(Lcom/flurry/sdk/fx$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/fx$a;->a:Lcom/flurry/sdk/fx;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/sdk/fx$a;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fx$a;->a:Lcom/flurry/sdk/fx;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fx;->a(Lcom/flurry/sdk/fx;I)I

    return-object p0
.end method

.method public a(Lcom/flurry/sdk/fq;)Lcom/flurry/sdk/fx$a;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fx$a;->a:Lcom/flurry/sdk/fx;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fx;->a(Lcom/flurry/sdk/fx;Lcom/flurry/sdk/fq;)Lcom/flurry/sdk/fq;

    return-object p0
.end method

.method public a(Lcom/flurry/sdk/fy;)Lcom/flurry/sdk/fx$a;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fx$a;->a:Lcom/flurry/sdk/fx;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fx;->a(Lcom/flurry/sdk/fx;Lcom/flurry/sdk/fy;)Lcom/flurry/sdk/fy;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/flurry/sdk/fx$a;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fx$a;->a:Lcom/flurry/sdk/fx;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fx;->a(Lcom/flurry/sdk/fx;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/flurry/sdk/fx;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fx$a;->a:Lcom/flurry/sdk/fx;

    return-object v0
.end method
