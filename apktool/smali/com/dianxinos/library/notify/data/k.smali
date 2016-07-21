.class public Lcom/dianxinos/library/notify/data/k;
.super Ljava/lang/Object;


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dianxinos/library/dxbase/e;->a:Ljava/lang/String;

    const-string v1, "prod"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/dianxinos/library/a/a/a;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "test"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/dianxinos/library/notify/i/a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "dev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/dianxinos/library/notify/i/a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/dianxinos/library/a/a/a;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static b()[C
    .locals 1

    const-string v0, "75a5552b52c6fe88429805f0fb6b4542cf920b37819fd4b586a400b07f5eabfc"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method
