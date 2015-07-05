.class Lcom/estrongs/android/appinfo/b;
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

    iput-object p1, p0, Lcom/estrongs/android/appinfo/b;->a:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;)I
    .locals 3

    const/4 v1, 0x1

    const/4 v0, -0x1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 v0, 0x0

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
    iget-boolean v2, p1, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->b:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p2, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->b:Z

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-boolean v1, p1, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->b:Z

    if-nez v1, :cond_5

    iget-boolean v1, p2, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->b:Z

    if-nez v1, :cond_0

    :cond_5
    iget-object v0, p1, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;

    check-cast p2, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/appinfo/b;->a(Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;)I

    move-result v0

    return v0
.end method
