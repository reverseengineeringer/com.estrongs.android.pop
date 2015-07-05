.class Lcom/estrongs/android/ui/pcs/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/c;->a:Lcom/estrongs/android/ui/pcs/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->a:Lcom/estrongs/android/ui/pcs/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/a;->a(Lcom/estrongs/android/ui/pcs/a;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->a:Lcom/estrongs/android/ui/pcs/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/c;->a:Lcom/estrongs/android/ui/pcs/a;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/a;->e(Lcom/estrongs/android/ui/pcs/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/a;->b(Lcom/estrongs/android/ui/pcs/a;Ljava/lang/String;)V

    return-void
.end method
