.class Lcom/estrongs/android/pop/app/compress/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/cb;

.field final synthetic b:Lcom/estrongs/android/pop/app/compress/p;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/p;Lcom/estrongs/android/pop/app/compress/cb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/r;->b:Lcom/estrongs/android/pop/app/compress/p;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/compress/r;->a:Lcom/estrongs/android/pop/app/compress/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/r;->a:Lcom/estrongs/android/pop/app/compress/cb;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/cb;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/r;->b:Lcom/estrongs/android/pop/app/compress/p;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/p;->b:Lcom/estrongs/android/pop/app/compress/o;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/o;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->n(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/e;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/r;->b:Lcom/estrongs/android/pop/app/compress/p;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/p;->b:Lcom/estrongs/android/pop/app/compress/o;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/o;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->n(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/e;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/estrongs/io/archive/e;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/e;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
