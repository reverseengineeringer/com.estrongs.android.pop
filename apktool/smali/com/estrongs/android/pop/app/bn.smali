.class Lcom/estrongs/android/pop/app/bn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/pcs/n;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/android/pop/app/ESFileSharingActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ESFileSharingActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bn;->c:Lcom/estrongs/android/pop/app/ESFileSharingActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/bn;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/bn;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bn;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bn;->b:Ljava/lang/String;

    new-instance v2, Lcom/estrongs/android/pop/app/bo;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/bo;-><init>(Lcom/estrongs/android/pop/app/bn;)V

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/utils/aj;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bn;->c:Lcom/estrongs/android/pop/app/ESFileSharingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->a(Lcom/estrongs/android/pop/app/ESFileSharingActivity;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/bn;->c:Lcom/estrongs/android/pop/app/ESFileSharingActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->finish()V

    goto :goto_0
.end method
