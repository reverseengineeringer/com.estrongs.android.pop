.class Lcom/flurry/sdk/gq$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gq;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gq;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gq$2;->a:Lcom/flurry/sdk/gq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gq$2;->a:Lcom/flurry/sdk/gq;

    sget-object v1, Lcom/flurry/sdk/gq$b;->f:Lcom/flurry/sdk/gq$b;

    invoke-static {v0, v1}, Lcom/flurry/sdk/gq;->a(Lcom/flurry/sdk/gq;Lcom/flurry/sdk/gq$b;)Lcom/flurry/sdk/gq$b;

    iget-object v0, p0, Lcom/flurry/sdk/gq$2;->a:Lcom/flurry/sdk/gq;

    invoke-static {v0}, Lcom/flurry/sdk/gq;->e(Lcom/flurry/sdk/gq;)Lcom/flurry/sdk/gq$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gq$2;->a:Lcom/flurry/sdk/gq;

    invoke-static {v0}, Lcom/flurry/sdk/gq;->e(Lcom/flurry/sdk/gq;)Lcom/flurry/sdk/gq$a;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gq$2;->a:Lcom/flurry/sdk/gq;

    invoke-static {v1}, Lcom/flurry/sdk/gq;->a(Lcom/flurry/sdk/gq;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/sdk/gq$a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
