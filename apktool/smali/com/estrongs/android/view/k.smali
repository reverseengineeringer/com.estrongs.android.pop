.class Lcom/estrongs/android/view/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/be;

.field final synthetic b:Lcom/estrongs/android/view/j;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/j;Lcom/estrongs/android/pop/app/compress/be;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/k;->b:Lcom/estrongs/android/view/j;

    iput-object p2, p0, Lcom/estrongs/android/view/k;->a:Lcom/estrongs/android/pop/app/compress/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/k;->a:Lcom/estrongs/android/pop/app/compress/be;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/be;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/k;->b:Lcom/estrongs/android/view/j;

    iget-object v1, v1, Lcom/estrongs/android/view/j;->a:Lcom/estrongs/io/archive/h;

    invoke-virtual {v1, v0}, Lcom/estrongs/io/archive/h;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/k;->b:Lcom/estrongs/android/view/j;

    iget-object v1, v1, Lcom/estrongs/android/view/j;->b:Lcom/estrongs/android/view/e;

    iput-object v0, v1, Lcom/estrongs/android/view/e;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/k;->a:Lcom/estrongs/android/pop/app/compress/be;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/be;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/view/k;->b:Lcom/estrongs/android/view/j;

    iget-object v0, v0, Lcom/estrongs/android/view/j;->b:Lcom/estrongs/android/view/e;

    new-instance v1, Lcom/estrongs/android/view/r;

    iget-object v2, p0, Lcom/estrongs/android/view/k;->b:Lcom/estrongs/android/view/j;

    iget-object v2, v2, Lcom/estrongs/android/view/j;->b:Lcom/estrongs/android/view/e;

    invoke-direct {v1, v2}, Lcom/estrongs/android/view/r;-><init>(Lcom/estrongs/android/view/e;)V

    invoke-static {v0, v1}, Lcom/estrongs/android/view/e;->a(Lcom/estrongs/android/view/e;Lcom/estrongs/android/view/r;)Lcom/estrongs/android/view/r;

    iget-object v0, p0, Lcom/estrongs/android/view/k;->b:Lcom/estrongs/android/view/j;

    iget-object v0, v0, Lcom/estrongs/android/view/j;->b:Lcom/estrongs/android/view/e;

    invoke-static {v0}, Lcom/estrongs/android/view/e;->d(Lcom/estrongs/android/view/e;)Lcom/estrongs/android/view/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/r;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/k;->b:Lcom/estrongs/android/view/j;

    iget-object v0, v0, Lcom/estrongs/android/view/j;->b:Lcom/estrongs/android/view/e;

    iget-object v0, v0, Lcom/estrongs/android/view/e;->ae:Landroid/content/Context;

    const v1, 0x7f0b0239

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method
