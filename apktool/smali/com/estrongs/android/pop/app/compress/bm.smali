.class Lcom/estrongs/android/pop/app/compress/bm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/cb;

.field final synthetic b:Lcom/estrongs/android/pop/app/compress/bl;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/bl;Lcom/estrongs/android/pop/app/compress/cb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bm;->b:Lcom/estrongs/android/pop/app/compress/bl;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/compress/bm;->a:Lcom/estrongs/android/pop/app/compress/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bm;->a:Lcom/estrongs/android/pop/app/compress/cb;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/cb;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/bm;->b:Lcom/estrongs/android/pop/app/compress/bl;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/bl;->a:Lcom/estrongs/io/archive/i;

    invoke-virtual {v1, v0}, Lcom/estrongs/io/archive/i;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/bm;->b:Lcom/estrongs/android/pop/app/compress/bl;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/bl;->b:Lcom/estrongs/android/pop/app/compress/bk;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/bk;->a:Lcom/estrongs/android/pop/app/compress/bb;

    iput-object v0, v1, Lcom/estrongs/android/pop/app/compress/bb;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bm;->a:Lcom/estrongs/android/pop/app/compress/cb;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/cb;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bm;->b:Lcom/estrongs/android/pop/app/compress/bl;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/bl;->b:Lcom/estrongs/android/pop/app/compress/bk;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/bk;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/bb;->h(Lcom/estrongs/android/pop/app/compress/bb;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bm;->b:Lcom/estrongs/android/pop/app/compress/bl;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/bl;->b:Lcom/estrongs/android/pop/app/compress/bk;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/bk;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/bb;->g(Lcom/estrongs/android/pop/app/compress/bb;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080428

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method
