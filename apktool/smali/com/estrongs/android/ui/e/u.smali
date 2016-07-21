.class Lcom/estrongs/android/ui/e/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/hb;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/t;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/t;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/u;->a:Lcom/estrongs/android/ui/e/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/u;->a:Lcom/estrongs/android/ui/e/t;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/t;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/u;->a:Lcom/estrongs/android/ui/e/t;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/t;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->h(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/gx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/gx;->dismiss()V

    return-void
.end method
