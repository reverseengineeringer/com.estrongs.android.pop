.class Lcom/flurry/sdk/eh$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kn$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kn$a",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/eh$a;

.field final synthetic b:Lcom/flurry/sdk/eh;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/eh;Lcom/flurry/sdk/eh$a;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/eh$1;->b:Lcom/flurry/sdk/eh;

    iput-object p2, p0, Lcom/flurry/sdk/eh$1;->a:Lcom/flurry/sdk/eh$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/kn;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/eh$1;->a(Lcom/flurry/sdk/kn;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/kn;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/kn",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/eh$1;->b:Lcom/flurry/sdk/eh;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/eh;->b(Ljava/lang/String;)Lcom/flurry/sdk/eg;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/eh$1;->a:Lcom/flurry/sdk/eh$a;

    invoke-interface {v1, v0}, Lcom/flurry/sdk/eh$a;->a(Lcom/flurry/sdk/eg;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/eh$1;->a:Lcom/flurry/sdk/eh$a;

    const/4 v1, -0x1

    const-string v2, "Access token failed"

    invoke-interface {v0, v1, v2}, Lcom/flurry/sdk/eh$a;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
