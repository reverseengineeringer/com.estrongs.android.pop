.class public Lcom/flurry/sdk/fm$a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/flurry/sdk/fm;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/flurry/sdk/fm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fm;-><init>(Lcom/flurry/sdk/fm$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/fm$a;->a:Lcom/flurry/sdk/fm;

    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/fm$a;
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/fm$a;->a:Lcom/flurry/sdk/fm;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/sdk/fm;->b(Lcom/flurry/sdk/fm;Z)Z

    return-object p0
.end method

.method public a(I)Lcom/flurry/sdk/fm$a;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fm$a;->a:Lcom/flurry/sdk/fm;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fm;->a(Lcom/flurry/sdk/fm;I)I

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/flurry/sdk/fm$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/fu;",
            ">;)",
            "Lcom/flurry/sdk/fm$a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/fm$a;->a:Lcom/flurry/sdk/fm;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fm;->a(Lcom/flurry/sdk/fm;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public a(Z)Lcom/flurry/sdk/fm$a;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fm$a;->a:Lcom/flurry/sdk/fm;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fm;->a(Lcom/flurry/sdk/fm;Z)Z

    return-object p0
.end method

.method public b()Lcom/flurry/sdk/fm;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fm$a;->a:Lcom/flurry/sdk/fm;

    return-object v0
.end method
