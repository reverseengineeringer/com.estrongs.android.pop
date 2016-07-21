.class Lcom/flurry/sdk/iy$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kn$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kn$a",
        "<[B",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/flurry/sdk/iy;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/iy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/iy$1;->c:Lcom/flurry/sdk/iy;

    iput-object p2, p0, Lcom/flurry/sdk/iy$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/iy$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/kn;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/iy$1;->a(Lcom/flurry/sdk/kn;Ljava/lang/Void;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/kn;Ljava/lang/Void;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/kn",
            "<[B",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x3

    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->h()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/flurry/sdk/iy;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Analytics report sent."

    invoke-static {v1, v2}, Lcom/flurry/sdk/kg;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/iy;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FlurryDataSender: report "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/iy$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sent. HTTP response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kg;->c()I

    move-result v1

    if-gt v1, v4, :cond_0

    invoke-static {}, Lcom/flurry/sdk/kg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/iy$1$1;

    invoke-direct {v2, p0, v0}, Lcom/flurry/sdk/iy$1$1;-><init>(Lcom/flurry/sdk/iy$1;I)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/iy$1;->c:Lcom/flurry/sdk/iy;

    iget-object v2, p0, Lcom/flurry/sdk/iy$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/sdk/iy$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/flurry/sdk/iy;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/flurry/sdk/iy$1;->c:Lcom/flurry/sdk/iy;

    invoke-static {v0}, Lcom/flurry/sdk/iy;->a(Lcom/flurry/sdk/iy;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/iy$1;->c:Lcom/flurry/sdk/iy;

    iget-object v1, p0, Lcom/flurry/sdk/iy$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/iy$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/iy;->a(Lcom/flurry/sdk/iy;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
