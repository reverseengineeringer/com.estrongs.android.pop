.class Lcom/estrongs/android/view/bc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/cb;

.field final synthetic b:Lcom/estrongs/android/view/bb;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/bb;Lcom/estrongs/android/pop/app/compress/cb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bc;->b:Lcom/estrongs/android/view/bb;

    iput-object p2, p0, Lcom/estrongs/android/view/bc;->a:Lcom/estrongs/android/pop/app/compress/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/bc;->a:Lcom/estrongs/android/pop/app/compress/cb;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/cb;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/bc;->b:Lcom/estrongs/android/view/bb;

    iget-object v1, v1, Lcom/estrongs/android/view/bb;->a:Lcom/estrongs/io/archive/i;

    invoke-virtual {v1, v0}, Lcom/estrongs/io/archive/i;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/bc;->b:Lcom/estrongs/android/view/bb;

    iget-object v1, v1, Lcom/estrongs/android/view/bb;->b:Lcom/estrongs/android/view/ak;

    iput-object v0, v1, Lcom/estrongs/android/view/ak;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/bc;->a:Lcom/estrongs/android/pop/app/compress/cb;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/cb;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/view/bc;->b:Lcom/estrongs/android/view/bb;

    iget-object v0, v0, Lcom/estrongs/android/view/bb;->b:Lcom/estrongs/android/view/ak;

    new-instance v1, Lcom/estrongs/android/view/bg;

    iget-object v2, p0, Lcom/estrongs/android/view/bc;->b:Lcom/estrongs/android/view/bb;

    iget-object v2, v2, Lcom/estrongs/android/view/bb;->b:Lcom/estrongs/android/view/ak;

    invoke-direct {v1, v2}, Lcom/estrongs/android/view/bg;-><init>(Lcom/estrongs/android/view/ak;)V

    invoke-static {v0, v1}, Lcom/estrongs/android/view/ak;->a(Lcom/estrongs/android/view/ak;Lcom/estrongs/android/view/bg;)Lcom/estrongs/android/view/bg;

    iget-object v0, p0, Lcom/estrongs/android/view/bc;->b:Lcom/estrongs/android/view/bb;

    iget-object v0, v0, Lcom/estrongs/android/view/bb;->b:Lcom/estrongs/android/view/ak;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->d(Lcom/estrongs/android/view/ak;)Lcom/estrongs/android/view/bg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/bg;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/bc;->b:Lcom/estrongs/android/view/bb;

    iget-object v0, v0, Lcom/estrongs/android/view/bb;->b:Lcom/estrongs/android/view/ak;

    iget-object v0, v0, Lcom/estrongs/android/view/ak;->ah:Landroid/content/Context;

    const v1, 0x7f080428

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method
