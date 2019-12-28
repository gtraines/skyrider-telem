.class public Lapp/panchip_weinikang/planecontroller/util/AviEncoder;
.super Ljava/lang/Thread;
.source "AviEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/panchip_weinikang/planecontroller/util/AviEncoder$AviEncoderListener;
    }
.end annotation


# static fields
.field public static DOUBLE_FRAME_RATE:Z = true

.field private static final ENCODING:I = 0x2

.field private static final FAIL_TO_OPEN_NEW_FILE:I = 0x1

.field private static final FILE_ALREADY_EXIST:I = 0x0

.field private static FPS:I = 0xa

.field private static FRAME_INTERVAL:I = 0x186a0

.field private static final IDLE:I = 0x0

.field private static final IDX_FINISHED:I = 0x4

.field private static final ILLEGAL_ENCODER_STATUS_CHANGE:I = 0x2

.field private static final MOVI_FINISHED:I = 0x3

.field private static final NEW:I = 0x1

.field static final OFFSET_FILE_SIZE:I = 0x4

.field static final OFFSET_FRAMEINTERVAL_AVIH:I = 0x20

.field static final OFFSET_FRAMEINTERVAL_STRL:I = 0x80

.field static final OFFSET_FRAME_NUM_AVIH:I = 0x30

.field static final OFFSET_FRAME_NUM_STRH:I = 0x8c

.field static final OFFSET_HEIGHT_AVIH:I = 0x44

.field static final OFFSET_HEIGHT_STRF:I = 0xb4

.field static final OFFSET_IMAGE_SIZE:I = 0xc0

.field static final OFFSET_MOVI_SIZE:I = 0x13e

.field static final OFFSET_WIDTH_AVIH:I = 0x40

.field static final OFFSET_WIDTH_STRF:I = 0xb0

.field public static TARGET_HEIGHT:I = 0x1e0

.field public static TARGET_WIDTH:I = 0x280

