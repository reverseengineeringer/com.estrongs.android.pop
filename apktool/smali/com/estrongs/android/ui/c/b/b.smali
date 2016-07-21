.class Lcom/estrongs/android/ui/c/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/c/b/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/b;->b:Lcom/estrongs/android/ui/c/b/a;

    iput-object p2, p0, Lcom/estrongs/android/ui/c/b/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/b;->b:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/a;->a(Lcom/estrongs/android/ui/c/b/a;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Ljava/lang/String;)Lcom/estrongs/android/view/cr;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/b;->b:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/a;->a(Lcom/estrongs/android/ui/c/b/a;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/j/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
