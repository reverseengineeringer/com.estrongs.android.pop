.class final Lcom/estrongs/android/pop/app/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/b/b/a;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/HashMap;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/estrongs/fs/h;",
            ">;J)V"
        }
    .end annotation

    const/4 v4, -0x2

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/b/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/WhatsApp/Media/WhatsApp Audio"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/estrongs/android/pop/app/b/b/b;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, p1, p2, p3}, Lcom/estrongs/android/pop/app/b/b/b;->a(Ljava/util/HashMap;J)V

    new-instance v1, Lcom/estrongs/android/pop/app/b/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/WhatsApp/Media/WhatsApp Documents"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/estrongs/android/pop/app/b/b/b;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, p1, p2, p3}, Lcom/estrongs/android/pop/app/b/b/b;->a(Ljava/util/HashMap;J)V

    new-instance v1, Lcom/estrongs/android/pop/app/b/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/WhatsApp/Media/WhatsApp Images"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/estrongs/android/pop/app/b/b/b;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, p1, p2, p3}, Lcom/estrongs/android/pop/app/b/b/b;->a(Ljava/util/HashMap;J)V

    new-instance v1, Lcom/estrongs/android/pop/app/b/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/WhatsApp/Media/WhatsApp Video"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v4}, Lcom/estrongs/android/pop/app/b/b/b;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, p1, p2, p3}, Lcom/estrongs/android/pop/app/b/b/b;->a(Ljava/util/HashMap;J)V

    return-void
.end method
