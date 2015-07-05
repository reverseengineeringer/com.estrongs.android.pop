.class Lcom/estrongs/android/pop/app/diskusage/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/diskusage/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/c;->a:Lcom/estrongs/android/pop/app/diskusage/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/c;->a:Lcom/estrongs/android/pop/app/diskusage/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/diskusage/a;->j:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
