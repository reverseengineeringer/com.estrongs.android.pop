.class Lcom/estrongs/android/ui/dialog/jw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/jh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/jh;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/jw;->b:Lcom/estrongs/android/ui/dialog/jh;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/jw;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jw;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "clean://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Ljava/lang/String;)Lcom/estrongs/android/view/cr;

    return-void
.end method
