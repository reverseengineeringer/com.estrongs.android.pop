.class public Lcom/estrongs/android/scanner/d/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:Z

.field private final c:I


# direct methods
.method public constructor <init>(JZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/estrongs/android/scanner/d/q;->a:J

    iput-boolean p3, p0, Lcom/estrongs/android/scanner/d/q;->b:Z

    iput p4, p0, Lcom/estrongs/android/scanner/d/q;->c:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/scanner/d/q;->a:J

    return-wide v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/scanner/d/q;->b:Z

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/scanner/d/q;->c:I

    return v0
.end method
