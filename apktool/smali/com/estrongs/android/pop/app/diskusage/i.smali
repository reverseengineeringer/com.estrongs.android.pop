.class Lcom/estrongs/android/pop/app/diskusage/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/util/h;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/diskusage/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/i;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 6

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/i;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/diskusage/h;->a(Lcom/estrongs/android/pop/app/diskusage/h;)J

    move-result-wide v2

    rem-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/i;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/diskusage/h;->a(Lcom/estrongs/android/pop/app/diskusage/h;)J

    move-result-wide v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/i;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/diskusage/h;->a(Lcom/estrongs/android/pop/app/diskusage/h;)J

    move-result-wide v2

    mul-long/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/i;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v2, v0, v1}, Lcom/estrongs/android/pop/app/diskusage/h;->a(Lcom/estrongs/android/pop/app/diskusage/h;J)J

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/i;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->b(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/widget/bg;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/i;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->b(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/widget/bg;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/bg;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/i;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->b(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/widget/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/i;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/h;->c(Lcom/estrongs/android/pop/app/diskusage/h;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/widget/bg;->b(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
