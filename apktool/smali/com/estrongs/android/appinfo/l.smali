.class Lcom/estrongs/android/appinfo/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/appinfo/AppFolderInfoManager;


# direct methods
.method constructor <init>(Lcom/estrongs/android/appinfo/AppFolderInfoManager;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/appinfo/l;->a:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;)I
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v3, p1, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p2, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    if-nez v3, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    if-ltz v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;

    check-cast p2, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/appinfo/l;->a(Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;)I

    move-result v0

    return v0
.end method
