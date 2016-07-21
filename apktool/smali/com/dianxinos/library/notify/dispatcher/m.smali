.class Lcom/dianxinos/library/notify/dispatcher/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dianxinos/library/notify/d/d;


# instance fields
.field final synthetic a:Lcom/dianxinos/library/notify/dispatcher/b;


# direct methods
.method constructor <init>(Lcom/dianxinos/library/notify/dispatcher/b;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/library/notify/dispatcher/m;->a:Lcom/dianxinos/library/notify/dispatcher/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[B)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", data is empty: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/dianxinos/library/notify/h/b;->b(J)Z

    if-ne p1, v1, :cond_3

    if-eqz p2, :cond_3

    :goto_1
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/dianxinos/library/notify/dispatcher/m;->a:Lcom/dianxinos/library/notify/dispatcher/b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Lcom/dianxinos/library/notify/dispatcher/b;->a(ILjava/lang/Object;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/dianxinos/library/notify/dispatcher/m;->a:Lcom/dianxinos/library/notify/dispatcher/b;

    invoke-static {v0}, Lcom/dianxinos/library/notify/dispatcher/b;->f(Lcom/dianxinos/library/notify/dispatcher/b;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/dianxinos/library/notify/dispatcher/m;->a:Lcom/dianxinos/library/notify/dispatcher/b;

    invoke-static {v0}, Lcom/dianxinos/library/notify/dispatcher/b;->g(Lcom/dianxinos/library/notify/dispatcher/b;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dianxinos/library/notify/dispatcher/m;->a:Lcom/dianxinos/library/notify/dispatcher/b;

    invoke-static {v0}, Lcom/dianxinos/library/notify/dispatcher/b;->h(Lcom/dianxinos/library/notify/dispatcher/b;)Z

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/dianxinos/library/notify/dispatcher/m;->a:Lcom/dianxinos/library/notify/dispatcher/b;

    invoke-static {v0}, Lcom/dianxinos/library/notify/dispatcher/b;->f(Lcom/dianxinos/library/notify/dispatcher/b;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/library/notify/dispatcher/m;->a:Lcom/dianxinos/library/notify/dispatcher/b;

    invoke-static {v0}, Lcom/dianxinos/library/notify/dispatcher/b;->g(Lcom/dianxinos/library/notify/dispatcher/b;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/dianxinos/library/notify/dispatcher/n;

    invoke-direct {v0, p0}, Lcom/dianxinos/library/notify/dispatcher/n;-><init>(Lcom/dianxinos/library/notify/dispatcher/m;)V

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/o;->c(Ljava/lang/Runnable;)V

    goto :goto_2
.end method
