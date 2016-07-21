.class Lcom/estrongs/android/ui/adapter/cu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/cu;->a:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/dialog/ff;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/cu;->a:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ff;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ff;->a()V

    return-void
.end method
