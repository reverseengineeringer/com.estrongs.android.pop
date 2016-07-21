.class Lcom/estrongs/android/ui/dialog/dt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/dp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/dp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/dt;->a:Lcom/estrongs/android/ui/dialog/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dt;->a:Lcom/estrongs/android/ui/dialog/dp;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/dp;->b()V

    return-void
.end method
