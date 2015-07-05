.class public Lcom/estrongs/android/appinfo/m;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/estrongs/android/appinfo/m;->b:I

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/estrongs/android/appinfo/m;->c:I

    iput p2, p0, Lcom/estrongs/android/appinfo/m;->b:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/appinfo/m;->a:Ljava/lang/String;

    iput p2, p0, Lcom/estrongs/android/appinfo/m;->b:I

    return-void
.end method
