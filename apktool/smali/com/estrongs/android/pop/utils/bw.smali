.class Lcom/estrongs/android/pop/utils/bw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/l;


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/android/pop/esclasses/ESActivity;

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Lcom/estrongs/android/pop/utils/bn;

.field private f:J


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/bn;Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/estrongs/android/pop/esclasses/ESActivity;Landroid/widget/TextView;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/bw;->e:Lcom/estrongs/android/pop/utils/bn;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/bw;->a:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/bw;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/pop/utils/bw;->c:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iput-object p5, p0, Lcom/estrongs/android/pop/utils/bw;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/android/pop/utils/bw;->f:J

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/m;)V
    .locals 4

    iget-wide v0, p0, Lcom/estrongs/android/pop/utils/bw;->f:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/android/pop/utils/bw;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/utils/bw;->f:J

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bw;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/bw;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bw;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/bw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/bw;->c:Lcom/estrongs/android/pop/esclasses/ESActivity;

    const v2, 0x7f0b00fd

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p2, Lcom/estrongs/a/a/m;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/bw;->c:Lcom/estrongs/android/pop/esclasses/ESActivity;

    const v2, 0x7f0b0064

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/bw;->c:Lcom/estrongs/android/pop/esclasses/ESActivity;

    const v2, 0x7f0b00fc

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p2, Lcom/estrongs/a/a/m;->f:J

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bw;->c:Lcom/estrongs/android/pop/esclasses/ESActivity;

    new-instance v1, Lcom/estrongs/android/pop/utils/bx;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/utils/bx;-><init>(Lcom/estrongs/android/pop/utils/bw;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
