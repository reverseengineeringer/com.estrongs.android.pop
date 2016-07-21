.class Lcom/estrongs/android/ui/dialog/ch;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/l;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ca;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ca;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ch;->a:Lcom/estrongs/android/ui/dialog/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/m;)V
    .locals 8

    const-wide/16 v2, 0x0

    iget-wide v0, p2, Lcom/estrongs/a/a/m;->e:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p2, Lcom/estrongs/a/a/m;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ch;->a:Lcom/estrongs/android/ui/dialog/ca;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ch;->a:Lcom/estrongs/android/ui/dialog/ca;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/ca;->d(Lcom/estrongs/android/ui/dialog/ca;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0804d9

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ch;->a:Lcom/estrongs/android/ui/dialog/ca;

    iget-wide v4, p2, Lcom/estrongs/a/a/m;->h:J

    iget-wide v6, p2, Lcom/estrongs/a/a/m;->e:J

    invoke-static {v2, v4, v5, v6, v7}, Lcom/estrongs/android/ui/dialog/ca;->a(Lcom/estrongs/android/ui/dialog/ca;JJ)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ca;->a(Lcom/estrongs/android/ui/dialog/ca;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
