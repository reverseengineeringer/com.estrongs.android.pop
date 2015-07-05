.class Lcom/estrongs/android/pop/app/kq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/SaveToESActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/SaveToESActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/kq;->a:Lcom/estrongs/android/pop/app/SaveToESActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/kq;->a:Lcom/estrongs/android/pop/app/SaveToESActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/kq;->a:Lcom/estrongs/android/pop/app/SaveToESActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/SaveToESActivity;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/SaveToESActivity;->a(Lcom/estrongs/android/pop/app/SaveToESActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/kq;->a:Lcom/estrongs/android/pop/app/SaveToESActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/SaveToESActivity;->a:Lcom/estrongs/android/widget/g;

    new-instance v1, Lcom/estrongs/android/pop/app/kr;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/kr;-><init>(Lcom/estrongs/android/pop/app/kq;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/g;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/kq;->a:Lcom/estrongs/android/pop/app/SaveToESActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/SaveToESActivity;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->k()V

    return-void
.end method
