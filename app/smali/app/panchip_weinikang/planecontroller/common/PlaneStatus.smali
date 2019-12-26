.class public Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;
.super Ljava/lang/Object;
.source "PlaneStatus.java"


# static fields
.field public static final ADJUST_GYROSCOPE:I = 0x6

.field public static final FLIP:I = 0x0

.field public static final FLIP_HOLD_TIME:I = 0x8

.field public static final FLIP_ONCE:I = 0x7

.field public static final KEY_HOLD_TIME:I = 0x32

.field public static final LAND:I = 0x4

.field public static final PRE_TURN:I = 0x2

.field public static final RETURN:I = 0x1

.field public static final SELF_ROTATE:I = 0x8

.field public static final STOP:I = 0x5

.field public static final TAKEOFF:I = 0x3


# instance fields
.field private FlipOnceHoldCnt:I

.field private altHold:I

.field private flipOnce:I

.field private headless:I

.field private lightON:I

.field private oneKeyAdjust:I

.field private oneKeyAdjustHoldCnt:I

.field private oneKeyFlip:I

.field private oneKeyLand:I

.field private oneKeyLandHoldCnt:I

.field private oneKeyPreTurn:I

.field private oneKeyReturn:I

.field private oneKeyStop:I

.field private oneKeyStopHoldCnt:I

.field private oneKeyTakeOff:I

.field private oneKeyTakeOffHoldCnt:I

.field private pitch:I

.field private pitchTrim:I

.field private protocol:I

.field private roll:I

.field private rollTrim:I

.field private selfRotating:Z

.field private speed:I

.field private throttle:I

.field private yaw:I

.field private yawRotate:I

.field private yawTrim:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->getControlProtocol()I

    move-result v0

    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->protocol:I

    const/16 v0, 0x80

    .line 46
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->roll:I

    .line 47
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->pitch:I

    .line 48
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->yaw:I

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->throttle:I

    .line 51
    invoke-static {}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->getYawTrim()I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    iput v1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->yawTrim:I

    .line 52
    invoke-static {}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->getRollTrim()I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    iput v1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->rollTrim:I

    .line 53
    invoke-static {}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->getPitchTrim()I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    iput v1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->pitchTrim:I

    .line 54
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->speed:I

    .line 56
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyPreTurn:I

    .line 57
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyTakeOff:I

    .line 58
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyLand:I

    .line 59
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyStop:I

    .line 60
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyReturn:I

    .line 61
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyFlip:I

    .line 62
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyAdjust:I

    .line 63
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->yawRotate:I

    .line 64
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->headless:I

    const/4 v1, 0x1

    .line 65
    iput v1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->lightON:I

    .line 66
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->altHold:I

    .line 68
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->selfRotating:Z

    return-void
.end method

