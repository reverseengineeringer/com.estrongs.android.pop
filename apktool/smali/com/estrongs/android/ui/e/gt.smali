.class Lcom/estrongs/android/ui/e/gt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a;

.field final synthetic b:Lcom/estrongs/android/ui/e/gs;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/gs;Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/gt;->b:Lcom/estrongs/android/ui/e/gs;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/gt;->a:Lcom/estrongs/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gt;->a:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/a/p;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gt;->b:Lcom/estrongs/android/ui/e/gs;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/gs;->a:Lcom/estrongs/android/ui/e/gr;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/gr;->b:Lcom/estrongs/android/ui/e/gp;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/gp;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const v1, 0x7f0802b1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/gt;->b:Lcom/estrongs/android/ui/e/gs;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/gs;->a:Lcom/estrongs/android/ui/e/gr;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/gr;->b:Lcom/estrongs/android/ui/e/gp;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/gp;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const v1, 0x7f0802ae

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method
