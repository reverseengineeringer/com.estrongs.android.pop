.class public Lcom/flurry/sdk/fy$a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/flurry/sdk/fy;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/flurry/sdk/fy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fy;-><init>(Lcom/flurry/sdk/fy$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/fy$a;->a:Lcom/flurry/sdk/fy;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/sdk/fy$a;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fy$a;->a:Lcom/flurry/sdk/fy;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fy;->a(Lcom/flurry/sdk/fy;I)I

    return-object p0
.end method

.method public a(Lcom/flurry/sdk/fz;)Lcom/flurry/sdk/fy$a;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fy$a;->a:Lcom/flurry/sdk/fy;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fy;->a(Lcom/flurry/sdk/fy;Lcom/flurry/sdk/fz;)Lcom/flurry/sdk/fz;

    return-object p0
.end method

.method public a(Lcom/flurry/sdk/jx;)Lcom/flurry/sdk/fy$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jx",
            "<",
            "Lcom/flurry/sdk/fs;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/fy$a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/fy$a;->a:Lcom/flurry/sdk/fy;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fy;->a(Lcom/flurry/sdk/fy;Lcom/flurry/sdk/jx;)Lcom/flurry/sdk/jx;

    return-object p0
.end method

.method public a()Lcom/flurry/sdk/fy;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fy$a;->a:Lcom/flurry/sdk/fy;

    return-object v0
.end method

.method public b(I)Lcom/flurry/sdk/fy$a;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fy$a;->a:Lcom/flurry/sdk/fy;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fy;->b(Lcom/flurry/sdk/fy;I)I

    return-object p0
.end method

.method public b(Lcom/flurry/sdk/jx;)Lcom/flurry/sdk/fy$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jx",
            "<",
            "Lcom/flurry/sdk/ft;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/fy$a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/fy$a;->a:Lcom/flurry/sdk/fy;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fy;->b(Lcom/flurry/sdk/fy;Lcom/flurry/sdk/jx;)Lcom/flurry/sdk/jx;

    return-object p0
.end method
