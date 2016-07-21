.class public Lcom/flurry/sdk/fu$a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/flurry/sdk/fu;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/flurry/sdk/fu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fu;-><init>(Lcom/flurry/sdk/fu$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/fu$a;->a:Lcom/flurry/sdk/fu;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/sdk/fu$a;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fu$a;->a:Lcom/flurry/sdk/fu;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fu;->a(Lcom/flurry/sdk/fu;I)I

    return-object p0
.end method

.method public a(Lcom/flurry/sdk/fw;)Lcom/flurry/sdk/fu$a;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fu$a;->a:Lcom/flurry/sdk/fu;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fu;->a(Lcom/flurry/sdk/fu;Lcom/flurry/sdk/fw;)Lcom/flurry/sdk/fw;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/flurry/sdk/fu$a;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fu$a;->a:Lcom/flurry/sdk/fu;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fu;->a(Lcom/flurry/sdk/fu;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/flurry/sdk/fu;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fu$a;->a:Lcom/flurry/sdk/fu;

    return-object v0
.end method
