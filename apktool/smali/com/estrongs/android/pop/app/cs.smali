.class Lcom/estrongs/android/pop/app/cs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/iy;

.field final synthetic b:Lcom/estrongs/android/pop/app/cr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cr;Lcom/estrongs/android/ui/dialog/iy;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cs;->b:Lcom/estrongs/android/pop/app/cr;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/ui/dialog/iy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cs;->a:Lcom/estrongs/android/ui/dialog/iy;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/iy;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/estrongs/android/ui/dialog/fi;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cs;->b:Lcom/estrongs/android/pop/app/cr;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/cr;->a:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-direct {v1, v2, v0}, Lcom/estrongs/android/ui/dialog/fi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/fi;->a()V

    new-instance v0, Lcom/estrongs/android/pop/app/ct;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ct;-><init>(Lcom/estrongs/android/pop/app/cs;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/fi;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method
