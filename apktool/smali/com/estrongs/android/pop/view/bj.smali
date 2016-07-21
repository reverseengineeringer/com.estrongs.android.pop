.class Lcom/estrongs/android/pop/view/bj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/q;

.field final synthetic b:Lcom/estrongs/android/pop/view/bh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/bh;Lcom/estrongs/android/ui/pcs/q;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bj;->b:Lcom/estrongs/android/pop/view/bh;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/bj;->a:Lcom/estrongs/android/ui/pcs/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bj;->b:Lcom/estrongs/android/pop/view/bh;

    const v2, 0x7f0804c1

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/view/bh;->a(Lcom/estrongs/android/pop/view/bh;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    new-instance v0, Lcom/estrongs/android/ui/pcs/l;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bj;->b:Lcom/estrongs/android/pop/view/bh;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/bh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/l;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bj;->a:Lcom/estrongs/android/ui/pcs/q;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/l;->a(Lcom/estrongs/android/ui/pcs/q;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/l;->a(Z)V

    return-void
.end method
