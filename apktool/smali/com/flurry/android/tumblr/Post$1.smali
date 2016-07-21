.class Lcom/flurry/android/tumblr/Post$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kb",
        "<",
        "Lcom/flurry/sdk/ec;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/android/tumblr/Post;


# direct methods
.method constructor <init>(Lcom/flurry/android/tumblr/Post;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/android/tumblr/Post$1;->a:Lcom/flurry/android/tumblr/Post;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/ec;)V
    .locals 3

    iget v0, p1, Lcom/flurry/sdk/ec;->c:I

    iget-object v1, p0, Lcom/flurry/android/tumblr/Post$1;->a:Lcom/flurry/android/tumblr/Post;

    invoke-static {v1}, Lcom/flurry/android/tumblr/Post;->a(Lcom/flurry/android/tumblr/Post;)I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/flurry/sdk/ec;->b:Lcom/flurry/sdk/ec$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/tumblr/Post$1;->a:Lcom/flurry/android/tumblr/Post;

    invoke-static {v0}, Lcom/flurry/android/tumblr/Post;->b(Lcom/flurry/android/tumblr/Post;)Lcom/flurry/android/tumblr/PostListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v1

    new-instance v2, Lcom/flurry/android/tumblr/Post$1$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/flurry/android/tumblr/Post$1$1;-><init>(Lcom/flurry/android/tumblr/Post$1;Lcom/flurry/sdk/ec;Lcom/flurry/android/tumblr/PostListener;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/flurry/sdk/ka;)V
    .locals 0

    check-cast p1, Lcom/flurry/sdk/ec;

    invoke-virtual {p0, p1}, Lcom/flurry/android/tumblr/Post$1;->a(Lcom/flurry/sdk/ec;)V

    return-void
.end method
