.class public Lcom/flurry/sdk/gv;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/flurry/sdk/s;Ljava/lang/String;Lcom/flurry/sdk/gt$a;ZZ)Lcom/flurry/sdk/gt;
    .locals 6

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/flurry/sdk/gs;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/flurry/sdk/gs;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;Z)V

    goto :goto_0

    :cond_3
    invoke-static {p2}, Lcom/flurry/sdk/ma;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    instance-of v0, p1, Lcom/flurry/sdk/x;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/flurry/sdk/x;

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->B()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/flurry/sdk/gj;->d:Lcom/flurry/sdk/gj;

    invoke-static {p0, v0, p1, p3}, Lcom/flurry/sdk/gi;->a(Landroid/content/Context;Lcom/flurry/sdk/gj;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)Lcom/flurry/sdk/gh;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1}, Lcom/flurry/sdk/s;->l()Lcom/flurry/sdk/au;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/gk;->h()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gh;->setVideoUri(Landroid/net/Uri;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gj;

    invoke-interface {p1}, Lcom/flurry/sdk/s;->l()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->q()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/flurry/sdk/gj;->b:Lcom/flurry/sdk/gj;

    :cond_5
    invoke-static {p0, v0, p1, p3}, Lcom/flurry/sdk/gi;->a(Landroid/content/Context;Lcom/flurry/sdk/gj;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)Lcom/flurry/sdk/gh;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gh;->setVideoUri(Landroid/net/Uri;)V

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lcom/flurry/sdk/x;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/flurry/sdk/x;

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->B()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "file:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/flurry/sdk/gj;->d:Lcom/flurry/sdk/gj;

    invoke-static {p0, v0, p1, p3}, Lcom/flurry/sdk/gi;->a(Landroid/content/Context;Lcom/flurry/sdk/gj;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)Lcom/flurry/sdk/gh;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1}, Lcom/flurry/sdk/s;->l()Lcom/flurry/sdk/au;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/gk;->h()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gh;->setVideoUri(Landroid/net/Uri;)V

    goto/16 :goto_0

    :cond_7
    if-eqz p5, :cond_8

    new-instance v0, Lcom/flurry/sdk/gy;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/gy;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;Z)V

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    goto/16 :goto_0
.end method
