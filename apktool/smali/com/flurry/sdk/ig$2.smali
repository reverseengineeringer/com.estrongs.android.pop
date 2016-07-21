.class Lcom/flurry/sdk/ig$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kn$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kn$a",
        "<[B[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Lcom/flurry/sdk/ig;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ig;JZ)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ig$2;->c:Lcom/flurry/sdk/ig;

    iput-wide p2, p0, Lcom/flurry/sdk/ig$2;->a:J

    iput-boolean p4, p0, Lcom/flurry/sdk/ig$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/kn;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ig$2;->a(Lcom/flurry/sdk/kn;[B)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/kn;[B)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/kn",
            "<[B[B>;[B)V"
        }
    .end annotation

    const-wide/16 v10, 0x2710

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x3

    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->h()I

    move-result v4

    invoke-static {}, Lcom/flurry/sdk/ig;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proton config request: HTTP status code is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v0, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x190

    if-eq v4, v0, :cond_0

    const/16 v0, 0x196

    if-eq v4, v0, :cond_0

    const/16 v0, 0x19c

    if-eq v4, v0, :cond_0

    const/16 v0, 0x19f

    if-ne v4, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ig$2;->c:Lcom/flurry/sdk/ig;

    invoke-static {v0, v10, v11}, Lcom/flurry/sdk/ig;->a(Lcom/flurry/sdk/ig;J)J

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v2, Lcom/flurry/sdk/ig$2$1;

    invoke-direct {v2, p0, p2}, Lcom/flurry/sdk/ig$2$1;-><init>(Lcom/flurry/sdk/ig$2;[B)V

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ig$2;->c:Lcom/flurry/sdk/ig;

    invoke-static {v0}, Lcom/flurry/sdk/ig;->e(Lcom/flurry/sdk/ig;)Lcom/flurry/sdk/kk;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/kk;->d([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ht;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/flurry/sdk/ig$2;->c:Lcom/flurry/sdk/ig;

    invoke-static {v2, v0}, Lcom/flurry/sdk/ig;->a(Lcom/flurry/sdk/ig;Lcom/flurry/sdk/ht;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    :cond_3
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/flurry/sdk/ig$2;->c:Lcom/flurry/sdk/ig;

    invoke-static {v2, v10, v11}, Lcom/flurry/sdk/ig;->a(Lcom/flurry/sdk/ig;J)J

    iget-object v2, p0, Lcom/flurry/sdk/ig$2;->c:Lcom/flurry/sdk/ig;

    iget-wide v6, p0, Lcom/flurry/sdk/ig$2;->a:J

    invoke-static {v2, v6, v7}, Lcom/flurry/sdk/ig;->b(Lcom/flurry/sdk/ig;J)J

    iget-object v2, p0, Lcom/flurry/sdk/ig$2;->c:Lcom/flurry/sdk/ig;

    iget-boolean v3, p0, Lcom/flurry/sdk/ig$2;->b:Z

    invoke-static {v2, v3}, Lcom/flurry/sdk/ig;->a(Lcom/flurry/sdk/ig;Z)Z

    iget-object v2, p0, Lcom/flurry/sdk/ig$2;->c:Lcom/flurry/sdk/ig;

    invoke-static {v2, v0}, Lcom/flurry/sdk/ig;->b(Lcom/flurry/sdk/ig;Lcom/flurry/sdk/ht;)Lcom/flurry/sdk/ht;

    iget-object v2, p0, Lcom/flurry/sdk/ig$2;->c:Lcom/flurry/sdk/ig;

    invoke-static {v2}, Lcom/flurry/sdk/ig;->f(Lcom/flurry/sdk/ig;)V

    iget-object v2, p0, Lcom/flurry/sdk/ig$2;->c:Lcom/flurry/sdk/ig;

    invoke-static {v2}, Lcom/flurry/sdk/ig;->g(Lcom/flurry/sdk/ig;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/flurry/sdk/ig$2;->c:Lcom/flurry/sdk/ig;

    invoke-static {v2, v9}, Lcom/flurry/sdk/ig;->b(Lcom/flurry/sdk/ig;Z)Z

    iget-object v2, p0, Lcom/flurry/sdk/ig$2;->c:Lcom/flurry/sdk/ig;

    const-string v3, "flurry.session_start"

    invoke-static {v2, v3, v1}, Lcom/flurry/sdk/ig;->a(Lcom/flurry/sdk/ig;Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    iget-object v1, p0, Lcom/flurry/sdk/ig$2;->c:Lcom/flurry/sdk/ig;

    invoke-static {v1}, Lcom/flurry/sdk/ig;->h(Lcom/flurry/sdk/ig;)V

    :cond_5
    move-object v1, v0

    :cond_6
    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/ig$2;->c:Lcom/flurry/sdk/ig;

    invoke-static {v0}, Lcom/flurry/sdk/ig;->i(Lcom/flurry/sdk/ig;)J

    move-result-wide v0

    shl-long v2, v0, v9

    const/16 v0, 0x1ad

    if-ne v4, v0, :cond_7

    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/kn;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/ig;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Server returned retry time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v1, v4}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_2
    iget-object v2, p0, Lcom/flurry/sdk/ig$2;->c:Lcom/flurry/sdk/ig;

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ig;->a(Lcom/flurry/sdk/ig;J)J

    invoke-static {}, Lcom/flurry/sdk/ig;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proton config request failed, backing off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ig$2;->c:Lcom/flurry/sdk/ig;

    invoke-static {v2}, Lcom/flurry/sdk/ig;->i(Lcom/flurry/sdk/ig;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ig$2;->c:Lcom/flurry/sdk/ig;

    invoke-static {v1}, Lcom/flurry/sdk/ig;->j(Lcom/flurry/sdk/ig;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ig$2;->c:Lcom/flurry/sdk/ig;

    invoke-static {v2}, Lcom/flurry/sdk/ig;->i(Lcom/flurry/sdk/ig;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x5

    invoke-static {}, Lcom/flurry/sdk/ig;->e()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to decode proton config response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/flurry/sdk/ig;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Server returned nonsensical retry time"

    invoke-static {v8, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-wide v0, v2

    goto :goto_2
.end method
