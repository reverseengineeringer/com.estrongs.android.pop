.class Lcom/estrongs/android/pop/app/cp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/GestureManageActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/GestureManageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cp;->a:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cp;->a:Lcom/estrongs/android/pop/app/GestureManageActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/GestureManageActivity;->setResult(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cp;->a:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->finish()V

    const/4 v0, 0x0

    return v0
.end method
