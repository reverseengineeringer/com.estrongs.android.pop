.class public Ljcifs/dcerpc/msrpc/lsarpc;
.super Ljava/lang/Object;


# static fields
.field public static final POLICY_INFO_ACCOUNT_DOMAIN:I = 0x5

.field public static final POLICY_INFO_AUDIT_EVENTS:I = 0x2

.field public static final POLICY_INFO_DNS_DOMAIN:I = 0xc

.field public static final POLICY_INFO_MODIFICATION:I = 0x9

.field public static final POLICY_INFO_PRIMARY_DOMAIN:I = 0x3

.field public static final POLICY_INFO_SERVER_ROLE:I = 0x6

.field public static final SID_NAME_ALIAS:I = 0x4

.field public static final SID_NAME_DELETED:I = 0x6

.field public static final SID_NAME_DOMAIN:I = 0x3

.field public static final SID_NAME_DOM_GRP:I = 0x2

.field public static final SID_NAME_INVALID:I = 0x7

.field public static final SID_NAME_UNKNOWN:I = 0x8

.field public static final SID_NAME_USER:I = 0x1

.field public static final SID_NAME_USE_NONE:I = 0x0

.field public static final SID_NAME_WKN_GRP:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSyntax()Ljava/lang/String;
    .locals 1

    const-string v0, "12345778-1234-abcd-ef00-0123456789ab:0.0"

    return-object v0
.end method
