.class Lcom/estrongs/android/ui/dialog/ed;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/dx;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/dx;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ed;->a:Lcom/estrongs/android/ui/dialog/dx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ed;->a:Lcom/estrongs/android/ui/dialog/dx;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/dx;->a(Lcom/estrongs/android/ui/dialog/dx;)Lcom/estrongs/android/ui/dialog/ee;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ee;->b()V

    return-void
.end method
