.class Lcom/flurry/sdk/ew$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/er$a;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ew;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ew;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ew$4;->a:Lcom/flurry/sdk/ew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0x191

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/ew$4;->a:Lcom/flurry/sdk/ew;

    invoke-virtual {v0}, Lcom/flurry/sdk/ew;->c()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/flurry/sdk/ed;->h:Lcom/flurry/sdk/ed;

    iget-object v1, p0, Lcom/flurry/sdk/ew$4;->a:Lcom/flurry/sdk/ew;

    invoke-static {v1}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew;)I

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/flurry/sdk/ec;->a(Lcom/flurry/sdk/ed;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/ew$4;->a:Lcom/flurry/sdk/ew;

    invoke-static {v0, p1}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew;Ljava/util/List;)V

    return-void
.end method
