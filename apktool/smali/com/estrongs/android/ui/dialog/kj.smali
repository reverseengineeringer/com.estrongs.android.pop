.class Lcom/estrongs/android/ui/dialog/kj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/kh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/kh;Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/kj;->b:Lcom/estrongs/android/ui/dialog/kh;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/kj;->a:Lcom/estrongs/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kj;->a:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->canCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kj;->b:Lcom/estrongs/android/ui/dialog/kh;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/kh;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kj;->a:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->requestStop()V

    :cond_0
    return-void
.end method
