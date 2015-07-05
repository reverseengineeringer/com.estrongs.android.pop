.class Lcom/estrongs/android/pop/app/diskusage/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/bj;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/diskusage/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/o;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/o;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->B(Lcom/estrongs/android/pop/app/diskusage/h;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/o;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->C(Lcom/estrongs/android/pop/app/diskusage/h;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/o;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/o;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/h;->C(Lcom/estrongs/android/pop/app/diskusage/h;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/h;->a(Lcom/estrongs/android/pop/app/diskusage/h;Ljava/io/File;)Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/o;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->D(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/view/ca;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/o;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->E(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/view/ca;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "du://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/o;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/diskusage/h;->o(Lcom/estrongs/android/pop/app/diskusage/h;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/view/ca;->a(Ljava/lang/String;Z)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
