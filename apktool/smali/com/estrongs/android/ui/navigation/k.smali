.class Lcom/estrongs/android/ui/navigation/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/navigation/i;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/navigation/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/k;->a:Lcom/estrongs/android/ui/navigation/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/k;->a:Lcom/estrongs/android/ui/navigation/i;

    iget-object v0, v0, Lcom/estrongs/android/ui/navigation/i;->a:Lcom/estrongs/android/ui/navigation/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/h;->b(Lcom/estrongs/android/ui/navigation/h;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/k;->a:Lcom/estrongs/android/ui/navigation/i;

    iget-object v0, v0, Lcom/estrongs/android/ui/navigation/i;->a:Lcom/estrongs/android/ui/navigation/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/h;->a(Lcom/estrongs/android/ui/navigation/h;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/navigation/l;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/navigation/l;-><init>(Lcom/estrongs/android/ui/navigation/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
