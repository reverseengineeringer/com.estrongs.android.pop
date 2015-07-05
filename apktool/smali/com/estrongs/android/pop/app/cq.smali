.class Lcom/estrongs/android/pop/app/cq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/a/a;

.field final synthetic b:Lcom/estrongs/android/view/a/a;

.field final synthetic c:Lcom/estrongs/android/pop/app/GestureManageActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/GestureManageActivity;Lcom/estrongs/android/view/a/a;Lcom/estrongs/android/view/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cq;->c:Lcom/estrongs/android/pop/app/GestureManageActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/cq;->a:Lcom/estrongs/android/view/a/a;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/cq;->b:Lcom/estrongs/android/view/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cq;->c:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->b(Lcom/estrongs/android/pop/app/GestureManageActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b0401

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cq;->a:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/view/a/a;->d(Z)Lcom/estrongs/android/view/a/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cq;->b:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/view/a/a;->d(Z)Lcom/estrongs/android/view/a/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cq;->c:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->a(Lcom/estrongs/android/pop/app/GestureManageActivity;)Lcom/estrongs/android/ui/a/w;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/ui/a/w;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cq;->c:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->c(Lcom/estrongs/android/pop/app/GestureManageActivity;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/ad;->m(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cq;->c:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->b(Lcom/estrongs/android/pop/app/GestureManageActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b040f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
