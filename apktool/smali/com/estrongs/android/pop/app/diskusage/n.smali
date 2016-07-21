.class Lcom/estrongs/android/pop/app/diskusage/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/diskusage/k;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/k;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->h(Lcom/estrongs/android/pop/app/diskusage/h;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/k;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->B(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080469

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/k;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/pop/app/diskusage/h;->b(Lcom/estrongs/android/pop/app/diskusage/h;J)J

    return-void
.end method
