.class Lcom/estrongs/android/ui/pcs/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/e;->a:Lcom/estrongs/android/ui/pcs/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/e;->a:Lcom/estrongs/android/ui/pcs/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/c;->a(Lcom/estrongs/android/ui/pcs/c;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/e;->a:Lcom/estrongs/android/ui/pcs/c;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/e;->a:Lcom/estrongs/android/ui/pcs/c;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/c;->e(Lcom/estrongs/android/ui/pcs/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/c;->b(Lcom/estrongs/android/ui/pcs/c;Ljava/lang/String;)V

    return-void
.end method
