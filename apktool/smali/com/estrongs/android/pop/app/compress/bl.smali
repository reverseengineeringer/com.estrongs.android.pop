.class Lcom/estrongs/android/pop/app/compress/bl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/io/archive/i;

.field final synthetic b:Lcom/estrongs/android/pop/app/compress/bk;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/bk;Lcom/estrongs/io/archive/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bl;->b:Lcom/estrongs/android/pop/app/compress/bk;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/compress/bl;->a:Lcom/estrongs/io/archive/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/estrongs/android/pop/app/compress/cb;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/bl;->b:Lcom/estrongs/android/pop/app/compress/bk;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/bk;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/bb;->g(Lcom/estrongs/android/pop/app/compress/bb;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/compress/cb;-><init>(Landroid/content/Context;ZZ)V

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/bl;->b:Lcom/estrongs/android/pop/app/compress/bk;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/compress/bk;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/bb;->g(Lcom/estrongs/android/pop/app/compress/bb;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080226

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/app/compress/bm;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/pop/app/compress/bm;-><init>(Lcom/estrongs/android/pop/app/compress/bl;Lcom/estrongs/android/pop/app/compress/cb;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/compress/cb;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/bl;->b:Lcom/estrongs/android/pop/app/compress/bk;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/compress/bk;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/bb;->g(Lcom/estrongs/android/pop/app/compress/bb;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080221

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/app/compress/bn;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/pop/app/compress/bn;-><init>(Lcom/estrongs/android/pop/app/compress/bl;Lcom/estrongs/android/pop/app/compress/cb;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/compress/cb;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/estrongs/android/pop/app/compress/bo;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/compress/bo;-><init>(Lcom/estrongs/android/pop/app/compress/bl;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/compress/cb;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/cb;->show()V

    return-void
.end method
