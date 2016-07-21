.class public Lcom/flurry/android/AdCreative;
.super Ljava/lang/Object;


# static fields
.field public static final kAlignmentBottom:Ljava/lang/String; = "bottom"

.field public static final kAlignmentCenter:Ljava/lang/String; = "center"

.field public static final kAlignmentLeft:Ljava/lang/String; = "left"

.field public static final kAlignmentMiddle:Ljava/lang/String; = "middle"

.field public static final kAlignmentRight:Ljava/lang/String; = "right"

.field public static final kAlignmentTop:Ljava/lang/String; = "top"

.field public static final kFixBoth:Ljava/lang/String; = "both"

.field public static final kFixHeight:Ljava/lang/String; = "height"

.field public static final kFixNone:Ljava/lang/String; = "none"

.field public static final kFixWidth:Ljava/lang/String; = "width"

.field public static final kFormatBanner:Ljava/lang/String; = "banner"

.field public static final kFormatCustom:Ljava/lang/String; = "custom"

.field public static final kFormatTakeover:Ljava/lang/String; = "takeover"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/flurry/android/AdCreative;->a:I

    iput p2, p0, Lcom/flurry/android/AdCreative;->b:I

    iput-object p3, p0, Lcom/flurry/android/AdCreative;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/flurry/android/AdCreative;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/flurry/android/AdCreative;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlignment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/android/AdCreative;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getFix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/android/AdCreative;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/android/AdCreative;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/flurry/android/AdCreative;->a:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/flurry/android/AdCreative;->b:I

    return v0
.end method
