.class public Lcom/flurry/sdk/ga$a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/flurry/sdk/ga;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/flurry/sdk/ga;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/sdk/ga;-><init>(Lcom/flurry/sdk/ga$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/ga$a;->a:Lcom/flurry/sdk/ga;

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/fs;)Lcom/flurry/sdk/ga$a;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ga$a;->a:Lcom/flurry/sdk/ga;

    invoke-static {v0, p1}, Lcom/flurry/sdk/ga;->a(Lcom/flurry/sdk/ga;Lcom/flurry/sdk/fs;)Lcom/flurry/sdk/fs;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/flurry/sdk/ga$a;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ga$a;->a:Lcom/flurry/sdk/ga;

    invoke-static {v0, p1}, Lcom/flurry/sdk/ga;->a(Lcom/flurry/sdk/ga;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/flurry/sdk/ga;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ga$a;->a:Lcom/flurry/sdk/ga;

    return-object v0
.end method
