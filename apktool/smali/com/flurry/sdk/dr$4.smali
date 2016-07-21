.class Lcom/flurry/sdk/dr$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kn$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kn$a",
        "<[B[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/s;

.field final synthetic b:Lcom/flurry/sdk/dr;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dr;Lcom/flurry/sdk/s;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/dr$4;->b:Lcom/flurry/sdk/dr;

    iput-object p2, p0, Lcom/flurry/sdk/dr$4;->a:Lcom/flurry/sdk/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/kn;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/dr$4;->a(Lcom/flurry/sdk/kn;[B)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/kn;[B)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/kn",
            "<[B[B>;[B)V"
        }
    .end annotation

    const/4 v7, 0x3

    invoke-static {}, Lcom/flurry/sdk/dr;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdRequest: HTTP status code is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/dr$4;->b:Lcom/flurry/sdk/dr;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/flurry/sdk/dr;->a(Lcom/flurry/sdk/dr;Ljava/util/List;)Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/dr$4;->b:Lcom/flurry/sdk/dr;

    invoke-static {v0}, Lcom/flurry/sdk/dr;->d(Lcom/flurry/sdk/dr;)Lcom/flurry/sdk/kk;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/kk;->d([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_8

    iget-object v0, v2, Lcom/flurry/sdk/cm;->d:Lcom/flurry/sdk/ct;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/flurry/sdk/ct;->a:Lcom/flurry/sdk/cs;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/dr;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Ad server responded with configuration."

    invoke-static {v7, v3, v4}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/flurry/sdk/dp;

    invoke-direct {v3}, Lcom/flurry/sdk/dp;-><init>()V

    iput-object v0, v3, Lcom/flurry/sdk/dp;->a:Lcom/flurry/sdk/cs;

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/flurry/sdk/kc;->a(Lcom/flurry/sdk/ka;)V

    :cond_0
    iget-object v0, v2, Lcom/flurry/sdk/cm;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/flurry/sdk/cm;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cv;

    new-instance v4, Lcom/flurry/sdk/be;

    invoke-direct {v4, v0}, Lcom/flurry/sdk/be;-><init>(Lcom/flurry/sdk/cv;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->k()Lcom/flurry/sdk/bf;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/flurry/sdk/bf;->a(Lcom/flurry/sdk/be;)V

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v3, 0x5

    invoke-static {}, Lcom/flurry/sdk/dr;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to decode ad response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, v2, Lcom/flurry/sdk/cm;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/flurry/sdk/dr;->c()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Ad server responded with the following error(s):"

    invoke-static {v0, v3}, Lcom/flurry/sdk/kg;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/flurry/sdk/cm;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/dr;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/flurry/sdk/kg;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, v2, Lcom/flurry/sdk/cm;->a:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, v2, Lcom/flurry/sdk/cm;->a:Ljava/util/List;

    :goto_3
    iget-object v1, p0, Lcom/flurry/sdk/dr$4;->b:Lcom/flurry/sdk/dr;

    invoke-static {v1}, Lcom/flurry/sdk/dr;->e(Lcom/flurry/sdk/dr;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/flurry/sdk/dr;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ad server responded but sent no ad units."

    invoke-static {v1, v2}, Lcom/flurry/sdk/kg;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/co;

    iget-object v2, v0, Lcom/flurry/sdk/co;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/flurry/sdk/dr$4;->a:Lcom/flurry/sdk/s;

    instance-of v2, v2, Lcom/flurry/sdk/x;

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v2

    const-string v3, "nativeAdReturned"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;I)V

    :cond_5
    new-instance v2, Lcom/flurry/sdk/au;

    invoke-direct {v2, v0}, Lcom/flurry/sdk/au;-><init>(Lcom/flurry/sdk/co;)V

    iget-object v0, p0, Lcom/flurry/sdk/dr$4;->b:Lcom/flurry/sdk/dr;

    invoke-static {v0}, Lcom/flurry/sdk/dr;->f(Lcom/flurry/sdk/dr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/flurry/sdk/dr$4;->b:Lcom/flurry/sdk/dr;

    sget-object v1, Lcom/flurry/sdk/dr$a;->e:Lcom/flurry/sdk/dr$a;

    invoke-static {v0, v1}, Lcom/flurry/sdk/dr;->a(Lcom/flurry/sdk/dr;Lcom/flurry/sdk/dr$a;)V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dr$4$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dr$4$1;-><init>(Lcom/flurry/sdk/dr$4;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    move-object v0, v1

    goto :goto_3

    :cond_8
    move-object v0, v1

    goto :goto_4
.end method
