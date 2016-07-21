.class Lcom/estrongs/android/ui/navigation/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/navigation/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/navigation/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/e;->a:Lcom/estrongs/android/ui/navigation/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/e;->a:Lcom/estrongs/android/ui/navigation/c;

    iget-object v0, v0, Lcom/estrongs/android/ui/navigation/c;->a:Lcom/estrongs/android/ui/navigation/MultiWindowActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->finish()V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/e;->a:Lcom/estrongs/android/ui/navigation/c;

    iget-object v0, v0, Lcom/estrongs/android/ui/navigation/c;->a:Lcom/estrongs/android/ui/navigation/MultiWindowActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->b(Lcom/estrongs/android/ui/navigation/MultiWindowActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/navigation/f;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/navigation/f;-><init>(Lcom/estrongs/android/ui/navigation/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
