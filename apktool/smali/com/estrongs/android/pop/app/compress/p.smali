.class Lcom/estrongs/android/pop/app/compress/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/io/archive/h;

.field final synthetic b:Lcom/estrongs/android/pop/app/compress/o;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/o;Lcom/estrongs/io/archive/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/p;->b:Lcom/estrongs/android/pop/app/compress/o;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/compress/p;->a:Lcom/estrongs/io/archive/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/estrongs/android/pop/app/compress/be;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/p;->b:Lcom/estrongs/android/pop/app/compress/o;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/o;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->d(Lcom/estrongs/android/pop/app/compress/l;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/compress/be;-><init>(Landroid/content/Context;ZZ)V

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/p;->b:Lcom/estrongs/android/pop/app/compress/o;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/compress/o;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/l;->d(Lcom/estrongs/android/pop/app/compress/l;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b000b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/app/compress/q;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/pop/app/compress/q;-><init>(Lcom/estrongs/android/pop/app/compress/p;Lcom/estrongs/android/pop/app/compress/be;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/compress/be;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/p;->b:Lcom/estrongs/android/pop/app/compress/o;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/compress/o;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/l;->d(Lcom/estrongs/android/pop/app/compress/l;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b000c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/app/compress/r;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/pop/app/compress/r;-><init>(Lcom/estrongs/android/pop/app/compress/p;Lcom/estrongs/android/pop/app/compress/be;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/compress/be;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/estrongs/android/pop/app/compress/s;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/compress/s;-><init>(Lcom/estrongs/android/pop/app/compress/p;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/compress/be;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/be;->show()V

    return-void
.end method
