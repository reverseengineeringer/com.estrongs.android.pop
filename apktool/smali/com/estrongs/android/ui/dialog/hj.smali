.class Lcom/estrongs/android/ui/dialog/hj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/util/m;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/hf;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hf;Lcom/estrongs/android/util/m;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hj;->b:Lcom/estrongs/android/ui/dialog/hf;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/hj;->a:Lcom/estrongs/android/util/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hj;->a:Lcom/estrongs/android/util/m;

    invoke-virtual {v0}, Lcom/estrongs/android/util/m;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hj;->a:Lcom/estrongs/android/util/m;

    invoke-virtual {v0}, Lcom/estrongs/android/util/m;->a()V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
