.class Lcom/estrongs/android/view/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/io/archive/h;

.field final synthetic b:Lcom/estrongs/android/view/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/e;Lcom/estrongs/io/archive/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/j;->b:Lcom/estrongs/android/view/e;

    iput-object p2, p0, Lcom/estrongs/android/view/j;->a:Lcom/estrongs/io/archive/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/estrongs/android/pop/app/compress/be;

    iget-object v1, p0, Lcom/estrongs/android/view/j;->b:Lcom/estrongs/android/view/e;

    iget-object v1, v1, Lcom/estrongs/android/view/e;->ad:Landroid/app/Activity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/compress/be;-><init>(Landroid/content/Context;ZZ)V

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/estrongs/android/view/j;->b:Lcom/estrongs/android/view/e;

    const v3, 0x7f0b000b

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/e;->l(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/view/k;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/view/k;-><init>(Lcom/estrongs/android/view/j;Lcom/estrongs/android/pop/app/compress/be;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/compress/be;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/estrongs/android/view/j;->b:Lcom/estrongs/android/view/e;

    const v3, 0x7f0b000c

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/e;->l(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/view/l;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/view/l;-><init>(Lcom/estrongs/android/view/j;Lcom/estrongs/android/pop/app/compress/be;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/compress/be;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/be;->show()V

    return-void
.end method
