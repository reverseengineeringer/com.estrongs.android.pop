.class Lcom/estrongs/android/ui/navigation/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/gj;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/navigation/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/navigation/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/d;->a:Lcom/estrongs/android/ui/navigation/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Ljava/lang/String;)Lcom/estrongs/android/view/cr;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/d;->a:Lcom/estrongs/android/ui/navigation/c;

    iget-object v0, v0, Lcom/estrongs/android/ui/navigation/c;->a:Lcom/estrongs/android/ui/navigation/MultiWindowActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->finish()V

    return-void
.end method
