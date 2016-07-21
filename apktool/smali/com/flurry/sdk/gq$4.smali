.class Lcom/flurry/sdk/gq$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kb",
        "<",
        "Lcom/flurry/sdk/ln;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gq;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gq;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gq$4;->a:Lcom/flurry/sdk/gq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/ka;)V
    .locals 0

    check-cast p1, Lcom/flurry/sdk/ln;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/gq$4;->a(Lcom/flurry/sdk/ln;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/ln;)V
    .locals 4

    iget-object v0, p0, Lcom/flurry/sdk/gq$4;->a:Lcom/flurry/sdk/gq;

    invoke-static {v0}, Lcom/flurry/sdk/gq;->a(Lcom/flurry/sdk/gq;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/gq$4;->a:Lcom/flurry/sdk/gq;

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/sdk/gq$4;->a:Lcom/flurry/sdk/gq;

    invoke-virtual {v1}, Lcom/flurry/sdk/gq;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lcom/flurry/sdk/gq$4;->a:Lcom/flurry/sdk/gq;

    iget-object v3, p0, Lcom/flurry/sdk/gq$4;->a:Lcom/flurry/sdk/gq;

    invoke-virtual {v3}, Lcom/flurry/sdk/gq;->getCurrentPosition()I

    move-result v3

    invoke-static {v2, v3}, Lcom/flurry/sdk/gq;->b(Lcom/flurry/sdk/gq;I)I

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/flurry/sdk/gq$4;->a:Lcom/flurry/sdk/gq;

    invoke-static {v2}, Lcom/flurry/sdk/gq;->e(Lcom/flurry/sdk/gq;)Lcom/flurry/sdk/gq$a;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/flurry/sdk/gq$4;->a:Lcom/flurry/sdk/gq;

    invoke-virtual {v2}, Lcom/flurry/sdk/gq;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-float v2, v1

    iget-object v3, p0, Lcom/flurry/sdk/gq$4;->a:Lcom/flurry/sdk/gq;

    invoke-static {v3}, Lcom/flurry/sdk/gq;->f(Lcom/flurry/sdk/gq;)F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/flurry/sdk/gq$4;->a:Lcom/flurry/sdk/gq;

    invoke-static {v2}, Lcom/flurry/sdk/gq;->f(Lcom/flurry/sdk/gq;)F

    move-result v2

    const/high16 v3, 0x43960000    # 300.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/flurry/sdk/gq$4;->a:Lcom/flurry/sdk/gq;

    int-to-float v3, v1

    invoke-static {v2, v3}, Lcom/flurry/sdk/gq;->a(Lcom/flurry/sdk/gq;F)F

    iget-object v2, p0, Lcom/flurry/sdk/gq$4;->a:Lcom/flurry/sdk/gq;

    invoke-static {v2}, Lcom/flurry/sdk/gq;->e(Lcom/flurry/sdk/gq;)Lcom/flurry/sdk/gq$a;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/gq$4;->a:Lcom/flurry/sdk/gq;

    invoke-static {v3}, Lcom/flurry/sdk/gq;->a(Lcom/flurry/sdk/gq;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-interface {v2, v3, v0, v1}, Lcom/flurry/sdk/gq$a;->a(Ljava/lang/String;FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/flurry/sdk/gq;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video view progress error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/kg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
