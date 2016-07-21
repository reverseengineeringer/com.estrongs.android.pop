.class Lcom/flurry/sdk/gs$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kn$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kn$a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/sdk/gs;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gs;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gs$5;->b:Lcom/flurry/sdk/gs;

    iput-object p2, p0, Lcom/flurry/sdk/gs$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/kn;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/gs$5;->a(Lcom/flurry/sdk/kn;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/kn;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/kn",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->h()I

    move-result v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/flurry/sdk/gs$5;->b:Lcom/flurry/sdk/gs;

    invoke-static {v2}, Lcom/flurry/sdk/gs;->c(Lcom/flurry/sdk/gs;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prerender: HTTP status code is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " for url: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/flurry/sdk/gs$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gs$5;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/sdk/ma;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gs$5;->b:Lcom/flurry/sdk/gs;

    invoke-virtual {v1}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    sget-object v2, Lcom/flurry/sdk/bb;->f:Lcom/flurry/sdk/bb;

    invoke-virtual {v2}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/au;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gs$5;->b:Lcom/flurry/sdk/gs;

    sget-object v2, Lcom/flurry/sdk/bb;->f:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/gs$5;->b:Lcom/flurry/sdk/gs;

    invoke-virtual {v4}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    iget-object v1, p0, Lcom/flurry/sdk/gs$5;->b:Lcom/flurry/sdk/gs;

    invoke-virtual {v1}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    sget-object v2, Lcom/flurry/sdk/bb;->f:Lcom/flurry/sdk/bb;

    invoke-virtual {v2}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/au;->f(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/gs$5$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/flurry/sdk/gs$5$1;-><init>(Lcom/flurry/sdk/gs$5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/gs$5$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gs$5$2;-><init>(Lcom/flurry/sdk/gs$5;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
