.class public Lcom/flurry/sdk/es;
.super Lcom/flurry/sdk/et;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    sget-object v0, Lcom/flurry/sdk/et$a;->a:Lcom/flurry/sdk/et$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/et;-><init>(Lcom/flurry/sdk/et$a;)V

    const-string v0, "com.flurry.android.post_caption"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/es;->a(Ljava/lang/String;)V

    const-string v0, "com.flurry.android.post_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/es;->b(Ljava/lang/String;)V

    const-string v0, "com.flurry.android.post_ios_deeplinks"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/es;->c(Ljava/lang/String;)V

    const-string v0, "com.flurry.android.post_android_deeplinks"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/es;->e(Ljava/lang/String;)V

    const-string v0, "com.flurry.android.post_weblink"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/es;->f(Ljava/lang/String;)V

    const-string v0, "com.flurry.android.post_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/es;->a(I)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/net/URI;

    iget-object v0, p0, Lcom/flurry/sdk/es;->f:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "source"

    iget-object v2, p0, Lcom/flurry/sdk/es;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/sdk/es;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v1, "deep_link_ios"

    iget-object v2, p0, Lcom/flurry/sdk/es;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/sdk/es;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "deep_link_android"

    iget-object v2, p0, Lcom/flurry/sdk/es;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/sdk/es;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "deep_link_web"

    iget-object v2, p0, Lcom/flurry/sdk/es;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/sdk/es;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    const-string v2, "photo"

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/sdk/es;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "caption"

    iget-object v2, p0, Lcom/flurry/sdk/es;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/sdk/es;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "syndication_id"

    iget-object v2, p0, Lcom/flurry/sdk/es;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/flurry/sdk/jd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/sdk/es;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/flurry/sdk/es;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "data"

    iget-object v2, p0, Lcom/flurry/sdk/es;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/sdk/es;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/es;->e:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/es;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/es;->f:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/es;->f:Ljava/lang/String;

    return-object v0
.end method
