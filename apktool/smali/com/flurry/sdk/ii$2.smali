.class Lcom/flurry/sdk/ii$2;
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
.field final synthetic a:Lcom/flurry/sdk/ij;

.field final synthetic b:Lcom/flurry/sdk/ik;

.field final synthetic c:Lcom/flurry/sdk/ii;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ii;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/ik;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ii$2;->c:Lcom/flurry/sdk/ii;

    iput-object p2, p0, Lcom/flurry/sdk/ii$2;->a:Lcom/flurry/sdk/ij;

    iput-object p3, p0, Lcom/flurry/sdk/ii$2;->b:Lcom/flurry/sdk/ik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/kn;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ii$2;->a(Lcom/flurry/sdk/kn;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/kn;Ljava/lang/String;)V
    .locals 6
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

    const/16 v5, 0x12c

    const/4 v4, 0x3

    invoke-static {}, Lcom/flurry/sdk/ii;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pulse report to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ii$2;->a:Lcom/flurry/sdk/ij;

    invoke-virtual {v2}, Lcom/flurry/sdk/ij;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ii$2;->a:Lcom/flurry/sdk/ij;

    invoke-virtual {v2}, Lcom/flurry/sdk/ij;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", HTTP status code is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->h()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/sdk/ii$2;->b:Lcom/flurry/sdk/ik;

    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->c()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/ik;->a(I)V

    iget-object v1, p0, Lcom/flurry/sdk/ii$2;->b:Lcom/flurry/sdk/ik;

    iput v0, v1, Lcom/flurry/sdk/ik;->e:I

    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->f()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->j()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/ii;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout occured when trying to connect to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ii$2;->a:Lcom/flurry/sdk/ij;

    invoke-virtual {v2}, Lcom/flurry/sdk/ij;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->j()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/ii$2;->c:Lcom/flurry/sdk/ii;

    iget-object v1, p0, Lcom/flurry/sdk/ii$2;->b:Lcom/flurry/sdk/ik;

    iget-object v2, p0, Lcom/flurry/sdk/ii$2;->a:Lcom/flurry/sdk/ij;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ii;->a(Lcom/flurry/sdk/ii;Lcom/flurry/sdk/ik;Lcom/flurry/sdk/ij;)V

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/ii;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Manually managed http request timeout occured for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ii$2;->a:Lcom/flurry/sdk/ij;

    invoke-virtual {v2}, Lcom/flurry/sdk/ij;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/flurry/sdk/ii;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occured when trying to connect to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/ii$2;->a:Lcom/flurry/sdk/ij;

    invoke-virtual {v3}, Lcom/flurry/sdk/ij;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/ii$2;->c:Lcom/flurry/sdk/ii;

    iget-object v1, p0, Lcom/flurry/sdk/ii$2;->b:Lcom/flurry/sdk/ik;

    iget-object v2, p0, Lcom/flurry/sdk/ii$2;->a:Lcom/flurry/sdk/ij;

    invoke-static {v0, v1, v2, p2}, Lcom/flurry/sdk/ii;->a(Lcom/flurry/sdk/ii;Lcom/flurry/sdk/ik;Lcom/flurry/sdk/ij;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_3

    if-ge v0, v5, :cond_3

    iget-object v0, p0, Lcom/flurry/sdk/ii$2;->c:Lcom/flurry/sdk/ii;

    iget-object v1, p0, Lcom/flurry/sdk/ii$2;->b:Lcom/flurry/sdk/ik;

    iget-object v2, p0, Lcom/flurry/sdk/ii$2;->a:Lcom/flurry/sdk/ij;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ii;->b(Lcom/flurry/sdk/ii;Lcom/flurry/sdk/ik;Lcom/flurry/sdk/ij;)V

    goto :goto_1

    :cond_3
    if-lt v0, v5, :cond_4

    const/16 v1, 0x190

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/flurry/sdk/ii$2;->c:Lcom/flurry/sdk/ii;

    iget-object v1, p0, Lcom/flurry/sdk/ii$2;->b:Lcom/flurry/sdk/ik;

    iget-object v2, p0, Lcom/flurry/sdk/ii$2;->a:Lcom/flurry/sdk/ij;

    invoke-static {v0, v1, v2, p1}, Lcom/flurry/sdk/ii;->a(Lcom/flurry/sdk/ii;Lcom/flurry/sdk/ik;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/kn;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/flurry/sdk/ii;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/flurry/sdk/ii$2;->a:Lcom/flurry/sdk/ij;

    invoke-virtual {v2}, Lcom/flurry/sdk/ij;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " report failed sending to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ii$2;->a:Lcom/flurry/sdk/ij;

    invoke-virtual {v2}, Lcom/flurry/sdk/ij;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/ii$2;->c:Lcom/flurry/sdk/ii;

    iget-object v1, p0, Lcom/flurry/sdk/ii$2;->b:Lcom/flurry/sdk/ik;

    iget-object v2, p0, Lcom/flurry/sdk/ii$2;->a:Lcom/flurry/sdk/ij;

    invoke-static {v0, v1, v2, p2}, Lcom/flurry/sdk/ii;->a(Lcom/flurry/sdk/ii;Lcom/flurry/sdk/ik;Lcom/flurry/sdk/ij;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
