.class Lcom/dianxinos/library/notify/d/c;
.super Lcom/dianxinos/library/notify/network/b;


# instance fields
.field final synthetic a:Lcom/dianxinos/library/notify/d/d;

.field final synthetic b:Lcom/dianxinos/library/notify/d/b;


# direct methods
.method constructor <init>(Lcom/dianxinos/library/notify/d/b;Lcom/dianxinos/library/notify/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/library/notify/d/c;->b:Lcom/dianxinos/library/notify/d/b;

    iput-object p2, p0, Lcom/dianxinos/library/notify/d/c;->a:Lcom/dianxinos/library/notify/d/d;

    invoke-direct {p0}, Lcom/dianxinos/library/notify/network/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/dianxinos/library/notify/network/s;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p2, Lcom/dianxinos/library/notify/network/s;->g:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/dianxinos/library/notify/d/a;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v1, :cond_1

    const-string v1, "succeed pull web data from network"

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/dianxinos/library/notify/d/c;->a:Lcom/dianxinos/library/notify/d/d;

    invoke-interface {v1, v2, v0}, Lcom/dianxinos/library/notify/d/d;->a(I[B)V

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "latest data came from network:"

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_3

    const-string v0, "failed pull web data because of IOException when read InputStream"

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/dianxinos/library/notify/d/c;->a:Lcom/dianxinos/library/notify/d/d;

    const/4 v1, -0x7

    invoke-interface {v0, v1, v3}, Lcom/dianxinos/library/notify/d/d;->a(I[B)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p2, Lcom/dianxinos/library/notify/network/s;->g:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/dianxinos/library/notify/d/a;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    if-eqz v0, :cond_5

    sget-boolean v1, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v1, :cond_4

    const-string v1, "succeed pull web data from local valid cache"

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/dianxinos/library/notify/d/c;->a:Lcom/dianxinos/library/notify/d/d;

    invoke-interface {v1, v2, v0}, Lcom/dianxinos/library/notify/d/d;->a(I[B)V

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "latest data came from valid cache:"

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_6

    const-string v0, "failed pull web data because of IOException when read local cache file"

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/dianxinos/library/notify/d/c;->a:Lcom/dianxinos/library/notify/d/d;

    const/4 v1, -0x2

    invoke-interface {v0, v1, v3}, Lcom/dianxinos/library/notify/d/d;->a(I[B)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(ILcom/dianxinos/library/notify/network/s;)V
    .locals 2

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed pull web data,reason code is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",exception message is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/dianxinos/library/notify/network/s;->c:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/d/c;->a:Lcom/dianxinos/library/notify/d/d;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/dianxinos/library/notify/d/d;->a(I[B)V

    return-void
.end method
