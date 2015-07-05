.class Lcom/estrongs/android/pop/view/dm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/n;

.field final synthetic b:Lcom/estrongs/android/pop/view/dk;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/dk;Lcom/estrongs/android/ui/pcs/n;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/dm;->b:Lcom/estrongs/android/pop/view/dk;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/dm;->a:Lcom/estrongs/android/ui/pcs/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dm;->b:Lcom/estrongs/android/pop/view/dk;

    const v2, 0x7f0b0508

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/view/dk;->a(Lcom/estrongs/android/pop/view/dk;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    new-instance v0, Lcom/estrongs/android/ui/pcs/j;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dm;->b:Lcom/estrongs/android/pop/view/dk;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/dk;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/j;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dm;->a:Lcom/estrongs/android/ui/pcs/n;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/j;->a(Lcom/estrongs/android/ui/pcs/n;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/j;->a(Z)V

    return-void
.end method
