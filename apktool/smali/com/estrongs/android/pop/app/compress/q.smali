.class Lcom/estrongs/android/pop/app/compress/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/cb;

.field final synthetic b:Lcom/estrongs/android/pop/app/compress/p;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/p;Lcom/estrongs/android/pop/app/compress/cb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/q;->b:Lcom/estrongs/android/pop/app/compress/p;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/compress/q;->a:Lcom/estrongs/android/pop/app/compress/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/q;->a:Lcom/estrongs/android/pop/app/compress/cb;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/cb;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/q;->b:Lcom/estrongs/android/pop/app/compress/p;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/p;->a:Lcom/estrongs/io/archive/i;

    invoke-virtual {v1, v0}, Lcom/estrongs/io/archive/i;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/q;->b:Lcom/estrongs/android/pop/app/compress/p;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/p;->b:Lcom/estrongs/android/pop/app/compress/o;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/o;->a:Lcom/estrongs/android/pop/app/compress/l;

    iput-object v0, v1, Lcom/estrongs/android/pop/app/compress/l;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/q;->a:Lcom/estrongs/android/pop/app/compress/cb;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/cb;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/q;->b:Lcom/estrongs/android/pop/app/compress/p;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/p;->b:Lcom/estrongs/android/pop/app/compress/o;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/o;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->l(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/q;->b:Lcom/estrongs/android/pop/app/compress/p;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/p;->b:Lcom/estrongs/android/pop/app/compress/o;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/o;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->m(Lcom/estrongs/android/pop/app/compress/l;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/q;->b:Lcom/estrongs/android/pop/app/compress/p;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/p;->b:Lcom/estrongs/android/pop/app/compress/o;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/o;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->d(Lcom/estrongs/android/pop/app/compress/l;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080428

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method
