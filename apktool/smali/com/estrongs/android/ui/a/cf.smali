.class Lcom/estrongs/android/ui/a/cf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/ce;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/ce;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/cf;->a:Lcom/estrongs/android/ui/a/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cf;->a:Lcom/estrongs/android/ui/a/ce;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/ce;->a:Lcom/estrongs/android/ui/a/cd;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/cd;->d:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/aa;->a(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/a/cf;->a:Lcom/estrongs/android/ui/a/ce;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/ce;->a:Lcom/estrongs/android/ui/a/cd;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/cd;->c:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)Lcom/estrongs/android/view/aw;

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cf;->a:Lcom/estrongs/android/ui/a/ce;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/ce;->a:Lcom/estrongs/android/ui/a/cd;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/cd;->d:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/aa;->a(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/a/cf;->a:Lcom/estrongs/android/ui/a/ce;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/ce;->a:Lcom/estrongs/android/ui/a/cd;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/cd;->c:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
