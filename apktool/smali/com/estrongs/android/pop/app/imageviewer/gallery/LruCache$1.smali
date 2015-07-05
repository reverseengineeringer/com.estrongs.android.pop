.class Lcom/estrongs/android/pop/app/imageviewer/gallery/LruCache$1;
.super Ljava/util/LinkedHashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

.field final synthetic val$capacity:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/g;IFZI)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/LruCache$1;->this$0:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    iput p5, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/LruCache$1;->val$capacity:I

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/LruCache$1;->size()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/LruCache$1;->val$capacity:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