.field static final aviHead:[B

.field static frameHead:[B

.field static final height_11FPS:[B

.field static final height_12W:[B

.field static final height_15W:[B

.field static idxEntryHead:[B

.field static idxHead:[B

.field static final image_size_11FPS:[B

.field static final image_size_12W:[B

.field static final image_size_15W:[B

.field static moviHead:[B

.field static final width_11FPS:[B

.field static final width_12W:[B

.field static final width_15W:[B


# instance fields
.field private dummy:[B

.field private file:Ljava/io/File;

.field private filename:Ljava/lang/String;

.field private fos:Ljava/io/FileOutputStream;

.field private frameSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private frames:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lapp/panchip_weinikang/planecontroller/util/AviEncoder$AviEncoderListener;

.field private reverseMatrix:Landroid/graphics/Matrix;

.field private reversed:Z

.field private running:Z

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x13a

    .line 33
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->aviHead:[B

    const/16 v0, 0xc

    .line 137
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->moviHead:[B

    const/4 v0, 0x4

    .line 143
    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->frameHead:[B

    const/16 v1, 0x8

    .line 147
    new-array v2, v1, [B

    fill-array-data v2, :array_3

    sput-object v2, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->idxHead:[B

    .line 152
    new-array v1, v1, [B

    fill-array-data v1, :array_4

    sput-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->idxEntryHead:[B

    .line 157
    new-array v1, v0, [B

    fill-array-data v1, :array_5

    sput-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->width_12W:[B

    .line 158
    new-array v1, v0, [B

    fill-array-data v1, :array_6

    sput-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->height_12W:[B

    .line 159
    new-array v1, v0, [B

    fill-array-data v1, :array_7

    sput-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->image_size_12W:[B

    .line 161
    new-array v1, v0, [B

    fill-array-data v1, :array_8

    sput-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->width_11FPS:[B

    .line 162
    new-array v1, v0, [B

    fill-array-data v1, :array_9

    sput-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->height_11FPS:[B

    .line 163
    new-array v1, v0, [B

    fill-array-data v1, :array_a

    sput-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->image_size_11FPS:[B

    .line 165
    new-array v1, v0, [B

    fill-array-data v1, :array_b

    sput-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->width_15W:[B

    .line 166
    new-array v1, v0, [B

    fill-array-data v1, :array_c

    sput-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->height_15W:[B

    .line 167
    new-array v0, v0, [B

    fill-array-data v0, :array_d

    sput-object v0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->image_size_15W:[B

    return-void

    :array_0
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
        0x26t
        -0x57t
        0x9t
        0x0t
        0x41t
        0x56t
        0x49t
        0x20t
        0x4ct
        0x49t
        0x53t
        0x54t
        0x26t
        0x1t
        0x0t
        0x0t
        0x68t
        0x64t
        0x72t
        0x6ct
        0x61t
        0x76t
        0x69t
        0x68t
        0x38t
        0x0t
        0x0t
        0x0t
        -0x60t
        -0x7at
        0x1t
        0x0t
        0x5dt
        0x3et
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x10t
        0x1t
        0x0t
        0x0t
        0x1et
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x20t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x4ct
        0x49t
        0x53t
        0x54t
        0x74t
        0x0t
        0x0t
        0x0t
        0x73t
        0x74t
        0x72t
        0x6ct
        0x73t
        0x74t
        0x72t
        0x68t
        0x38t
        0x0t
        0x0t
        0x0t
        0x76t
        0x69t
        0x64t
        0x73t
        0x4dt
        0x4at
        0x50t
        0x47t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x60t
        -0x7at
        0x1t
        0x0t
        0x40t
        0x42t
        0xft
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1et
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x73t
        0x74t
        0x72t
        0x66t
        0x28t
        0x0t
        0x0t
        0x0t
        0x28t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x20t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x18t
        0x0t
        0x4dt
        0x4at
        0x50t
        0x47t
        0x0t
        -0x40t
        0x6t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x4ct
        0x49t
        0x53t
        0x54t
        0x5et
        0x0t
        0x0t
        0x0t
        0x73t
        0x74t
        0x72t
        0x6ct
        0x73t
        0x74t
        0x72t
        0x68t
        0x38t
        0x0t
        0x0t
        0x0t
        0x61t
        0x75t
        0x64t
        0x73t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x40t
        0x1ft
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7dt
        0x0t
        0x0t
        0x0t
        0x40t
        0x42t
        0xft
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x73t
        0x74t
        0x72t
        0x66t
        0x12t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x40t
        0x1ft
        0x0t
        0x0t
        -0x80t
        0x3et
        0x0t
        0x0t
        0x2t
        0x0t
        0x10t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4ct
        0x49t
        0x53t
        0x54t
        0x4t
        -0x5at
        0x9t
        0x0t
        0x6dt
        0x6ft
        0x76t
        0x69t
    .end array-data

    :array_2
    .array-data 1
        0x30t
        0x30t
        0x64t
        0x63t
    .end array-data

    :array_3
    .array-data 1
        0x69t
        0x64t
        0x78t
        0x31t
        -0x20t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x30t
        0x30t
        0x64t
        0x63t
        0x10t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_5
    .array-data 1
        -0x40t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_6
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x40t
        0x5t
        0x0t
    .end array-data

    :array_8
    .array-data 1
        -0x80t
        0x2t
        0x0t
        0x0t
    .end array-data

    :array_9
    .array-data 1
        -0x20t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_a
    .array-data 1
        0x0t
        0x10t
        0xet
        0x0t
    .end array-data

    :array_b
    .array-data 1
        -0x40t
        0x2t
        0x0t
        0x0t
    .end array-data

    :array_c
    .array-data 1
        0x20t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_d
    .array-data 1
        0x0t
        -0x40t
        0x6t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 198
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x100

    .line 185
    new-array v0, v0, [B

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->dummy:[B

    .line 199
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->frames:Ljava/util/Queue;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->frameSizes:Ljava/util/List;

    const/4 v0, 0x0

    .line 201
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->status:I

    .line 203
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->reverseMatrix:Landroid/graphics/Matrix;

    .line 204
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->reverseMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    return-void
.end method

.method private calculateBytesToFill(I)I
    .locals 2

    .line 454
    rem-int/lit16 p1, p1, 0x100

    add-int/lit16 v0, p1, -0xf8

    const/16 v1, 0xf8

    if-ge p1, v1, :cond_0

    rsub-int v0, p1, 0xf8

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    rsub-int p1, p1, 0x100

    add-int/lit16 v0, p1, 0xf8

    :cond_1
    :goto_0
    return v0
.end method

.method private reset()V
    .locals 1

    .line 351
    monitor-enter p0

    const/4 v0, 0x0

    .line 352
    :try_start_0
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->status:I

    .line 353
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->frames:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 354
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->frameSizes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 355
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private rewriteAviHead()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lapp/panchip_weinikang/planecontroller/util/FileUtil;->VIDEO_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 412
    :goto_0
    iget-object v4, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->frameSizes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_0

    .line 413
    iget-object v4, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->frameSizes:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 415
    :cond_0
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->frameSizes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v3, v2

    add-int/lit16 v2, v3, 0x122

    .line 417
    iget-object v4, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->frameSizes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x24

    const/4 v4, 0x4

    .line 418
    new-array v5, v4, [B

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    const v6, 0xff00

    and-int v7, v2, v6

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    const/4 v8, 0x1

    aput-byte v7, v5, v8

    const/high16 v7, 0xff0000

    and-int v9, v2, v7

    shr-int/lit8 v9, v9, 0x10

    int-to-byte v9, v9

    const/4 v10, 0x2

    aput-byte v9, v5, v10

    const/high16 v9, -0x1000000

    and-int/2addr v2, v9

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    const/4 v11, 0x3

    aput-byte v2, v5, v11

    const-wide/16 v12, 0x4

    .line 424
    invoke-virtual {v1, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 425
    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->write([B)V

    .line 428
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->frameSizes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 429
    new-array v5, v4, [B

    and-int/lit16 v12, v2, 0xff

    int-to-byte v12, v12

    aput-byte v12, v5, v0

    and-int v12, v2, v6

    shr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v5, v8

    and-int v12, v2, v7

    shr-int/lit8 v12, v12, 0x10

    int-to-byte v12, v12

    aput-byte v12, v5, v10

    and-int/2addr v2, v9

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v5, v11

    const-wide/16 v12, 0x30

    .line 435
    invoke-virtual {v1, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 436
    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->write([B)V

    const-wide/16 v12, 0x8c

    .line 437
    invoke-virtual {v1, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 438
    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->write([B)V

    add-int/2addr v3, v4

    .line 442
    new-array v2, v4, [B

    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    and-int v0, v3, v6

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, v2, v8

    and-int v0, v3, v7

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    aput-byte v0, v2, v10

    and-int v0, v3, v9

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    aput-byte v0, v2, v11

    const-wide/16 v3, 0x13e

    .line 448
    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 449
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_1
    return-void
.end method

.method public static setFPS(I)V
    .locals 0

    .line 208
    sput p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->FPS:I

    .line 209
    invoke-static {}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->setFrameInterval()V

    return-void
.end method

.method private static setFrameInterval()V
    .locals 7

    const-string v0, "avi encoder"

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->FPS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-boolean v0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->DOUBLE_FRAME_RATE:Z

    const/4 v1, 0x2

    const v2, 0xf4240

    if-eqz v0, :cond_0

    .line 215
    sget v0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->FPS:I

    div-int/2addr v2, v0

    div-int/2addr v2, v1

    sput v2, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->FRAME_INTERVAL:I

    goto :goto_0

    .line 217
    :cond_0
    sget v0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->FPS:I

    div-int/2addr v2, v0

    sput v2, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->FRAME_INTERVAL:I

    :goto_0
    const/4 v0, 0x4

    .line 218
    new-array v2, v0, [B

    .line 219
    sget v3, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->FRAME_INTERVAL:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    .line 220
    sget v3, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->FRAME_INTERVAL:I

    const v5, 0xff00

    and-int/2addr v3, v5

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    const/4 v5, 0x1

    aput-byte v3, v2, v5

    .line 221
    sget v3, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->FRAME_INTERVAL:I

    const/high16 v5, 0xff0000

    and-int/2addr v3, v5

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/4 v1, 0x3

    .line 222
    sget v3, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->FRAME_INTERVAL:I

    const/high16 v5, -0x1000000

    and-int/2addr v3, v5

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/4 v1, 0x0

    :goto_1
    if-eq v1, v0, :cond_1

    .line 225
    sget-object v3, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->aviHead:[B

    add-int/lit8 v5, v1, 0x20

    aget-byte v6, v2, v1

    aput-byte v6, v3, v5

    .line 226
    sget-object v3, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->aviHead:[B

    add-int/lit16 v5, v1, 0x80

    aget-byte v6, v2, v1

    aput-byte v6, v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 229
    :cond_1
    sget v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->FPS:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    :goto_2
    if-eq v4, v0, :cond_3

    .line 231
    sget-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->aviHead:[B

    add-int/lit8 v2, v4, 0x40

    sget-object v3, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->width_12W:[B

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 232
    sget-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->aviHead:[B

    add-int/lit8 v2, v4, 0x44

    sget-object v3, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->height_12W:[B

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 233
    sget-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->aviHead:[B

    add-int/lit16 v2, v4, 0xb0

    sget-object v3, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->width_12W:[B

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 234
    sget-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->aviHead:[B

    add-int/lit16 v2, v4, 0xb4

    sget-object v3, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->height_12W:[B

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 235
    sget-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->aviHead:[B

    add-int/lit16 v2, v4, 0xc0

    sget-object v3, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->image_size_12W:[B

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 237
    :cond_2
    sget v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->FPS:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    :goto_3
    if-eq v4, v0, :cond_3

    .line 239
    sget-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->aviHead:[B

    add-int/lit8 v2, v4, 0x40

    sget-object v3, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->width_11FPS:[B

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 240
    sget-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->aviHead:[B

    add-int/lit8 v2, v4, 0x44

    sget-object v3, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->height_11FPS:[B

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 241
    sget-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->aviHead:[B

    add-int/lit16 v2, v4, 0xb0

    sget-object v3, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->width_11FPS:[B

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 242
    sget-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->aviHead:[B

    add-int/lit16 v2, v4, 0xb4

    sget-object v3, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->height_11FPS:[B

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 243
    sget-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->aviHead:[B

    add-int/lit16 v2, v4, 0xc0

    sget-object v3, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->image_size_11FPS:[B

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private writeFrameData([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->frameSizes:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->fos:Ljava/io/FileOutputStream;

    sget-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->frameHead:[B

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 366
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->fos:Ljava/io/FileOutputStream;

    and-int/lit16 v1, p2, 0xff

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 367
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->fos:Ljava/io/FileOutputStream;

    const v1, 0xff00

    and-int/2addr v1, p2

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 368
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->fos:Ljava/io/FileOutputStream;

    const/high16 v1, 0xff0000

    and-int/2addr v1, p2

    shr-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 369
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->fos:Ljava/io/FileOutputStream;

    const/high16 v1, -0x1000000

    and-int/2addr p2, v1

    shr-int/lit8 p2, p2, 0x18

    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 370
    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->fos:Ljava/io/FileOutputStream;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V

    if-lez p3, :cond_0

    .line 372
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->fos:Ljava/io/FileOutputStream;

    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->dummy:[B

    invoke-virtual {p1, p2, v1, p3}, Ljava/io/FileOutputStream;->write([BII)V

    :cond_0
    return-void
.end method

.method private writeHead()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->fos:Ljava/io/FileOutputStream;

    sget-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->aviHead:[B

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 360
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->fos:Ljava/io/FileOutputStream;

    sget-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->moviHead:[B

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

.method private writeIdx()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->frameSizes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    .line 377
    sget-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->idxHead:[B

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x4

    aput-byte v2, v1, v3

    .line 378
    sget-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->idxHead:[B

    const v2, 0xff00

    and-int v4, v0, v2

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    const/4 v5, 0x5

    aput-byte v4, v1, v5

    .line 379
    sget-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->idxHead:[B

    const/high16 v4, 0xff0000

    and-int v5, v0, v4

    shr-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    const/4 v6, 0x6

    aput-byte v5, v1, v6

    .line 380
    sget-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->idxHead:[B

    const/high16 v5, -0x1000000

    and-int/2addr v0, v5

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    const/4 v6, 0x7

    aput-byte v0, v1, v6

    .line 381
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->fos:Ljava/io/FileOutputStream;

    sget-object v1, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->idxHead:[B

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 384
    new-array v0, v3, [B

    .line 385
    new-array v1, v3, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    .line 386
    :goto_0
    iget-object v9, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->frameSizes:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-eq v7, v9, :cond_0

    .line 387
    iget-object v9, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->fos:Ljava/io/FileOutputStream;

    sget-object v10, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->idxEntryHead:[B

    invoke-virtual {v9, v10}, Ljava/io/FileOutputStream;->write([B)V

    and-int/lit16 v9, v8, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v6

    and-int v9, v8, v2

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    const/4 v10, 0x1

    aput-byte v9, v0, v10

    and-int v9, v8, v4

    shr-int/lit8 v9, v9, 0x10

    int-to-byte v9, v9

    const/4 v11, 0x2

    aput-byte v9, v0, v11

    and-int v9, v8, v5

    shr-int/lit8 v9, v9, 0x18

    int-to-byte v9, v9

    const/4 v12, 0x3

    aput-byte v9, v0, v12

    .line 393
    iget-object v9, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->frameSizes:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    and-int/lit16 v13, v9, 0xff

    int-to-byte v13, v13

    aput-byte v13, v1, v6

    and-int v13, v9, v2

    shr-int/lit8 v13, v13, 0x8

    int-to-byte v13, v13

    aput-byte v13, v1, v10

    and-int v10, v9, v4

    shr-int/lit8 v10, v10, 0x10

    int-to-byte v10, v10

    aput-byte v10, v1, v11

    and-int v10, v9, v5

    shr-int/lit8 v10, v10, 0x18

    int-to-byte v10, v10

    aput-byte v10, v1, v12

    .line 398
    iget-object v10, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 399
    iget-object v10, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v10, v1}, Ljava/io/FileOutputStream;->write([B)V

    add-int/lit8 v9, v9, 0x8

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 402
    :cond_0
    iput v3, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->status:I

    return-void
.end method


# virtual methods
.method public closeFile()V
    .locals 2

    .line 501
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "avi encoder"

    const-string v1, "close file command"

    .line 502
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    monitor-enter p0

    const/4 v0, 0x3

    .line 504
    :try_start_0
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->status:I

    .line 505
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 506
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public feed(Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;)V
    .locals 2

    .line 487
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 488
    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->use()V

    .line 489
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->frames:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 490
    monitor-enter p0

    .line 491
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 492
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized kill()V
    .locals 2

    monitor-enter p0

    .line 511
    :try_start_0
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->status:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 512
    iput v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->status:I

    .line 513
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->frames:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    :try_start_1
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 517
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 520
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 523
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->running:Z

    .line 524
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 525
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 510
    monitor-exit p0

    throw v0
.end method

.method public openNewFile()V
    .locals 2

    .line 465
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->status:I

    if-nez v0, :cond_0

    .line 466
    monitor-enter p0

    :try_start_0
    const-string v0, "avi encoder"

    const-string v1, "open new file command"

    .line 467
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 468
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->status:I

    .line 469
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 470
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 12

    const/4 v0, 0x1

    .line 254
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->running:Z

    .line 255
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->running:Z

    if-eqz v1, :cond_f

    .line 257
    :try_start_0
    iget v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->status:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v1, :cond_6

    .line 258
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "avi encoder"

    const-string v4, "waiting IDLE"

    .line 259
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 261
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    :try_start_2
    iget v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->status:I

    if-ne v1, v0, :cond_4

    const-string v1, "avi encoder"

    const-string v4, "opening new file"

    .line 263
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/util/FileUtil;->generateFilename(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->filename:Ljava/lang/String;

    .line 265
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lapp/panchip_weinikang/planecontroller/util/FileUtil;->VIDEO_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->filename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->file:Ljava/io/File;

    .line 266
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->listener:Lapp/panchip_weinikang/planecontroller/util/AviEncoder$AviEncoderListener;

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->listener:Lapp/panchip_weinikang/planecontroller/util/AviEncoder$AviEncoderListener;

    invoke-interface {v1, v2}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder$AviEncoderListener;->onEncodingError(I)V

    .line 270
    :cond_1
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->reset()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 273
    :cond_2
    :try_start_3
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 274
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->file:Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->fos:Ljava/io/FileOutputStream;

    .line 275
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->writeHead()V

    .line 276
    iput v3, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->status:I

    const-string v1, "avi encoder"

    const-string v4, "waiting for encoding"

    .line 277
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->listener:Lapp/panchip_weinikang/planecontroller/util/AviEncoder$AviEncoderListener;

    if-eqz v1, :cond_6

    .line 279
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->listener:Lapp/panchip_weinikang/planecontroller/util/AviEncoder$AviEncoderListener;

    invoke-interface {v1}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder$AviEncoderListener;->onReadyToEncode()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_0
    move-exception v1

    .line 281
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 282
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->listener:Lapp/panchip_weinikang/planecontroller/util/AviEncoder$AviEncoderListener;

    if-eqz v1, :cond_3

    .line 283
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->listener:Lapp/panchip_weinikang/planecontroller/util/AviEncoder$AviEncoderListener;

    invoke-interface {v1, v0}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder$AviEncoderListener;->onEncodingError(I)V

    .line 284
    :cond_3
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->reset()V

    goto :goto_1

    .line 288
    :cond_4
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->listener:Lapp/panchip_weinikang/planecontroller/util/AviEncoder$AviEncoderListener;

    if-eqz v1, :cond_5

    .line 289
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->listener:Lapp/panchip_weinikang/planecontroller/util/AviEncoder$AviEncoderListener;

    invoke-interface {v1, v3}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder$AviEncoderListener;->onEncodingError(I)V

    .line 290
    :cond_5
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->reset()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 261
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 293
    :cond_6
    :goto_1
    iget v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->status:I

    if-eq v1, v3, :cond_9

    iget v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->status:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->frames:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    .line 330
    :cond_7
    iget v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->status:I

    if-ne v1, v3, :cond_8

    .line 332
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->writeIdx()V

    .line 333
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 334
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 336
    :cond_8
    iget v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->status:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const-string v1, "avi encoder"

    const-string v2, "idx finished"

    .line 337
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->rewriteAviHead()V

    .line 339
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->reset()V

    .line 340
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->listener:Lapp/panchip_weinikang/planecontroller/util/AviEncoder$AviEncoderListener;

    invoke-interface {v1}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder$AviEncoderListener;->onFinishEncoding()V

    goto/16 :goto_0

    .line 294
    :cond_9
    :goto_2
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->frames:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 295
    monitor-enter p0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    const-string v1, "avi encoder"

    const-string v2, "waiting frame"

    .line 296
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 298
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1

    .line 300
    :cond_a
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->frames:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;

    if-nez v1, :cond_b

    goto/16 :goto_0

    .line 305
    :cond_b
    invoke-virtual {v1}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->bytes()[B

    move-result-object v3

    invoke-virtual {v1}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->size()I

    move-result v4

    invoke-static {v3, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_c

    .line 307
    invoke-virtual {v1}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->free()V

    goto/16 :goto_0

    .line 310
    :cond_c
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 311
    sget v3, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->TARGET_WIDTH:I

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sget v4, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->TARGET_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v10, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 312
    iget-boolean v3, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->reversed:Z

    if-eqz v3, :cond_d

    const/high16 v3, 0x43340000    # 180.0f

    .line 313
    invoke-virtual {v10, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_d
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 314
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x0

    move-object v5, v2

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 315
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 316
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v3, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 317
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 318
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 319
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 320
    array-length v2, v4

    .line 321
    invoke-direct {p0, v2}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->calculateBytesToFill(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 323
    invoke-direct {p0, v4, v2, v3}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->writeFrameData([BII)V

    .line 324
    sget-boolean v5, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->DOUBLE_FRAME_RATE:Z

    if-eqz v5, :cond_e

    .line 325
    invoke-direct {p0, v4, v2, v3}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->writeFrameData([BII)V

    .line 326
    :cond_e
    invoke-virtual {v1}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->free()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    .line 345
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    .line 343
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public setAviEncoderListener(Lapp/panchip_weinikang/planecontroller/util/AviEncoder$AviEncoderListener;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->listener:Lapp/panchip_weinikang/planecontroller/util/AviEncoder$AviEncoderListener;

    return-void
.end method

.method public setFrameRate(I)V
    .locals 0

    return-void
.end method

.method public setReversed(Ljava/lang/Boolean;)V
    .locals 0

    .line 497
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->reversed:Z

    return-void
.end method

.method public setVideoHeight(I)V
    .locals 0

    return-void
.end method

.method public setVideoWidth(I)V
    .locals 0

    return-void
.end method
