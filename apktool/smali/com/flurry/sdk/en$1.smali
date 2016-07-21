.class Lcom/flurry/sdk/en$1;
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
.field final synthetic a:Lcom/flurry/sdk/en$a;

.field final synthetic b:Lcom/flurry/sdk/en;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/en;Lcom/flurry/sdk/en$a;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/en$1;->b:Lcom/flurry/sdk/en;

    iput-object p2, p0, Lcom/flurry/sdk/en$1;->a:Lcom/flurry/sdk/en$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/kn;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/en$1;->a(Lcom/flurry/sdk/kn;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/kn;Ljava/lang/String;)V
    .locals 4
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

    const/16 v3, 0x191

    const/4 v2, -0x1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/en$1;->b:Lcom/flurry/sdk/en;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/en;->b(Ljava/lang/String;)Lcom/flurry/sdk/eg;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/eg;->c()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/en$1;->a:Lcom/flurry/sdk/en$a;

    invoke-interface {v1, v0}, Lcom/flurry/sdk/en$a;->a(Lcom/flurry/sdk/eg;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/en$1;->a:Lcom/flurry/sdk/en$a;

    invoke-interface {v0, v2, p2}, Lcom/flurry/sdk/en$a;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->h()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/en$1;->a:Lcom/flurry/sdk/en$a;

    const-string v1, "Not Authorized"

    invoke-interface {v0, v3, v1}, Lcom/flurry/sdk/en$a;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/en$1;->a:Lcom/flurry/sdk/en$a;

    const-string v1, "Request token failed."

    invoke-interface {v0, v2, v1}, Lcom/flurry/sdk/en$a;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
