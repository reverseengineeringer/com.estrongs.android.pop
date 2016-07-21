.class Lcom/estrongs/android/pop/app/compress/bn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/cb;

.field final synthetic b:Lcom/estrongs/android/pop/app/compress/bl;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/bl;Lcom/estrongs/android/pop/app/compress/cb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bn;->b:Lcom/estrongs/android/pop/app/compress/bl;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/compress/bn;->a:Lcom/estrongs/android/pop/app/compress/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bn;->a:Lcom/estrongs/android/pop/app/compress/cb;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/cb;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bn;->b:Lcom/estrongs/android/pop/app/compress/bl;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/bl;->b:Lcom/estrongs/android/pop/app/compress/bk;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/bk;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/bb;->i(Lcom/estrongs/android/pop/app/compress/bb;)Lcom/estrongs/io/archive/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/bn;->b:Lcom/estrongs/android/pop/app/compress/bl;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/bl;->b:Lcom/estrongs/android/pop/app/compress/bk;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/bk;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/bb;->i(Lcom/estrongs/android/pop/app/compress/bb;)Lcom/estrongs/io/archive/c;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/estrongs/io/archive/c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/c;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
