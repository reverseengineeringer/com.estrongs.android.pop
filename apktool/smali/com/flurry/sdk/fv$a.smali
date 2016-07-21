.class public Lcom/flurry/sdk/fv$a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/flurry/sdk/fv;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/flurry/sdk/fv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fv;-><init>(Lcom/flurry/sdk/fv$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/fv$a;->a:Lcom/flurry/sdk/fv;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/flurry/sdk/fv$a;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fv$a;->a:Lcom/flurry/sdk/fv;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fv;->a(Lcom/flurry/sdk/fv;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/flurry/sdk/fv;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fv$a;->a:Lcom/flurry/sdk/fv;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/flurry/sdk/fv$a;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fv$a;->a:Lcom/flurry/sdk/fv;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fv;->b(Lcom/flurry/sdk/fv;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method
