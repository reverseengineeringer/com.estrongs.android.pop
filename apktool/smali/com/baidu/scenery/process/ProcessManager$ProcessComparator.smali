.class public final Lcom/baidu/scenery/process/ProcessManager$ProcessComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/baidu/scenery/process/AndroidProcess;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/baidu/scenery/process/AndroidProcess;Lcom/baidu/scenery/process/AndroidProcess;)I
    .locals 2

    iget-object v0, p1, Lcom/baidu/scenery/process/AndroidProcess;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/baidu/scenery/process/AndroidProcess;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/baidu/scenery/process/AndroidProcess;

    check-cast p2, Lcom/baidu/scenery/process/AndroidProcess;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/scenery/process/ProcessManager$ProcessComparator;->compare(Lcom/baidu/scenery/process/AndroidProcess;Lcom/baidu/scenery/process/AndroidProcess;)I

    move-result v0

    return v0
.end method
