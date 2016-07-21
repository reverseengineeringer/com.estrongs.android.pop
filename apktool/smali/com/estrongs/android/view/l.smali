.class Lcom/estrongs/android/view/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/io/archive/i;

.field final synthetic b:Lcom/estrongs/android/view/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/g;Lcom/estrongs/io/archive/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/l;->b:Lcom/estrongs/android/view/g;

    iput-object p2, p0, Lcom/estrongs/android/view/l;->a:Lcom/estrongs/io/archive/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/estrongs/android/pop/app/compress/cb;

    iget-object v1, p0, Lcom/estrongs/android/view/l;->b:Lcom/estrongs/android/view/g;

    iget-object v1, v1, Lcom/estrongs/android/view/g;->ag:Landroid/app/Activity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/compress/cb;-><init>(Landroid/content/Context;ZZ)V

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/estrongs/android/view/l;->b:Lcom/estrongs/android/view/g;

    const v3, 0x7f080226

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/g;->j(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/view/m;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/view/m;-><init>(Lcom/estrongs/android/view/l;Lcom/estrongs/android/pop/app/compress/cb;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/compress/cb;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/estrongs/android/view/l;->b:Lcom/estrongs/android/view/g;

    const v3, 0x7f080221

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/g;->j(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/view/n;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/view/n;-><init>(Lcom/estrongs/android/view/l;Lcom/estrongs/android/pop/app/compress/cb;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/compress/cb;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/cb;->show()V

    return-void
.end method
