.class Lcom/flurry/sdk/dq$2;
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

.field final synthetic b:Lcom/flurry/sdk/fm;

.field final synthetic c:I

.field final synthetic d:Lcom/flurry/sdk/au;

.field final synthetic e:Lcom/flurry/sdk/dq;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dq;Ljava/lang/String;Lcom/flurry/sdk/fm;ILcom/flurry/sdk/au;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/dq$2;->e:Lcom/flurry/sdk/dq;

    iput-object p2, p0, Lcom/flurry/sdk/dq$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/dq$2;->b:Lcom/flurry/sdk/fm;

    iput p4, p0, Lcom/flurry/sdk/dq$2;->c:I

    iput-object p5, p0, Lcom/flurry/sdk/dq$2;->d:Lcom/flurry/sdk/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/kn;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/dq$2;->a(Lcom/flurry/sdk/kn;Ljava/lang/String;)V

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

    const/4 v4, 0x3

    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->h()I

    move-result v0

    invoke-static {}, Lcom/flurry/sdk/dq;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VAST resolver: HTTP status code is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for url: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/flurry/sdk/dq$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/flurry/sdk/dq;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VAST resolver response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/dq$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/dq$2;->b:Lcom/flurry/sdk/fm;

    invoke-static {p2}, Lcom/flurry/sdk/fo;->a(Ljava/lang/String;)Lcom/flurry/sdk/fm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/fm;->a(Lcom/flurry/sdk/fm;Lcom/flurry/sdk/fm;)Lcom/flurry/sdk/fm;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/flurry/sdk/dq;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VAST resolver failed for frame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/flurry/sdk/dq$2;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/dq$2;->d:Lcom/flurry/sdk/au;

    iget v1, p0, Lcom/flurry/sdk/dq$2;->c:I

    new-instance v2, Lcom/flurry/sdk/fm$a;

    invoke-direct {v2}, Lcom/flurry/sdk/fm$a;-><init>()V

    invoke-virtual {v2}, Lcom/flurry/sdk/fm$a;->a()Lcom/flurry/sdk/fm$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/fm$a;->b()Lcom/flurry/sdk/fm;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/au;->a(ILcom/flurry/sdk/fm;)V

    :goto_0
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dq$2$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dq$2$1;-><init>(Lcom/flurry/sdk/dq$2;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/flurry/sdk/dq;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VAST resolver successful for frame: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/flurry/sdk/dq$2;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/dq$2;->d:Lcom/flurry/sdk/au;

    iget v2, p0, Lcom/flurry/sdk/dq$2;->c:I

    invoke-virtual {v1, v2, v0}, Lcom/flurry/sdk/au;->a(ILcom/flurry/sdk/fm;)V

    goto :goto_0
.end method
