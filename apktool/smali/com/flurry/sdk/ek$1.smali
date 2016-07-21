.class Lcom/flurry/sdk/ek$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kn$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kn$a",
        "<[B",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ek$a;

.field final synthetic b:Lcom/flurry/sdk/ek;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ek;Lcom/flurry/sdk/ek$a;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ek$1;->b:Lcom/flurry/sdk/ek;

    iput-object p2, p0, Lcom/flurry/sdk/ek$1;->a:Lcom/flurry/sdk/ek$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/kn;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ek$1;->a(Lcom/flurry/sdk/kn;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/kn;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/kn",
            "<[B",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/flurry/sdk/eb;->a(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Lcom/flurry/sdk/eb;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ek$1;->a:Lcom/flurry/sdk/ek$a;

    invoke-interface {v1, v0}, Lcom/flurry/sdk/ek$a;->a(Ljava/lang/Long;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/ek$1;->a:Lcom/flurry/sdk/ek$a;

    invoke-interface {v1, v0, p2}, Lcom/flurry/sdk/ek$a;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/ek$1;->a:Lcom/flurry/sdk/ek$a;

    const/4 v1, -0x1

    const-string v2, "Post failed"

    invoke-interface {v0, v1, v2}, Lcom/flurry/sdk/ek$a;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
