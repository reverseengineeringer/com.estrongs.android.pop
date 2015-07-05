.class public Lcom/estrongs/android/pop/app/imageviewer/gallery/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/imageviewer/gallery/f;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/imageviewer/gallery/e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/text/Collator;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Ljava/util/List;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->b:Ljava/text/Collator;

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->c(I)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/gallery/a;)Ljava/text/Collator;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->b:Ljava/text/Collator;

    return-object v0
.end method

.method private a(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 8

    const/4 v2, 0x0

    const-string v5, "bucket_display_name"

    move-object v0, p1

    move-object v1, p2

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Ljava/util/List;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;-><init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/f;Landroid/content/ContentResolver;Landroid/net/Uri;J)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method private c(I)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Comparator",
            "<",
            "Lcom/estrongs/android/pop/app/imageviewer/gallery/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/b;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/b;-><init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/a;I)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->b(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Z
    .locals 2

    new-instance v1, Ljava/io/File;

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
