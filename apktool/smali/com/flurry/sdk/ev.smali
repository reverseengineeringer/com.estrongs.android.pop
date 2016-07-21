.class public Lcom/flurry/sdk/ev;
.super Lcom/flurry/sdk/et;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    sget-object v0, Lcom/flurry/sdk/et$a;->b:Lcom/flurry/sdk/et$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/et;-><init>(Lcom/flurry/sdk/et$a;)V

    const-string v0, "com.flurry.android.post_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ev;->a(Ljava/lang/String;)V

    const-string v0, "com.flurry.android.post_body"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ev;->b(Ljava/lang/String;)V

    const-string v0, "com.flurry.android.post_ios_deeplinks"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ev;->c(Ljava/lang/String;)V

    const-string v0, "com.flurry.android.post_android_deeplinks"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ev;->e(Ljava/lang/String;)V

    const-string v0, "com.flurry.android.post_weblink"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ev;->f(Ljava/lang/String;)V

    const-string v0, "com.flurry.android.post_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ev;->a(I)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Map;
    .locals 3
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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "title"

    iget-object v2, p0, Lcom/flurry/sdk/ev;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/sdk/ev;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "body"

    iget-object v2, p0, Lcom/flurry/sdk/ev;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/sdk/ev;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "deep_link_ios"

    iget-object v2, p0, Lcom/flurry/sdk/ev;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/sdk/ev;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "deep_link_android"

    iget-object v2, p0, Lcom/flurry/sdk/ev;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/sdk/ev;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "deep_link_web"

    iget-object v2, p0, Lcom/flurry/sdk/ev;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/sdk/ev;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    const-string v2, "text"

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/sdk/ev;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "syndication_id"

    iget-object v2, p0, Lcom/flurry/sdk/ev;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/flurry/sdk/jd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/sdk/ev;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ev;->e:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ev;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ev;->f:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ev;->f:Ljava/lang/String;

    return-object v0
.end method
