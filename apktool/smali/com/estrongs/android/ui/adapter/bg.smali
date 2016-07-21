.class Lcom/estrongs/android/ui/adapter/bg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/bg;->a:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/bg;->a:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/w;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/bg;->a:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->h(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/j/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/bg;->a:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->h(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "TaskManager_Show"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
