.class Lcom/estrongs/android/pop/app/cq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/GestureManageActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/GestureManageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cq;->a:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cq;->a:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->a(Lcom/estrongs/android/pop/app/GestureManageActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080330

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cq;->a:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->b(Lcom/estrongs/android/pop/app/GestureManageActivity;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/view/a/a;->d(Z)Lcom/estrongs/android/view/a/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cq;->a:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->c(Lcom/estrongs/android/pop/app/GestureManageActivity;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/view/a/a;->d(Z)Lcom/estrongs/android/view/a/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cq;->a:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->d(Lcom/estrongs/android/pop/app/GestureManageActivity;)Lcom/estrongs/android/ui/adapter/y;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/ui/adapter/y;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cq;->a:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->e(Lcom/estrongs/android/pop/app/GestureManageActivity;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/ad;->l(Z)V

    sput-boolean p2, Lcom/estrongs/android/ui/guesture/b;->b:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cq;->a:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->invalidateOptionsMenu()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cq;->a:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->a(Lcom/estrongs/android/pop/app/GestureManageActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f08032f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
