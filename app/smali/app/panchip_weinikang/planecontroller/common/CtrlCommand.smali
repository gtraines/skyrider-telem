.class public Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;
.super Ljava/lang/Object;
.source "CtrlCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;
    }
.end annotation


# static fields
.field public static final CMD_DISABLE_CAMERA:[B

.field public static final CMD_ENABLE_CAMERA:[B

.field public static final CMD_HANDSHAKE:B = -0x1t

.field public static final CMD_STOP_CTRL:B = -0x1t

.field public static final CMD_TAKE_PHOTO:B = 0x1t

.field public static final CMD_TAKE_VIDEO:B = 0x2t

.field public static final CMD_TYPE_CAMERA:B = 0x1t

.field public static final CMD_TYPE_INVALID:B = 0x0t

.field public static final CMD_TYPE_PLANE:B = 0x2t

.field public static final CMD_TYPE_REMOTE_CTRL:B = 0x4t

.field public static final COMMAND_MAX_LENGTH:I = 0x8


# instance fields
.field payload:[B

.field type:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 15
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    sput-object v1, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;->CMD_ENABLE_CAMERA:[B

    .line 16
    new-array v0, v0, [B

    aput-byte v2, v0, v2

    sput-object v0, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;->CMD_DISABLE_CAMERA:[B

    return-void
.end method

.method private constructor <init>(B[B)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-byte p1, p0, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;->type:B

    .line 27
    iput-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;->payload:[B

    return-void
.end method

.method synthetic constructor <init>(B[BLapp/panchip_weinikang/planecontroller/common/CtrlCommand$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;-><init>(B[B)V

    return-void
.end method

.method public static newHandshakeCmd()Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;
    .locals 3

    .line 31
    new-instance v0, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;-><init>(B[B)V

    return-object v0
.end method


# virtual methods
.method public getBytes()[B
    .locals 4

    .line 43
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;->payload:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;->payload:[B

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 44
    iget-byte v2, p0, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;->type:B

    aput-byte v2, v0, v1

    .line 45
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;->payload:[B

    if-eqz v2, :cond_1

    .line 46
    :goto_1
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;->payload:[B

    array-length v2, v2

    if-eq v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 47
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;->payload:[B

    aget-byte v1, v3, v1

    aput-byte v1, v0, v2

    move v1, v2

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public getPayload()[B
    .locals 1

    .line 39
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;->payload:[B

    return-object v0
.end method

.method public getType()B
    .locals 1

    .line 35
    iget-byte v0, p0, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;->type:B

    return v0
.end method
