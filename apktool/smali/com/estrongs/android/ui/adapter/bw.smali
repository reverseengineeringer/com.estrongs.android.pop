.class Lcom/estrongs/android/ui/adapter/bw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/adapter/bv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/bv;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/bw;->a:Lcom/estrongs/android/ui/adapter/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/bw;->a:Lcom/estrongs/android/ui/adapter/bv;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/bv;->b:Lcom/estrongs/android/ui/adapter/bu;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/bu;->a:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Landroid/content/Context;)V

    return-void
.end method
