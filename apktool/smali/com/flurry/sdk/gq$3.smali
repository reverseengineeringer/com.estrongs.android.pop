.class Lcom/flurry/sdk/gq$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gq;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gq;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gq$3;->a:Lcom/flurry/sdk/gq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/sdk/gq;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/gq$3;->a:Lcom/flurry/sdk/gq;

    invoke-static {v3}, Lcom/flurry/sdk/gq;->a(Lcom/flurry/sdk/gq;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " framework_err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " impl_err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/gq$3;->a:Lcom/flurry/sdk/gq;

    sget-object v1, Lcom/flurry/sdk/gq$b;->h:Lcom/flurry/sdk/gq$b;

    invoke-static {v0, v1}, Lcom/flurry/sdk/gq;->a(Lcom/flurry/sdk/gq;Lcom/flurry/sdk/gq$b;)Lcom/flurry/sdk/gq$b;

    iget-object v0, p0, Lcom/flurry/sdk/gq$3;->a:Lcom/flurry/sdk/gq;

    invoke-static {v0}, Lcom/flurry/sdk/gq;->e(Lcom/flurry/sdk/gq;)Lcom/flurry/sdk/gq$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gq$3;->a:Lcom/flurry/sdk/gq;

    invoke-static {v0}, Lcom/flurry/sdk/gq;->e(Lcom/flurry/sdk/gq;)Lcom/flurry/sdk/gq$a;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gq$3;->a:Lcom/flurry/sdk/gq;

    invoke-static {v1}, Lcom/flurry/sdk/gq;->a(Lcom/flurry/sdk/gq;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/flurry/sdk/ba;->q:Lcom/flurry/sdk/ba;

    invoke-virtual {v2}, Lcom/flurry/sdk/ba;->a()I

    move-result v2

    invoke-interface {v0, v1, v2, p2, p3}, Lcom/flurry/sdk/gq$a;->a(Ljava/lang/String;III)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
