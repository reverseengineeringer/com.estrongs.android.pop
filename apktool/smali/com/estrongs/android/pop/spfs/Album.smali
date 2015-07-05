.class public Lcom/estrongs/android/pop/spfs/Album;
.super Ljava/lang/Object;


# instance fields
.field public description:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/Album;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/pop/spfs/Album;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/spfs/Album;->description:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/pop/spfs/Album;->path:Ljava/lang/String;

    return-void
.end method
