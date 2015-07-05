.class public Lcom/estrongs/android/pop/view/utils/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/estrongs/android/pop/view/utils/t;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field private final f:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/utils/t;->f:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/view/utils/t;)I
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/t;->f:Ljava/text/Collator;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/t;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/estrongs/android/pop/view/utils/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/t;->f:Ljava/text/Collator;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/t;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/estrongs/android/pop/view/utils/t;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/estrongs/android/pop/view/utils/t;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/utils/t;->a(Lcom/estrongs/android/pop/view/utils/t;)I

    move-result v0

    return v0
.end method
