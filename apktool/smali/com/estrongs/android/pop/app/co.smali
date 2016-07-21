.class Lcom/estrongs/android/pop/app/co;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/FileSharingNotificationActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/FileSharingNotificationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/co;->a:Lcom/estrongs/android/pop/app/FileSharingNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/estrongs/fs/b/ba;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/co;->a:Lcom/estrongs/android/pop/app/FileSharingNotificationActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/FileSharingNotificationActivity;->a(Lcom/estrongs/android/pop/app/FileSharingNotificationActivity;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/co;->a:Lcom/estrongs/android/pop/app/FileSharingNotificationActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/FileSharingNotificationActivity;->finish()V

    return-void
.end method
