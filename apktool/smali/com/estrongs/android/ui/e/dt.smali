.class Lcom/estrongs/android/ui/e/dt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/dr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/dr;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/dt;->a:Lcom/estrongs/android/ui/e/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/dt;->a:Lcom/estrongs/android/ui/e/dr;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/dr;->a:Lcom/estrongs/android/ui/e/dq;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/dq;->a:Lcom/estrongs/android/ui/e/dp;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/dp;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const-string v1, "encrypt://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f(Ljava/lang/String;)Lcom/estrongs/android/view/cr;

    return-void
.end method
