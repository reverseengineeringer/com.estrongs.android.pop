.class Lcom/estrongs/android/pop/utils/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/utils/x;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/x;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/y;->a:Lcom/estrongs/android/pop/utils/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 2

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    check-cast p1, Lcom/estrongs/fs/b/ad;

    invoke-virtual {p1}, Lcom/estrongs/fs/b/ad;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/y;->a:Lcom/estrongs/android/pop/utils/x;

    iget-object v1, v1, Lcom/estrongs/android/pop/utils/x;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
