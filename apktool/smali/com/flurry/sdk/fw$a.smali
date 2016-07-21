.class public Lcom/flurry/sdk/fw$a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/flurry/sdk/fw;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/flurry/sdk/fw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fw;-><init>(Lcom/flurry/sdk/fw$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/fw$a;->a:Lcom/flurry/sdk/fw;

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/fp;)Lcom/flurry/sdk/fw$a;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fw$a;->a:Lcom/flurry/sdk/fw;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fw;->a(Lcom/flurry/sdk/fw;Lcom/flurry/sdk/fp;)Lcom/flurry/sdk/fp;

    return-object p0
.end method

.method public a(Lcom/flurry/sdk/fv;)Lcom/flurry/sdk/fw$a;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fw$a;->a:Lcom/flurry/sdk/fw;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fw;->a(Lcom/flurry/sdk/fw;Lcom/flurry/sdk/fv;)Lcom/flurry/sdk/fv;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/flurry/sdk/fw$a;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fw$a;->a:Lcom/flurry/sdk/fw;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fw;->a(Lcom/flurry/sdk/fw;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/flurry/sdk/fw$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/fw$a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/fw$a;->a:Lcom/flurry/sdk/fw;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fw;->a(Lcom/flurry/sdk/fw;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public a()Lcom/flurry/sdk/fw;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fw$a;->a:Lcom/flurry/sdk/fw;

    return-object v0
.end method

.method public b(Ljava/util/List;)Lcom/flurry/sdk/fw$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/fw$a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/fw$a;->a:Lcom/flurry/sdk/fw;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fw;->b(Lcom/flurry/sdk/fw;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public c(Ljava/util/List;)Lcom/flurry/sdk/fw$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/fw$a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/fw$a;->a:Lcom/flurry/sdk/fw;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fw;->c(Lcom/flurry/sdk/fw;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public d(Ljava/util/List;)Lcom/flurry/sdk/fw$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/fx;",
            ">;)",
            "Lcom/flurry/sdk/fw$a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/fw$a;->a:Lcom/flurry/sdk/fw;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fw;->d(Lcom/flurry/sdk/fw;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method
