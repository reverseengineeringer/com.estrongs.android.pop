.class Lcom/estrongs/android/pop/app/cr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/GestureManageActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/GestureManageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cr;->a:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/dialog/iy;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cr;->a:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/iy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/iy;->b()V

    new-instance v1, Lcom/estrongs/android/pop/app/cs;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/app/cs;-><init>(Lcom/estrongs/android/pop/app/cr;Lcom/estrongs/android/ui/dialog/iy;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/iy;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v0, 0x0

    return v0
.end method
