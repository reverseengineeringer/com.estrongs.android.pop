.class public Lcom/baidu/mobstat/m;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/baidu/mobstat/l;->a:Lcom/baidu/mobstat/l;

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/l;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/baidu/mobstat/ax;->a(Landroid/content/Context;)Lcom/baidu/mobstat/ax;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/t;->a:Lcom/baidu/mobstat/t;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/ax;->a(Lcom/baidu/mobstat/t;J)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/baidu/mobstat/p;->a:Lcom/baidu/mobstat/p;

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/mobstat/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/baidu/mobstat/ax;->a(Landroid/content/Context;)Lcom/baidu/mobstat/ax;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/t;->f:Lcom/baidu/mobstat/t;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/ax;->a(Lcom/baidu/mobstat/t;J)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 4

    sget-object v0, Lcom/baidu/mobstat/q;->a:Lcom/baidu/mobstat/q;

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/q;->a(Landroid/content/Context;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0}, Lcom/baidu/mobstat/ax;->a(Landroid/content/Context;)Lcom/baidu/mobstat/ax;

    move-result-object v1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/baidu/mobstat/t;->c:Lcom/baidu/mobstat/t;

    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Lcom/baidu/mobstat/ax;->a(Lcom/baidu/mobstat/t;J)V

    return-void

    :cond_0
    sget-object v0, Lcom/baidu/mobstat/t;->b:Lcom/baidu/mobstat/t;

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/baidu/mobstat/n;->a:Lcom/baidu/mobstat/n;

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/baidu/mobstat/ax;->a(Landroid/content/Context;)Lcom/baidu/mobstat/ax;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/t;->g:Lcom/baidu/mobstat/t;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/ax;->a(Lcom/baidu/mobstat/t;J)V

    return-void
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 4

    sget-object v0, Lcom/baidu/mobstat/r;->a:Lcom/baidu/mobstat/r;

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/r;->a(Landroid/content/Context;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0}, Lcom/baidu/mobstat/ax;->a(Landroid/content/Context;)Lcom/baidu/mobstat/ax;

    move-result-object v1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/baidu/mobstat/t;->d:Lcom/baidu/mobstat/t;

    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Lcom/baidu/mobstat/ax;->a(Lcom/baidu/mobstat/t;J)V

    return-void

    :cond_0
    sget-object v0, Lcom/baidu/mobstat/t;->e:Lcom/baidu/mobstat/t;

    goto :goto_0
.end method
