.class Lcom/estrongs/android/pop/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/impl/local/c;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/s;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/s;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/t;->a:Lcom/estrongs/android/pop/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 5

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/t;->a:Lcom/estrongs/android/pop/s;

    iget-object v0, v0, Lcom/estrongs/android/pop/s;->a:Lcom/estrongs/android/pop/n;

    iget-object v0, v0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    const/4 v1, 0x3

    iput v1, v0, Lcom/estrongs/a/a/d;->g:I

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/t;->a:Lcom/estrongs/android/pop/s;

    iget-object v0, v0, Lcom/estrongs/android/pop/s;->a:Lcom/estrongs/android/pop/n;

    iget-object v0, v0, Lcom/estrongs/android/pop/n;->b:Lcom/estrongs/a/a;

    const/4 v1, 0x5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/estrongs/android/pop/t;->a:Lcom/estrongs/android/pop/s;

    iget-object v4, v4, Lcom/estrongs/android/pop/s;->a:Lcom/estrongs/android/pop/n;

    iget-object v4, v4, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/t;->a:Lcom/estrongs/android/pop/s;

    iget-object v0, v0, Lcom/estrongs/android/pop/s;->a:Lcom/estrongs/android/pop/n;

    iget-object v0, v0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    const/4 v1, 0x4

    iput v1, v0, Lcom/estrongs/a/a/d;->g:I

    iget-object v0, p0, Lcom/estrongs/android/pop/t;->a:Lcom/estrongs/android/pop/s;

    iget-object v0, v0, Lcom/estrongs/android/pop/s;->a:Lcom/estrongs/android/pop/n;

    iget-object v0, v0, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    check-cast v0, Lcom/estrongs/a/a/j;

    iput-object p1, v0, Lcom/estrongs/a/a/j;->a:Landroid/net/Uri;

    goto :goto_0
.end method