.method private escape([B)[B
    .locals 7

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 154
    aget-byte v2, p1, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 155
    :goto_0
    array-length v4, p1

    sub-int/2addr v4, v2

    if-eq v3, v4, :cond_2

    .line 156
    aget-byte v4, p1, v3

    const/16 v5, -0x56

    const/16 v6, -0x5b

    if-ne v4, v5, :cond_0

    .line 157
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x5a

    .line 158
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 159
    :cond_0
    aget-byte v4, p1, v3

    if-ne v4, v6, :cond_1

    .line 160
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x55

    .line 161
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    :cond_1
    aget-byte v4, p1, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    :cond_2
    array-length v3, p1

    sub-int/2addr v3, v2

    aget-byte p1, p1, v3

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [B

    .line 168
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 169
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-object p1
.end method

.method private finalVal(IIZ)I
    .locals 1

    .line 184
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->speed:I

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    if-eqz p3, :cond_0

    rsub-int p1, p1, 0x80

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x80

    :goto_0
    add-int/lit16 p1, p1, 0x80

    goto :goto_3

    :pswitch_1
    if-eqz p3, :cond_1

    rsub-int p1, p1, 0x80

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x80

    :goto_1
    mul-int/lit8 p1, p1, 0x6

    .line 189
    div-int/lit8 p1, p1, 0xa

    add-int/lit16 p1, p1, 0x80

    goto :goto_3

    :pswitch_2
    if-eqz p3, :cond_2

    rsub-int p1, p1, 0x80

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, -0x80

    :goto_2
    mul-int/lit8 p1, p1, 0x3

    .line 186
    div-int/lit8 p1, p1, 0xa

    add-int/lit16 p1, p1, 0x80

    :goto_3
    if-eqz p3, :cond_3

    rsub-int/lit8 p2, p2, 0x20

    goto :goto_4

    :cond_3
    add-int/lit8 p2, p2, -0x20

    :goto_4
    add-int/2addr p1, p2

    const/16 p2, 0xff

    if-gez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_5

    :cond_4
    if-le p1, p2, :cond_5

    const/16 p1, 0xff

    :cond_5
    :goto_5
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private trimmedYAW()I
    .locals 2

    .line 204
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->yaw:I

    iget v1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->yawTrim:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x20

    const/16 v1, 0xff

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    const/16 v0, 0xff

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public flipOnce()V
    .locals 1

    .line 308
    monitor-enter p0

    const/4 v0, 0x1

    .line 309
    :try_start_0
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->flipOnce:I

    .line 310
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public flipOneKeyAdjust()V
    .locals 1

    .line 314
    monitor-enter p0

    .line 315
    :try_start_0
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyAdjust:I

    xor-int/lit8 v0, v0, 0x1

    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyAdjust:I

    const/4 v0, 0x0

    .line 316
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyAdjustHoldCnt:I

    .line 317
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public flipOneKeyFlip()V
    .locals 1

    .line 301
    monitor-enter p0

    .line 302
    :try_start_0
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyFlip:I

    xor-int/lit8 v0, v0, 0x1

    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyFlip:I

    const/4 v0, 0x0

    .line 303
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->FlipOnceHoldCnt:I

    .line 304
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public flipOneKeyLand()V
    .locals 1

    .line 281
    monitor-enter p0

    .line 282
    :try_start_0
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyLand:I

    xor-int/lit8 v0, v0, 0x1

    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyLand:I

    const/4 v0, 0x0

    .line 283
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyLandHoldCnt:I

    .line 284
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public flipOneKeyPreTurn()V
    .locals 1

    .line 268
    monitor-enter p0

    .line 269
    :try_start_0
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyPreTurn:I

    xor-int/lit8 v0, v0, 0x1

    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyPreTurn:I

    .line 270
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public flipOneKeyReturn()V
    .locals 1

    .line 295
    monitor-enter p0

    .line 296
    :try_start_0
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyReturn:I

    xor-int/lit8 v0, v0, 0x1

    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyReturn:I

    .line 297
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public flipOneKeyStop()V
    .locals 1

    .line 288
    monitor-enter p0

    .line 289
    :try_start_0
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyStop:I

    xor-int/lit8 v0, v0, 0x1

    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyStop:I

    const/4 v0, 0x0

    .line 290
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyStopHoldCnt:I

    .line 291
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public flipOneKeyTakeOff()V
    .locals 1

    .line 274
    monitor-enter p0

    .line 275
    :try_start_0
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyTakeOff:I

    xor-int/lit8 v0, v0, 0x1

    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyTakeOff:I

    const/4 v0, 0x0

    .line 276
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyTakeOffHoldCnt:I

    .line 277
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBytes()[B
    .locals 15

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->protocol:I

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x6

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    const/16 v0, 0xd

    .line 75
    new-array v0, v0, [B

    const/16 v10, -0x56

    aput-byte v10, v0, v8

    aput-byte v8, v0, v9

    const/16 v8, 0x50

    aput-byte v8, v0, v5

    aput-byte v1, v0, v7

    .line 80
    iget v8, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->roll:I

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v4

    .line 81
    iget v8, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->pitch:I

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v3

    .line 82
    iget v8, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->yaw:I

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    .line 83
    iget v8, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->throttle:I

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 84
    iget v8, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->rollTrim:I

    and-int/lit8 v8, v8, 0x3f

    int-to-byte v8, v8

    aput-byte v8, v0, v1

    .line 85
    iget v8, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->speed:I

    and-int/2addr v8, v7

    int-to-byte v8, v8

    shl-int/2addr v8, v6

    iget v11, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->pitchTrim:I

    and-int/lit8 v11, v11, 0x3f

    int-to-byte v11, v11

    or-int/2addr v8, v11

    int-to-byte v8, v8

    const/16 v11, 0x9

    aput-byte v8, v0, v11

    .line 86
    iget v8, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyPreTurn:I

    and-int/2addr v8, v9

    shl-int/2addr v8, v2

    iget v12, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyTakeOff:I

    and-int/2addr v12, v9

    shl-int/2addr v12, v6

    or-int/2addr v8, v12

    iget v12, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyLand:I

    and-int/2addr v12, v9

    shl-int/2addr v12, v3

    or-int/2addr v8, v12

    iget v12, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyStop:I

    and-int/2addr v12, v9

    shl-int/2addr v12, v4

    or-int/2addr v8, v12

    iget v12, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyReturn:I

    and-int/2addr v12, v9

    shl-int/2addr v12, v7

    or-int/2addr v8, v12

    iget v12, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyFlip:I

    and-int/2addr v12, v9

    shl-int/2addr v12, v5

    or-int/2addr v8, v12

    iget v12, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->headless:I

    and-int/2addr v12, v9

    shl-int/2addr v12, v9

    or-int/2addr v8, v12

    iget v12, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->yawRotate:I

    and-int/2addr v12, v9

    or-int/2addr v8, v12

    int-to-byte v8, v8

    const/16 v12, 0xa

    aput-byte v8, v0, v12

    const/16 v8, 0xb

    .line 94
    iget v13, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->lightON:I

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v2

    iget v14, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->altHold:I

    and-int/2addr v14, v9

    shl-int/2addr v14, v6

    or-int/2addr v13, v14

    iget v14, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyAdjust:I

    and-int/2addr v14, v9

    shl-int/2addr v14, v3

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v0, v8

    const/16 v8, 0xc

    aput-byte v10, v0, v8

    .line 99
    aget-byte v5, v0, v5

    aget-byte v7, v0, v7

    add-int/2addr v5, v7

    aget-byte v4, v0, v4

    add-int/2addr v5, v4

    aget-byte v3, v0, v3

    add-int/2addr v5, v3

    aget-byte v3, v0, v6

    add-int/2addr v5, v3

    aget-byte v2, v0, v2

    add-int/2addr v5, v2

    aget-byte v1, v0, v1

    add-int/2addr v5, v1

    aget-byte v1, v0, v11

    add-int/2addr v5, v1

    aget-byte v1, v0, v12

    add-int/2addr v5, v1

    const/16 v1, 0xb

    aget-byte v1, v0, v1

    add-int/2addr v5, v1

    int-to-byte v1, v5

    aput-byte v1, v0, v9

    .line 100
    invoke-direct {p0, v0}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->escape([B)[B

    move-result-object v0

    goto/16 :goto_0

    .line 101
    :cond_0
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->protocol:I

    if-nez v0, :cond_5

    .line 102
    new-array v0, v1, [B

    const/16 v10, 0x66

    aput-byte v10, v0, v8

    .line 104
    iget v10, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->roll:I

    iget v11, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->rollTrim:I

    invoke-direct {p0, v10, v11, v8}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->finalVal(IIZ)I

    move-result v10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v0, v9

    .line 105
    iget v10, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->pitch:I

    iget v11, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->pitchTrim:I

    invoke-direct {p0, v10, v11, v9}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->finalVal(IIZ)I

    move-result v10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v0, v5

    .line 106
    iget v10, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->throttle:I

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v0, v7

    .line 107
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->trimmedYAW()I

    move-result v10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v0, v4

    .line 108
    iget v10, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyAdjust:I

    and-int/2addr v10, v9

    shl-int/2addr v10, v2

    iget v11, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->lightON:I

    and-int/2addr v11, v9

    shl-int/2addr v11, v6

    or-int/2addr v10, v11

    iget v11, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->headless:I

    and-int/2addr v11, v9

    shl-int/2addr v11, v4

    or-int/2addr v10, v11

    iget v11, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->flipOnce:I

    and-int/2addr v11, v9

    shl-int/2addr v11, v7

    or-int/2addr v10, v11

    iget v11, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyStop:I

    and-int/2addr v11, v9

    shl-int/2addr v11, v5

    or-int/2addr v10, v11

    iget v11, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyLand:I

    and-int/2addr v11, v9

    shl-int/2addr v11, v9

    or-int/2addr v10, v11

    iget v11, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyTakeOff:I

    and-int/2addr v11, v9

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v0, v3

    .line 115
    aget-byte v10, v0, v9

    aget-byte v5, v0, v5

    xor-int/2addr v5, v10

    aget-byte v7, v0, v7

    xor-int/2addr v5, v7

    aget-byte v4, v0, v4

    xor-int/2addr v4, v5

    aget-byte v3, v0, v3

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v6

    const/16 v3, -0x67

    aput-byte v3, v0, v2

    .line 119
    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyLand:I

    const/16 v3, 0x32

    if-ne v2, v9, :cond_1

    .line 120
    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyLandHoldCnt:I

    add-int/2addr v2, v9

    iput v2, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyLandHoldCnt:I

    if-lt v2, v3, :cond_1

    .line 121
    iput v8, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyLand:I

    .line 123
    :cond_1
    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyTakeOff:I

    if-ne v2, v9, :cond_2

    .line 124
    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyTakeOffHoldCnt:I

    add-int/2addr v2, v9

    iput v2, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyTakeOffHoldCnt:I

    if-lt v2, v3, :cond_2

    .line 125
    iput v8, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyTakeOff:I

    .line 127
    :cond_2
    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyStop:I

    if-ne v2, v9, :cond_3

    .line 128
    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyStopHoldCnt:I

    add-int/2addr v2, v9

    iput v2, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyStopHoldCnt:I

    if-lt v2, v3, :cond_3

    .line 129
    iput v8, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyStop:I

    .line 131
    :cond_3
    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyAdjust:I

    if-ne v2, v9, :cond_4

    .line 132
    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyAdjustHoldCnt:I

    add-int/2addr v2, v9

    iput v2, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyAdjustHoldCnt:I

    if-lt v2, v3, :cond_4

    .line 133
    iput v8, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->oneKeyAdjust:I

    .line 135
    :cond_4
    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->flipOnce:I

    if-ne v2, v9, :cond_6

    .line 136
    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->FlipOnceHoldCnt:I

    add-int/2addr v2, v9

    iput v2, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->FlipOnceHoldCnt:I

    if-lt v2, v1, :cond_6

    .line 137
    iput v8, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->flipOnce:I

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 142
    :cond_6
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public selfRotate()V
    .locals 1

    .line 321
    monitor-enter p0

    .line 322
    :try_start_0
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->selfRotating:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->selfRotating:Z

    .line 323
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->selfRotating:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc0

    goto :goto_0

    :cond_0
    const/16 v0, 0x80

    :goto_0
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->yaw:I

    .line 324
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAltHold(I)V
    .locals 0

    .line 346
    monitor-enter p0

    .line 347
    :try_start_0
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->altHold:I

    .line 348
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setHeadless(I)V
    .locals 0

    .line 334
    monitor-enter p0

    .line 335
    :try_start_0
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->headless:I

    .line 336
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setLightON(I)V
    .locals 0

    .line 340
    monitor-enter p0

    .line 341
    :try_start_0
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->lightON:I

    .line 342
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPitch(I)V
    .locals 0

    .line 220
    monitor-enter p0

    .line 221
    :try_start_0
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->pitch:I

    .line 223
    iget-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->selfRotating:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 224
    iput-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->selfRotating:Z

    const/16 p1, 0x80

    .line 225
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->yaw:I

    .line 227
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPitchTrim(I)V
    .locals 0

    .line 256
    monitor-enter p0

    .line 257
    :try_start_0
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->pitchTrim:I

    .line 258
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRoll(I)V
    .locals 0

    .line 209
    monitor-enter p0

    .line 210
    :try_start_0
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->roll:I

    .line 212
    iget-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->selfRotating:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 213
    iput-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->selfRotating:Z

    const/16 p1, 0x80

    .line 214
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->yaw:I

    .line 216
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRollTrim(I)V
    .locals 0

    .line 250
    monitor-enter p0

    .line 251
    :try_start_0
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->rollTrim:I

    .line 252
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSpeed(I)V
    .locals 0

    .line 262
    monitor-enter p0

    .line 263
    :try_start_0
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->speed:I

    .line 264
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setThrottle(I)V
    .locals 0

    .line 238
    monitor-enter p0

    .line 239
    :try_start_0
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->throttle:I

    .line 240
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setYaw(I)V
    .locals 1

    .line 231
    monitor-enter p0

    .line 232
    :try_start_0
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->selfRotating:Z

    if-nez v0, :cond_0

    .line 233
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->yaw:I

    .line 234
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setYawRotate(I)V
    .locals 0

    .line 328
    monitor-enter p0

    .line 329
    :try_start_0
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->yawRotate:I

    .line 330
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setYawTrim(I)V
    .locals 0

    .line 244
    monitor-enter p0

    .line 245
    :try_start_0
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->yawTrim:I

    .line 246
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
