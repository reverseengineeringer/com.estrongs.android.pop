.class Lcom/flurry/sdk/er$1;
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
.field final synthetic a:Lcom/flurry/sdk/er$a;

.field final synthetic b:Lcom/flurry/sdk/er;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/er;Lcom/flurry/sdk/er$a;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/er$1;->b:Lcom/flurry/sdk/er;

    iput-object p2, p0, Lcom/flurry/sdk/er$1;->a:Lcom/flurry/sdk/er$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/kn;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/er$1;->a(Lcom/flurry/sdk/kn;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/kn;Ljava/lang/String;)V
    .locals 4
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

    const/16 v3, 0x191

    const/4 v2, -0x1

    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/flurry/sdk/eb;->a(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    invoke-static {p2}, Lcom/flurry/sdk/eb;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/er$1;->a:Lcom/flurry/sdk/er$a;

    invoke-interface {v1, v0}, Lcom/flurry/sdk/er$a;->a(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/er$1;->a:Lcom/flurry/sdk/er$a;

    invoke-interface {v0, v2, p2}, Lcom/flurry/sdk/er$a;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/er$1;->a:Lcom/flurry/sdk/er$a;

    invoke-interface {v1, v0, p2}, Lcom/flurry/sdk/er$a;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->h()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/flurry/sdk/er$1;->a:Lcom/flurry/sdk/er$a;

    const-string v1, "Not Authorized"

    invoke-interface {v0, v3, v1}, Lcom/flurry/sdk/er$a;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/er$1;->a:Lcom/flurry/sdk/er$a;

    const-string v1, "Invalid user info"

    invoke-interface {v0, v2, v1}, Lcom/flurry/sdk/er$a;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
