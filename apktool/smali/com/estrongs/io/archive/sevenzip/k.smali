.class Lcom/estrongs/io/archive/sevenzip/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/ad;

.field final synthetic b:Lcom/estrongs/io/archive/sevenzip/j;


# direct methods
.method constructor <init>(Lcom/estrongs/io/archive/sevenzip/j;Lcom/estrongs/fs/b/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/io/archive/sevenzip/k;->b:Lcom/estrongs/io/archive/sevenzip/j;

    iput-object p2, p0, Lcom/estrongs/io/archive/sevenzip/k;->a:Lcom/estrongs/fs/b/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/estrongs/io/archive/sevenzip/l;

    iget-object v1, p0, Lcom/estrongs/io/archive/sevenzip/k;->b:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v1, v1, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v1, v1, Lcom/estrongs/io/archive/sevenzip/h;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/io/archive/sevenzip/k;->b:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v2, v2, Lcom/estrongs/io/archive/sevenzip/j;->a:[Ljava/lang/String;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/estrongs/io/archive/sevenzip/k;->a:Lcom/estrongs/fs/b/ad;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/estrongs/io/archive/sevenzip/l;-><init>(Lcom/estrongs/io/archive/sevenzip/k;Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/dialog/ix;->a(Z)Lcom/estrongs/android/ui/dialog/ix;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ix;->show()V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ix;->c()V

    return-void
.end method
