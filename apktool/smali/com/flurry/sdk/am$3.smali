.class Lcom/flurry/sdk/am$3;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/am;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/am;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/am$3;->a:Lcom/flurry/sdk/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/kn;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/am$3;->a(Lcom/flurry/sdk/kn;Ljava/lang/Void;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/kn;Ljava/lang/Void;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/kn",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    const/4 v12, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v10, 0x0

    iget-object v0, p0, Lcom/flurry/sdk/am$3;->a:Lcom/flurry/sdk/am;

    invoke-virtual {v0}, Lcom/flurry/sdk/am;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->h()I

    move-result v0

    invoke-static {}, Lcom/flurry/sdk/am;->i()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Downloader: HTTP HEAD status code is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " for url: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/flurry/sdk/am$3;->a:Lcom/flurry/sdk/am;

    invoke-static {v4}, Lcom/flurry/sdk/am;->f(Lcom/flurry/sdk/am;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v3, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flurry/sdk/am$3;->a:Lcom/flurry/sdk/am;

    iget-object v3, p0, Lcom/flurry/sdk/am$3;->a:Lcom/flurry/sdk/am;

    invoke-static {v3, p1}, Lcom/flurry/sdk/am;->a(Lcom/flurry/sdk/am;Lcom/flurry/sdk/kp;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/flurry/sdk/am;->a(Lcom/flurry/sdk/am;J)J

    const-string v0, "Accept-Ranges"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/kn;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/flurry/sdk/am$3;->a:Lcom/flurry/sdk/am;

    invoke-static {v3}, Lcom/flurry/sdk/am;->d(Lcom/flurry/sdk/am;)J

    move-result-wide v4

    cmp-long v3, v4, v10

    if-lez v3, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/flurry/sdk/am$3;->a:Lcom/flurry/sdk/am;

    const-string v4, "bytes"

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v3, v0}, Lcom/flurry/sdk/am;->b(Lcom/flurry/sdk/am;Z)Z

    iget-object v3, p0, Lcom/flurry/sdk/am$3;->a:Lcom/flurry/sdk/am;

    iget-object v0, p0, Lcom/flurry/sdk/am$3;->a:Lcom/flurry/sdk/am;

    invoke-static {v0}, Lcom/flurry/sdk/am;->d(Lcom/flurry/sdk/am;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/flurry/sdk/am$3;->a:Lcom/flurry/sdk/am;

    invoke-static {v0}, Lcom/flurry/sdk/am;->i(Lcom/flurry/sdk/am;)J

    move-result-wide v6

    div-long/2addr v4, v6

    iget-object v0, p0, Lcom/flurry/sdk/am$3;->a:Lcom/flurry/sdk/am;

    invoke-static {v0}, Lcom/flurry/sdk/am;->d(Lcom/flurry/sdk/am;)J

    move-result-wide v6

    iget-object v0, p0, Lcom/flurry/sdk/am$3;->a:Lcom/flurry/sdk/am;

    invoke-static {v0}, Lcom/flurry/sdk/am;->i(Lcom/flurry/sdk/am;)J

    move-result-wide v8

    rem-long/2addr v6, v8

    cmp-long v0, v6, v10

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    int-to-long v0, v0

    add-long/2addr v0, v4

    long-to-int v0, v0

    invoke-static {v3, v0}, Lcom/flurry/sdk/am;->a(Lcom/flurry/sdk/am;I)I

    :goto_2
    iget-object v0, p0, Lcom/flurry/sdk/am$3;->a:Lcom/flurry/sdk/am;

    invoke-static {v0}, Lcom/flurry/sdk/am;->e(Lcom/flurry/sdk/am;)J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/flurry/sdk/am$3;->a:Lcom/flurry/sdk/am;

    invoke-static {v0}, Lcom/flurry/sdk/am;->d(Lcom/flurry/sdk/am;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/flurry/sdk/am$3;->a:Lcom/flurry/sdk/am;

    invoke-static {v2}, Lcom/flurry/sdk/am;->e(Lcom/flurry/sdk/am;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    invoke-static {}, Lcom/flurry/sdk/am;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloader: Size limit exceeded -- limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/am$3;->a:Lcom/flurry/sdk/am;

    invoke-static {v2}, Lcom/flurry/sdk/am;->e(Lcom/flurry/sdk/am;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", content-length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/am$3;->a:Lcom/flurry/sdk/am;

    invoke-static {v2}, Lcom/flurry/sdk/am;->d(Lcom/flurry/sdk/am;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/am$3$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/am$3$1;-><init>(Lcom/flurry/sdk/am$3;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/am$3;->a:Lcom/flurry/sdk/am;

    invoke-static {v0, v1}, Lcom/flurry/sdk/am;->a(Lcom/flurry/sdk/am;I)I

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/am$3$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/am$3$2;-><init>(Lcom/flurry/sdk/am$3;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/am$3$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/am$3$3;-><init>(Lcom/flurry/sdk/am$3;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
