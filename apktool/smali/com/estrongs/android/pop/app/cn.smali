.class Lcom/estrongs/android/pop/app/cn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ip;

.field final synthetic b:Lcom/estrongs/android/pop/app/cm;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cm;Lcom/estrongs/android/ui/dialog/ip;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cn;->b:Lcom/estrongs/android/pop/app/cm;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/cn;->a:Lcom/estrongs/android/ui/dialog/ip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cn;->a:Lcom/estrongs/android/ui/dialog/ip;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ip;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/estrongs/android/ui/dialog/ff;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cn;->b:Lcom/estrongs/android/pop/app/cm;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/cm;->a:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-direct {v1, v2, v0}, Lcom/estrongs/android/ui/dialog/ff;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/ff;->a()V

    new-instance v0, Lcom/estrongs/android/pop/app/co;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/co;-><init>(Lcom/estrongs/android/pop/app/cn;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/ff;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method
