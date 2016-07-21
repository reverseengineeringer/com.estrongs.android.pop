.class public Lcom/dianxinos/library/notify/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dianxinos/library/notify/c/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dianxinos/library/notify/dispatcher/p;)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/library/notify/c/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/dianxinos/library/notify/dispatcher/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/dianxinos/library/notify/dispatcher/p;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/dianxinos/library/notify/c;->a(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/j;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/library/notify/c/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/dianxinos/library/notify/dispatcher/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/dianxinos/library/notify/dispatcher/p;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "work"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/dianxinos/library/notify/c/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "network"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "preload_bkg"

    iget-object v5, p1, Lcom/dianxinos/library/notify/dispatcher/p;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "preload_file"

    iget-object v5, p1, Lcom/dianxinos/library/notify/dispatcher/p;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    const-string v4, "size"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    const-string v1, "preload_bkg"

    iget-object v4, p1, Lcom/dianxinos/library/notify/dispatcher/p;->e:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "preload_file"

    iget-object v4, p1, Lcom/dianxinos/library/notify/dispatcher/p;->e:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-static {}, Lcom/dianxinos/library/notify/dispatcher/a;->a()Lcom/dianxinos/library/notify/dispatcher/a;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    new-instance v4, Lcom/dianxinos/library/notify/download/i;

    invoke-direct {v4}, Lcom/dianxinos/library/notify/download/i;-><init>()V

    iget-object v5, p1, Lcom/dianxinos/library/notify/dispatcher/p;->a:Ljava/lang/String;

    iput-object v5, v4, Lcom/dianxinos/library/notify/download/i;->a:Ljava/lang/String;

    iput-object v3, v4, Lcom/dianxinos/library/notify/download/i;->c:Ljava/lang/String;

    iput-object v2, v4, Lcom/dianxinos/library/notify/download/i;->b:Ljava/lang/String;

    const-string v3, "preload_bkg"

    iget-object v5, p1, Lcom/dianxinos/library/notify/dispatcher/p;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "preload_bkg"

    iput-object v3, v4, Lcom/dianxinos/library/notify/download/i;->d:Ljava/lang/String;

    :goto_2
    iget-object v3, p1, Lcom/dianxinos/library/notify/dispatcher/p;->a:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/dianxinos/library/notify/download/o;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/dianxinos/library/notify/dispatcher/a;->a(Ljava/lang/String;Lcom/dianxinos/library/notify/download/i;)Z

    invoke-virtual {v1}, Lcom/dianxinos/library/notify/dispatcher/a;->c()Z

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/dianxinos/library/notify/dispatcher/a;->b()Lcom/dianxinos/library/notify/dispatcher/a;

    move-result-object v1

    goto :goto_1

    :cond_5
    const-string v3, "preload_file"

    iget-object v5, p1, Lcom/dianxinos/library/notify/dispatcher/p;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "preload_file"

    iput-object v3, v4, Lcom/dianxinos/library/notify/download/i;->d:Ljava/lang/String;

    goto :goto_2

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :cond_6
    const-string v3, "download"

    iput-object v3, v4, Lcom/dianxinos/library/notify/download/i;->d:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "download"

    return-object v0
.end method
