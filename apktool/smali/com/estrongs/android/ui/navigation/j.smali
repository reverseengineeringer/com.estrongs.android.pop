.class Lcom/estrongs/android/ui/navigation/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/gj;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/navigation/i;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/navigation/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/j;->a:Lcom/estrongs/android/ui/navigation/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/j;->a:Lcom/estrongs/android/ui/navigation/i;

    iget-object v0, v0, Lcom/estrongs/android/ui/navigation/i;->a:Lcom/estrongs/android/ui/navigation/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/h;->b(Lcom/estrongs/android/ui/navigation/h;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/j;->a:Lcom/estrongs/android/ui/navigation/i;

    iget-object v0, v0, Lcom/estrongs/android/ui/navigation/i;->a:Lcom/estrongs/android/ui/navigation/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/h;->c(Lcom/estrongs/android/ui/navigation/h;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Ljava/lang/String;)Lcom/estrongs/android/view/cr;

    return-void
.end method
