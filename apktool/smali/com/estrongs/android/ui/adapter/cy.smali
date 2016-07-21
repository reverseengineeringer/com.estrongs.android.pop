.class Lcom/estrongs/android/ui/adapter/cy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/adapter/cx;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/cx;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/cy;->a:Lcom/estrongs/android/ui/adapter/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/cy;->a:Lcom/estrongs/android/ui/adapter/cx;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cx;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Landroid/content/Context;)V

    return-void
.end method
