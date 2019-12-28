.class public Lapp/panchip_weinikang/planecontroller/util/TransformUtil;
.super Ljava/lang/Object;
.source "TransformUtil.java"


# static fields
.field private static final HEX_CHAR:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 5
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lapp/panchip_weinikang/planecontroller/util/TransformUtil;->HEX_CHAR:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHexStr([B)Ljava/lang/String;
    .locals 8

    .line 15
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [C

    .line 17
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    .line 18
    sget-object v6, Lapp/panchip_weinikang/planecontroller/util/TransformUtil;->HEX_CHAR:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v3

    add-int/lit8 v3, v5, 0x1

    .line 19
    sget-object v6, Lapp/panchip_weinikang/planecontroller/util/TransformUtil;->HEX_CHAR:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v0, v5

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x20

    .line 20
    aput-char v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static ms2sec(I)Ljava/lang/String;
    .locals 4

    .line 49
    div-int/lit16 p0, p0, 0x3e8

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    div-int/lit16 v1, p0, 0xe10

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    const-string v3, "0"

    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    div-int/lit8 v1, p0, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    if-ge v1, v2, :cond_1

    const-string v3, "0"

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    rem-int/lit8 p0, p0, 0x3c

    if-ge p0, v2, :cond_2

    const-string v1, "0"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ms2sec(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    div-int/lit16 v1, p0, 0xe10

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    const-string v3, "0"

    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    div-int/lit8 v1, p0, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    if-ge v1, v2, :cond_1

    const-string v3, "0"

    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    rem-int/lit8 p0, p0, 0x3c

    if-ge p0, v2, :cond_2

    const-string v1, "0"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
