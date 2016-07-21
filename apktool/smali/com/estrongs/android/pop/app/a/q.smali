.class final Lcom/estrongs/android/pop/app/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/q;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/q;->a:Landroid/app/Activity;

    const-string v2, "lock_realtimemonitor"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/unlock/s;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/q;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/a/n;->a(Landroid/app/Activity;Z)V

    return-void
.end method
