.class Lcom/estrongs/android/pop/app/diskusage/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/diskusage/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/p;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/p;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->x(Lcom/estrongs/android/pop/app/diskusage/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/p;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->H(Lcom/estrongs/android/pop/app/diskusage/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/p;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/h;->b(Lcom/estrongs/android/pop/app/diskusage/h;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/p;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->i(Lcom/estrongs/android/pop/app/diskusage/h;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/p;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/h;->a(Lcom/estrongs/android/pop/app/diskusage/h;Lcom/estrongs/android/widget/bh;)Lcom/estrongs/android/widget/bh;

    goto :goto_0
.end method
