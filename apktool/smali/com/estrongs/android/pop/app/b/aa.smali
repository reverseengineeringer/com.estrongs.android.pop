.class Lcom/estrongs/android/pop/app/b/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/b/y;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/b/y;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/aa;->a:Lcom/estrongs/android/pop/app/b/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const-wide/16 v6, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchPath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/b/aa;->a:Lcom/estrongs/android/pop/app/b/y;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/b/y;->a(Lcom/estrongs/android/pop/app/b/y;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/aa;->a:Lcom/estrongs/android/pop/app/b/y;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/b/y;->b(Lcom/estrongs/android/pop/app/b/y;)Lcom/estrongs/android/pop/app/b/x;

    move-result-object v2

    iget-wide v2, v2, Lcom/estrongs/android/pop/app/b/x;->a:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    const-string v2, "&&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "minSize"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/b/aa;->a:Lcom/estrongs/android/pop/app/b/y;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/b/y;->b(Lcom/estrongs/android/pop/app/b/y;)Lcom/estrongs/android/pop/app/b/x;

    move-result-object v3

    iget-wide v4, v3, Lcom/estrongs/android/pop/app/b/x;->a:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/aa;->a:Lcom/estrongs/android/pop/app/b/y;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/b/y;->b(Lcom/estrongs/android/pop/app/b/y;)Lcom/estrongs/android/pop/app/b/x;

    move-result-object v2

    iget-wide v2, v2, Lcom/estrongs/android/pop/app/b/x;->b:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    const-string v2, "&&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "maxSize"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/b/aa;->a:Lcom/estrongs/android/pop/app/b/y;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/b/y;->b(Lcom/estrongs/android/pop/app/b/y;)Lcom/estrongs/android/pop/app/b/x;

    move-result-object v3

    iget-wide v4, v3, Lcom/estrongs/android/pop/app/b/x;->b:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/aa;->a:Lcom/estrongs/android/pop/app/b/y;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/b/y;->c(Lcom/estrongs/android/pop/app/b/y;)Lcom/estrongs/android/pop/app/b/x;

    move-result-object v2

    iget-wide v2, v2, Lcom/estrongs/android/pop/app/b/x;->a:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    const-string v2, "&&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "minDate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/b/aa;->a:Lcom/estrongs/android/pop/app/b/y;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/b/y;->c(Lcom/estrongs/android/pop/app/b/y;)Lcom/estrongs/android/pop/app/b/x;

    move-result-object v3

    iget-wide v4, v3, Lcom/estrongs/android/pop/app/b/x;->a:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/aa;->a:Lcom/estrongs/android/pop/app/b/y;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/b/y;->c(Lcom/estrongs/android/pop/app/b/y;)Lcom/estrongs/android/pop/app/b/x;

    move-result-object v2

    iget-wide v2, v2, Lcom/estrongs/android/pop/app/b/x;->b:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    const-string v2, "&&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "maxDate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/b/aa;->a:Lcom/estrongs/android/pop/app/b/y;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/b/y;->c(Lcom/estrongs/android/pop/app/b/y;)Lcom/estrongs/android/pop/app/b/x;

    move-result-object v3

    iget-wide v4, v3, Lcom/estrongs/android/pop/app/b/x;->b:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_3
    const-string v2, "&&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recursion"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SEARCH_PATTERN"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v1, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string v0, "SEARCH_TABID"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/aa;->a:Lcom/estrongs/android/pop/app/b/y;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/b/y;->d(Lcom/estrongs/android/pop/app/b/y;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SEARCH_TABID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/aa;->a:Lcom/estrongs/android/pop/app/b/y;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/b/y;->a(Landroid/content/Intent;)V

    return-void
.end method
