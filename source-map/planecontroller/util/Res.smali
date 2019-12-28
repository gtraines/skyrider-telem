.class public Lapp/panchip_weinikang/planecontroller/util/Res;
.super Ljava/util/ListResourceBundle;
.source "Res.java"


# static fields
.field static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x9

    .line 6
    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "r"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "r"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "bufbitlen_size_must_0"

    aput-object v3, v2, v4

    const-string v3, "bufbitlen size must >= 0"

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "rw"

    aput-object v3, v2, v4

    const-string v3, "rw"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "BufferedRandomAccess"

    aput-object v3, v2, v4

    const-string v3, "BufferedRandomAccessFile Copy & Write File: "

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "FileSize_"

    aput-object v3, v2, v4

    const-string v3, "    FileSize: "

    aput-object v3, v2, v5

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "_KB_"

    aput-object v3, v2, v4

    const-string v3, " (KB)    "

    aput-object v3, v2, v5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Spend_"

    aput-object v3, v2, v4

    const-string v3, "Spend: "

    aput-object v3, v2, v5

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "_s_"

    aput-object v3, v2, v4

    const-string v3, "(s)"

    aput-object v3, v2, v5

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DataBufferedios_Copy"

    aput-object v2, v1, v4

    const-string v2, "DataBufferedios Copy & Write File: "

    aput-object v2, v1, v5

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lapp/panchip_weinikang/planecontroller/util/Res;->contents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 1

    .line 17
    sget-object v0, Lapp/panchip_weinikang/planecontroller/util/Res;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
