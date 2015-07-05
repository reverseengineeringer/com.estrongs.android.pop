.class Lcom/estrongs/android/pop/app/imageviewer/gallery/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/estrongs/android/pop/app/imageviewer/gallery/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/pop/app/imageviewer/gallery/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/b;->b:Lcom/estrongs/android/pop/app/imageviewer/gallery/a;

    iput p2, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)I
    .locals 3

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/b;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/b;->b:Lcom/estrongs/android/pop/app/imageviewer/gallery/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/a;)Ljava/text/Collator;

    move-result-object v0

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/b;->b:Lcom/estrongs/android/pop/app/imageviewer/gallery/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/a;)Ljava/text/Collator;

    move-result-object v0

    invoke-interface {p2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    check-cast p2, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/b;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)I

    move-result v0

    return v0
.end method
