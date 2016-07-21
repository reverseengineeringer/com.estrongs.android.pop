.class public Lcom/dianxinos/library/b/c/k;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/dianxinos/library/b/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "SS"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
