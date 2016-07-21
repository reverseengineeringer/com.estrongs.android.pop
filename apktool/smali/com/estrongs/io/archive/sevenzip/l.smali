.class Lcom/estrongs/io/archive/sevenzip/l;
.super Lcom/estrongs/android/ui/dialog/jh;


# instance fields
.field final synthetic a:Lcom/estrongs/io/archive/sevenzip/k;


# direct methods
.method constructor <init>(Lcom/estrongs/io/archive/sevenzip/k;Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/io/archive/sevenzip/l;->a:Lcom/estrongs/io/archive/sevenzip/k;

    invoke-direct {p0, p2, p3, p4}, Lcom/estrongs/android/ui/dialog/jh;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Lcom/estrongs/a/p;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/l;->a:Lcom/estrongs/io/archive/sevenzip/k;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/k;->b:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/h;->b:Landroid/app/Activity;

    const v1, 0x7f08029e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/estrongs/io/archive/sevenzip/l;->a:Lcom/estrongs/io/archive/sevenzip/k;

    iget-object v4, v4, Lcom/estrongs/io/archive/sevenzip/k;->b:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v4, v4, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v4, v4, Lcom/estrongs/io/archive/sevenzip/h;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
