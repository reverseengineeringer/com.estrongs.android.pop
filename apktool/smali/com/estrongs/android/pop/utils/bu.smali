.class Lcom/estrongs/android/pop/utils/bu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/android/pop/esclasses/ESActivity;

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Lcom/estrongs/android/pop/utils/bn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/bn;Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/estrongs/android/pop/esclasses/ESActivity;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/bu;->e:Lcom/estrongs/android/pop/utils/bn;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/bu;->a:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/bu;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/pop/utils/bu;->c:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iput-object p5, p0, Lcom/estrongs/android/pop/utils/bu;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 4

    const/4 v0, 0x5

    if-eq p3, v0, :cond_0

    const/4 v0, 0x4

    if-ne p3, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bu;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/bu;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bu;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/bu;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/bu;->c:Lcom/estrongs/android/pop/esclasses/ESActivity;

    const v2, 0x7f0b00fd

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v1, Lcom/estrongs/a/a/m;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/bu;->c:Lcom/estrongs/android/pop/esclasses/ESActivity;

    const v2, 0x7f0b0064

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/bu;->c:Lcom/estrongs/android/pop/esclasses/ESActivity;

    const v2, 0x7f0b00fc

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v1, Lcom/estrongs/a/a/m;->f:J

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bu;->c:Lcom/estrongs/android/pop/esclasses/ESActivity;

    new-instance v1, Lcom/estrongs/android/pop/utils/bv;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/utils/bv;-><init>(Lcom/estrongs/android/pop/utils/bu;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
