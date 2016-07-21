.class Lcom/estrongs/android/ui/adapter/ci;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/adapter/a;

.field final synthetic b:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;Lcom/estrongs/android/ui/adapter/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/ci;->b:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    iput-object p2, p0, Lcom/estrongs/android/ui/adapter/ci;->a:Lcom/estrongs/android/ui/adapter/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ci;->b:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/ci;->a:Lcom/estrongs/android/ui/adapter/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/adapter/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)V

    return-void
.end method
