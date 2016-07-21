.class Lcom/estrongs/android/ui/e/hf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/he;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/he;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/hf;->a:Lcom/estrongs/android/ui/e/he;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hf;->a:Lcom/estrongs/android/ui/e/he;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/he;->a:Lcom/estrongs/android/ui/e/hd;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/hd;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->al()V

    return-void
.end method
