.class Lcom/estrongs/android/ui/dialog/cy;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/io/File;",
        ">;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/estrongs/fs/util/g;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Lcom/estrongs/android/ui/dialog/cx;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/cx;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/cy;->d:Lcom/estrongs/android/ui/dialog/cx;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/cy;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/cy;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/cy;[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/cy;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/util/List;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/estrongs/android/ui/dialog/cz;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/cz;-><init>(Lcom/estrongs/android/ui/dialog/cy;)V

    new-instance v1, Lcom/estrongs/fs/util/g;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/util/g;-><init>(Lcom/estrongs/fs/util/h;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/cy;->a:Lcom/estrongs/fs/util/g;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cy;->a:Lcom/estrongs/fs/util/g;

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/util/g;->a(Ljava/util/List;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/cy;->a:Lcom/estrongs/fs/util/g;

    invoke-virtual {v2}, Lcom/estrongs/fs/util/g;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/cy;->a:Lcom/estrongs/fs/util/g;

    invoke-virtual {v2}, Lcom/estrongs/fs/util/g;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "over"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/cy;->publishProgress([Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/cy;->a:Lcom/estrongs/fs/util/g;

    invoke-virtual {v3}, Lcom/estrongs/fs/util/g;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/cy;->a:Lcom/estrongs/fs/util/g;

    invoke-virtual {v2}, Lcom/estrongs/fs/util/g;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/cy;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs a([Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cy;->b:Landroid/content/Context;

    const v1, 0x7f080694

    new-array v2, v7, [Ljava/lang/Object;

    aget-object v3, p1, v7

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/cy;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/cy;->b:Landroid/content/Context;

    const v3, 0x7f080693

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v5, p1, v6

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/cy;->a([Ljava/util/List;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cy;->a:Lcom/estrongs/fs/util/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cy;->a:Lcom/estrongs/fs/util/g;

    invoke-virtual {v0}, Lcom/estrongs/fs/util/g;->a()V

    :cond_0
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/cy;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/cy;->a([Ljava/lang/String;)V

    return-void
.end method
