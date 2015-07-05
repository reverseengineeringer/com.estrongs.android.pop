.class Lcom/estrongs/android/ui/e/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/gy;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/ae;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/af;->a:Lcom/estrongs/android/ui/e/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/af;->a:Lcom/estrongs/android/ui/e/ae;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ae;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/af;->a:Lcom/estrongs/android/ui/e/ae;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ae;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/w;->i(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/gu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/gu;->dismiss()V

    return-void
.end method
