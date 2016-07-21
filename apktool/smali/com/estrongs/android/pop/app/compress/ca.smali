.class Lcom/estrongs/android/pop/app/compress/ca;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/estrongs/android/pop/app/compress/bv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/bv;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/ca;->b:Lcom/estrongs/android/pop/app/compress/bv;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/compress/ca;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ca;->a:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ca;->a:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ca;->b:Lcom/estrongs/android/pop/app/compress/bv;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/bv;->a:Lcom/estrongs/android/pop/app/compress/bs;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/compress/bs;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/compress/ca;->b:Lcom/estrongs/android/pop/app/compress/bv;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/compress/bv;->a:Lcom/estrongs/android/pop/app/compress/bs;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/compress/bs;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0802e9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/compress/ca;->b:Lcom/estrongs/android/pop/app/compress/bv;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/compress/bv;->a:Lcom/estrongs/android/pop/app/compress/bs;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/compress/bs;->b(Lcom/estrongs/android/pop/app/compress/bs;)Lcom/estrongs/io/model/ArchiveEntryFile;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ca;->a:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
