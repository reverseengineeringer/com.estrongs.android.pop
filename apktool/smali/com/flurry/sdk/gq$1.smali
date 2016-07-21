.class Lcom/flurry/sdk/gq$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gq;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gq;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gq$1;->a:Lcom/flurry/sdk/gq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/sdk/gq;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnPreparedListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/gq$1;->a:Lcom/flurry/sdk/gq;

    invoke-static {v3}, Lcom/flurry/sdk/gq;->a(Lcom/flurry/sdk/gq;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/gq$1;->a:Lcom/flurry/sdk/gq;

    sget-object v1, Lcom/flurry/sdk/gq$b;->c:Lcom/flurry/sdk/gq$b;

    invoke-static {v0, v1}, Lcom/flurry/sdk/gq;->a(Lcom/flurry/sdk/gq;Lcom/flurry/sdk/gq$b;)Lcom/flurry/sdk/gq$b;

    iget-object v0, p0, Lcom/flurry/sdk/gq$1;->a:Lcom/flurry/sdk/gq;

    invoke-static {v0}, Lcom/flurry/sdk/gq;->b(Lcom/flurry/sdk/gq;)I

    move-result v1

    iget-object v0, p0, Lcom/flurry/sdk/gq$1;->a:Lcom/flurry/sdk/gq;

    invoke-static {v0, p1}, Lcom/flurry/sdk/gq;->a(Lcom/flurry/sdk/gq;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/flurry/sdk/gq$1;->a:Lcom/flurry/sdk/gq;

    iget-object v0, p0, Lcom/flurry/sdk/gq$1;->a:Lcom/flurry/sdk/gq;

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-static {v2, v0}, Lcom/flurry/sdk/gq;->a(Lcom/flurry/sdk/gq;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/flurry/sdk/gq$1;->a:Lcom/flurry/sdk/gq;

    iget-object v2, p0, Lcom/flurry/sdk/gq$1;->a:Lcom/flurry/sdk/gq;

    invoke-static {v2}, Lcom/flurry/sdk/gq;->c(Lcom/flurry/sdk/gq;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/flurry/sdk/gq;->a(Lcom/flurry/sdk/gq;I)I

    iget-object v0, p0, Lcom/flurry/sdk/gq$1;->a:Lcom/flurry/sdk/gq;

    invoke-static {v0}, Lcom/flurry/sdk/gq;->d(Lcom/flurry/sdk/gq;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gq$1;->a:Lcom/flurry/sdk/gq;

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->a()V

    :goto_0
    if-le v1, v4, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/gq$1;->a:Lcom/flurry/sdk/gq;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gq;->seekTo(I)V

    :goto_1
    iget-object v0, p0, Lcom/flurry/sdk/gq$1;->a:Lcom/flurry/sdk/gq;

    invoke-static {v0}, Lcom/flurry/sdk/gq;->e(Lcom/flurry/sdk/gq;)Lcom/flurry/sdk/gq$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gq$1;->a:Lcom/flurry/sdk/gq;

    invoke-static {v0}, Lcom/flurry/sdk/gq;->a(Lcom/flurry/sdk/gq;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gq$1;->a:Lcom/flurry/sdk/gq;

    invoke-static {v0}, Lcom/flurry/sdk/gq;->e(Lcom/flurry/sdk/gq;)Lcom/flurry/sdk/gq$a;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gq$1;->a:Lcom/flurry/sdk/gq;

    invoke-static {v1}, Lcom/flurry/sdk/gq;->a(Lcom/flurry/sdk/gq;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/sdk/gq$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gq$1;->a:Lcom/flurry/sdk/gq;

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/gq$1;->a:Lcom/flurry/sdk/gq;

    invoke-virtual {v0, v4}, Lcom/flurry/sdk/gq;->seekTo(I)V

    goto :goto_1
.end method
