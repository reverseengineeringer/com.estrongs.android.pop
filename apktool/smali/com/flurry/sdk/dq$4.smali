.class Lcom/flurry/sdk/dq$4;
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

.field final synthetic b:Lcom/flurry/sdk/au;

.field final synthetic c:Lcom/flurry/sdk/dq;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dq;Ljava/lang/String;Lcom/flurry/sdk/au;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/dq$4;->c:Lcom/flurry/sdk/dq;

    iput-object p2, p0, Lcom/flurry/sdk/dq$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/dq$4;->b:Lcom/flurry/sdk/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/kn;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/dq$4;->a(Lcom/flurry/sdk/kn;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/kn;Ljava/lang/String;)V
    .locals 5
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

    invoke-static {}, Lcom/flurry/sdk/dq;->f()Ljava/lang/String;

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

    iget-object v3, p0, Lcom/flurry/sdk/dq$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/dq$4;->b:Lcom/flurry/sdk/au;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/au;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/dq$4;->c:Lcom/flurry/sdk/dq;

    invoke-static {v0}, Lcom/flurry/sdk/dq;->l(Lcom/flurry/sdk/dq;)Lcom/flurry/sdk/s;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/fc;->a(Lcom/flurry/sdk/s;)V

    iget-object v0, p0, Lcom/flurry/sdk/dq$4;->c:Lcom/flurry/sdk/dq;

    invoke-virtual {v0}, Lcom/flurry/sdk/dq;->d()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/dq$4;->c:Lcom/flurry/sdk/dq;

    iget-object v1, p0, Lcom/flurry/sdk/dq$4;->b:Lcom/flurry/sdk/au;

    sget-object v2, Lcom/flurry/sdk/ba;->j:Lcom/flurry/sdk/ba;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/dq;Lcom/flurry/sdk/au;Lcom/flurry/sdk/ba;)V

    iget-object v0, p0, Lcom/flurry/sdk/dq$4;->c:Lcom/flurry/sdk/dq;

    invoke-virtual {v0}, Lcom/flurry/sdk/dq;->d()V

    goto :goto_0
.end method
