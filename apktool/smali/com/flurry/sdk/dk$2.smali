.class Lcom/flurry/sdk/dk$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kn$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kn$a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dj;

.field final synthetic b:Lcom/flurry/sdk/dk;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dk;Lcom/flurry/sdk/dj;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/dk$2;->b:Lcom/flurry/sdk/dk;

    iput-object p2, p0, Lcom/flurry/sdk/dk$2;->a:Lcom/flurry/sdk/dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/kn;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/dk$2;->a(Lcom/flurry/sdk/kn;Ljava/lang/Void;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/kn;Ljava/lang/Void;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/kn",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    const/16 v3, 0x12c

    const/4 v4, 0x3

    invoke-static {}, Lcom/flurry/sdk/dk;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncReportInfo request: HTTP status code is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->h()I

    move-result v1

    const/16 v0, 0xc8

    if-lt v1, v0, :cond_2

    if-ge v1, v3, :cond_2

    invoke-static {}, Lcom/flurry/sdk/dk;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send report successful to url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/dk$2;->b:Lcom/flurry/sdk/dk;

    iget-object v2, p0, Lcom/flurry/sdk/dk$2;->a:Lcom/flurry/sdk/dj;

    invoke-static {v0, v2}, Lcom/flurry/sdk/dk;->a(Lcom/flurry/sdk/dk;Lcom/flurry/sdk/kr;)V

    invoke-static {}, Lcom/flurry/sdk/kg;->c()I

    move-result v0

    if-gt v0, v4, :cond_0

    invoke-static {}, Lcom/flurry/sdk/kg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v2, Lcom/flurry/sdk/dk$2$1;

    invoke-direct {v2, p0, p1}, Lcom/flurry/sdk/dk$2$1;-><init>(Lcom/flurry/sdk/dk$2;Lcom/flurry/sdk/kn;)V

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/dk$2;->b:Lcom/flurry/sdk/dk;

    iget-object v2, p0, Lcom/flurry/sdk/dk$2;->a:Lcom/flurry/sdk/dj;

    invoke-static {v0, v2, v1}, Lcom/flurry/sdk/dk;->a(Lcom/flurry/sdk/dk;Lcom/flurry/sdk/dj;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-lt v1, v3, :cond_6

    const/16 v0, 0x190

    if-ge v1, v0, :cond_6

    const/4 v0, 0x0

    const-string v2, "Location"

    invoke-virtual {p1, v2}, Lcom/flurry/sdk/kn;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/dk$2;->a:Lcom/flurry/sdk/dj;

    invoke-virtual {v2}, Lcom/flurry/sdk/dj;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/sdk/ma;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/flurry/sdk/dk;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send report successful to url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/dk$2;->b:Lcom/flurry/sdk/dk;

    iget-object v2, p0, Lcom/flurry/sdk/dk$2;->a:Lcom/flurry/sdk/dj;

    invoke-static {v0, v2}, Lcom/flurry/sdk/dk;->b(Lcom/flurry/sdk/dk;Lcom/flurry/sdk/kr;)V

    invoke-static {}, Lcom/flurry/sdk/kg;->c()I

    move-result v0

    if-gt v0, v4, :cond_4

    invoke-static {}, Lcom/flurry/sdk/kg;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v2, Lcom/flurry/sdk/dk$2$2;

    invoke-direct {v2, p0, p1}, Lcom/flurry/sdk/dk$2$2;-><init>(Lcom/flurry/sdk/dk$2;Lcom/flurry/sdk/kn;)V

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/dk$2;->b:Lcom/flurry/sdk/dk;

    iget-object v2, p0, Lcom/flurry/sdk/dk$2;->a:Lcom/flurry/sdk/dj;

    invoke-static {v0, v2, v1}, Lcom/flurry/sdk/dk;->a(Lcom/flurry/sdk/dk;Lcom/flurry/sdk/dj;I)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/flurry/sdk/dk;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send report redirecting to url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/dk$2;->a:Lcom/flurry/sdk/dj;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/dj;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/dk$2;->b:Lcom/flurry/sdk/dk;

    iget-object v1, p0, Lcom/flurry/sdk/dk$2;->a:Lcom/flurry/sdk/dj;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dk;->a(Lcom/flurry/sdk/dj;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/flurry/sdk/dk;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send report failed to url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/dk$2;->a:Lcom/flurry/sdk/dj;

    invoke-virtual {v0}, Lcom/flurry/sdk/dj;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/ma;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/flurry/sdk/dk$2;->b:Lcom/flurry/sdk/dk;

    iget-object v2, p0, Lcom/flurry/sdk/dk$2;->a:Lcom/flurry/sdk/dj;

    invoke-static {v0, v2}, Lcom/flurry/sdk/dk;->c(Lcom/flurry/sdk/dk;Lcom/flurry/sdk/kr;)V

    :goto_1
    iget-object v0, p0, Lcom/flurry/sdk/dk$2;->a:Lcom/flurry/sdk/dj;

    invoke-virtual {v0}, Lcom/flurry/sdk/dj;->r()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/dk$2;->b:Lcom/flurry/sdk/dk;

    iget-object v2, p0, Lcom/flurry/sdk/dk$2;->a:Lcom/flurry/sdk/dj;

    invoke-static {v0, v2, v1}, Lcom/flurry/sdk/dk;->a(Lcom/flurry/sdk/dk;Lcom/flurry/sdk/dj;I)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/flurry/sdk/dk;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Oops! url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is invalid, aborting transmission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/dk$2;->b:Lcom/flurry/sdk/dk;

    iget-object v2, p0, Lcom/flurry/sdk/dk$2;->a:Lcom/flurry/sdk/dj;

    invoke-static {v0, v2}, Lcom/flurry/sdk/dk;->d(Lcom/flurry/sdk/dk;Lcom/flurry/sdk/kr;)V

    goto :goto_1
.end method
