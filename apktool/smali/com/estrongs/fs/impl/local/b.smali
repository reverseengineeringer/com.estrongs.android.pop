.class final Lcom/estrongs/fs/impl/local/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/esclasses/c;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/impl/local/c;

.field final synthetic b:Lcom/estrongs/android/pop/esclasses/ESActivity;

.field final synthetic c:[Lcom/estrongs/android/pop/esclasses/c;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/impl/local/c;Lcom/estrongs/android/pop/esclasses/ESActivity;[Lcom/estrongs/android/pop/esclasses/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/local/b;->a:Lcom/estrongs/fs/impl/local/c;

    iput-object p2, p0, Lcom/estrongs/fs/impl/local/b;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iput-object p3, p0, Lcom/estrongs/fs/impl/local/b;->c:[Lcom/estrongs/android/pop/esclasses/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 3

    const v0, 0x100101f

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/impl/local/b;->a:Lcom/estrongs/fs/impl/local/c;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/estrongs/fs/impl/local/c;->a(Landroid/net/Uri;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/local/b;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iget-object v1, p0, Lcom/estrongs/fs/impl/local/b;->c:[Lcom/estrongs/android/pop/esclasses/c;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->b(Lcom/estrongs/android/pop/esclasses/c;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/local/b;->a:Lcom/estrongs/fs/impl/local/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/estrongs/fs/impl/local/c;->a(Landroid/net/Uri;)V

    goto :goto_0
.end method
