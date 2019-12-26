.class public Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;
.super Ljava/lang/Object;
.source "JPEGFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/panchip_weinikang/planecontroller/common/JPEGFactory$JPEGCallback;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0xf000

.field private static final DUMMY_SEG:[B

.field private static final INCOMPLETE_BYTE:B = -0x1t

.field private static final JPEG_HEAD_SEG:[B

.field private static final JPEG_TAIL_SEG:[B

.field private static final MAX_FRAME_BUFFER_NUM:I = 0x14

.field private static final WAITING_FOR_HEAD:I = 0x0

.field private static final WAITING_FOR_TAIL:I = 0x1


# instance fields
.field private buffer:[B

.field private callback:Lapp/panchip_weinikang/planecontroller/common/JPEGFactory$JPEGCallback;

.field private frameBufferPool:Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;

.field private lastByte:B

.field private size:I

.field private status:I

.field private supposedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    .line 11
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->JPEG_HEAD_SEG:[B

    .line 12
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->JPEG_TAIL_SEG:[B

    .line 13
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->DUMMY_SEG:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x1t
        -0x27t
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x1t
        -0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xf000

    .line 32
    new-array v0, v0, [B

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->buffer:[B

    .line 34
    new-instance v0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;

    const/4 v1, 0x5

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;-><init>(II)V

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->frameBufferPool:Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;

    return-void
.end method

.method public static bytesToHexString([BII)Ljava/lang/String;
    .locals 6

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_3

    .line 166
    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    add-int v3, p1, v2

    .line 170
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 171
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    .line 176
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private searchHead([BII)V
    .locals 7

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->status:I

    add-int/lit8 v1, p3, -0x1

    if-lt p2, v1, :cond_0

    return-void

    .line 66
    :cond_0
    iget-byte v2, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->lastByte:B

    sget-object v3, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->JPEG_HEAD_SEG:[B

    aget-byte v3, v3, v0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    aget-byte v2, p1, p2

    sget-object v3, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->JPEG_HEAD_SEG:[B

    aget-byte v3, v3, v5

    if-ne v2, v3, :cond_1

    .line 67
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->buffer:[B

    iget-byte v2, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->lastByte:B

    aput-byte v2, v1, v0

    .line 68
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->buffer:[B

    aget-byte v1, p1, p2

    iput-byte v1, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->lastByte:B

    aput-byte v1, v0, v5

    .line 69
    iput v4, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->size:I

    .line 71
    iput v5, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->status:I

    add-int/2addr p2, v5

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->searchTail([BII)V

    goto :goto_1

    :cond_1
    :goto_0
    if-eq p2, v1, :cond_3

    .line 76
    aget-byte v2, p1, p2

    sget-object v3, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->JPEG_HEAD_SEG:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, p2, 0x1

    aget-byte v3, p1, v2

    sget-object v6, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->JPEG_HEAD_SEG:[B

    aget-byte v6, v6, v5

    if-ne v3, v6, :cond_2

    .line 77
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->buffer:[B

    aget-byte v3, p1, p2

    aput-byte v3, v1, v0

    .line 78
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->buffer:[B

    aget-byte v1, p1, v2

    iput-byte v1, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->lastByte:B

    aput-byte v1, v0, v5

    .line 79
    iput v4, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->size:I

    .line 81
    iput v5, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->status:I

    add-int/2addr p2, v4

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->searchTail([BII)V

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private searchTail([BII)V
    .locals 8

    add-int/lit8 v0, p3, -0x1

    if-lt p2, v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-byte v1, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->lastByte:B

    sget-object v2, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->JPEG_TAIL_SEG:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    const v4, 0xf000

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v1, v2, :cond_5

    aget-byte v1, p1, p2

    sget-object v2, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->JPEG_TAIL_SEG:[B

    aget-byte v2, v2, v6

    if-eq v1, v2, :cond_1

    aget-byte v1, p1, p2

    sget-object v2, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->JPEG_HEAD_SEG:[B

    aget-byte v2, v2, v6

    if-ne v1, v2, :cond_5

    .line 94
    :cond_1
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->size:I

    if-ge v0, v4, :cond_4

    .line 95
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->buffer:[B

    iget v1, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->size:I

    aget-byte v2, p1, p2

    aput-byte v2, v0, v1

    .line 101
    aget-byte v0, p1, p2

    sget-object v1, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->JPEG_TAIL_SEG:[B

    aget-byte v1, v1, v6

    if-ne v0, v1, :cond_2

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->size:I

    iget v1, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->supposedSize:I

    if-ne v0, v1, :cond_2

    .line 103
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->frameBufferPool:Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->fetch()Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->buffer:[B

    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->size:I

    invoke-virtual {v0, v1, v3, v2}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->alloc([BII)V

    .line 105
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->callback:Lapp/panchip_weinikang/planecontroller/common/JPEGFactory$JPEGCallback;

    invoke-interface {v1, v0}, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory$JPEGCallback;->yield(Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;)V

    goto :goto_0

    .line 106
    :cond_2
    aget-byte v0, p1, p2

    sget-object v1, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->JPEG_HEAD_SEG:[B

    aget-byte v1, v1, v6

    if-ne v0, v1, :cond_3

    .line 107
    iput v5, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->size:I

    .line 108
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->buffer:[B

    sget-object v0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->JPEG_HEAD_SEG:[B

    aget-byte v0, v0, v3

    aput-byte v0, p1, v3

    .line 109
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->buffer:[B

    sget-object v0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->JPEG_HEAD_SEG:[B

    aget-byte v0, v0, v6

    aput-byte v0, p1, v6

    .line 110
    sget-object p1, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->JPEG_HEAD_SEG:[B

    aget-byte p1, p1, v6

    iput-byte p1, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->lastByte:B

    .line 111
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->buffer:[B

    add-int/2addr p2, v6

    invoke-direct {p0, p1, p2, p3}, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->searchTail([BII)V

    return-void

    :cond_3
    const-string v0, "size"

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->supposedSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    add-int/2addr p2, v6

    .line 116
    invoke-direct {p0, p1, p2, p3}, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->searchHead([BII)V

    goto/16 :goto_3

    .line 97
    :cond_4
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->reset()V

    return-void

    :cond_5
    :goto_1
    if-eq p2, v0, :cond_c

    .line 119
    iget v1, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->size:I

    if-ge v1, v4, :cond_b

    .line 120
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->buffer:[B

    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->size:I

    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->size:I

    aget-byte v7, p1, p2

    aput-byte v7, v1, v2

    .line 126
    aget-byte v1, p1, p2

    sget-object v2, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->JPEG_TAIL_SEG:[B

    aget-byte v2, v2, v3

    if-ne v1, v2, :cond_a

    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, v1

    sget-object v7, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->JPEG_TAIL_SEG:[B

    aget-byte v7, v7, v6

    if-eq v2, v7, :cond_6

    aget-byte v2, p1, v1

    sget-object v7, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->JPEG_HEAD_SEG:[B

    aget-byte v7, v7, v6

    if-ne v2, v7, :cond_a

    .line 127
    :cond_6
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->size:I

    if-ge v0, v4, :cond_9

    .line 128
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->buffer:[B

    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->size:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->size:I

    aget-byte v4, p1, v1

    aput-byte v4, v0, v2

    .line 134
    aget-byte v0, p1, v1

    sget-object v2, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->JPEG_TAIL_SEG:[B

    aget-byte v2, v2, v6

    if-ne v0, v2, :cond_7

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->size:I

    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->supposedSize:I

    if-ne v0, v2, :cond_7

    .line 136
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->frameBufferPool:Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->fetch()Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->buffer:[B

    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->size:I

    invoke-virtual {v0, v1, v3, v2}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->alloc([BII)V

    .line 138
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->callback:Lapp/panchip_weinikang/planecontroller/common/JPEGFactory$JPEGCallback;

    invoke-interface {v1, v0}, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory$JPEGCallback;->yield(Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;)V

    goto :goto_2

    .line 139
    :cond_7
    aget-byte v0, p1, v1

    sget-object v1, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->JPEG_HEAD_SEG:[B

    aget-byte v1, v1, v6

    if-ne v0, v1, :cond_8

    .line 140
    iput v5, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->size:I

    .line 141
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->buffer:[B

    sget-object v0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->JPEG_HEAD_SEG:[B

    aget-byte v0, v0, v3

    aput-byte v0, p1, v3

    .line 142
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->buffer:[B

    sget-object v0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->JPEG_HEAD_SEG:[B

    aget-byte v0, v0, v6

    aput-byte v0, p1, v6

    .line 143
    sget-object p1, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->JPEG_HEAD_SEG:[B

    aget-byte p1, p1, v6

    iput-byte p1, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->lastByte:B

    .line 144
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->buffer:[B

    add-int/2addr p2, v5

    invoke-direct {p0, p1, p2, p3}, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->searchTail([BII)V

    return-void

    :cond_8
    const-string v0, "size"

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->supposedSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->buffer:[B

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->buffer:[B

    aget-byte v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->buffer:[B

    iget v3, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->size:I

    sub-int/2addr v3, v5

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->buffer:[B

    iget v3, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->size:I

    sub-int/2addr v3, v6

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/2addr p2, v5

    .line 149
    invoke-direct {p0, p1, p2, p3}, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->searchHead([BII)V

    return-void

    .line 130
    :cond_9
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->reset()V

    return-void

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_1

    .line 122
    :cond_b
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->reset()V

    return-void

    .line 153
    :cond_c
    iget p2, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->size:I

    if-ge p2, v4, :cond_d

    .line 154
    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->buffer:[B

    iget p3, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->size:I

    add-int/lit8 v1, p3, 0x1

    iput v1, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->size:I

    aget-byte v1, p1, v0

    aput-byte v1, p2, p3

    .line 160
    aget-byte p1, p1, v0

    iput-byte p1, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->lastByte:B

    :goto_3
    return-void

    .line 156
    :cond_d
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->reset()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 38
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->frameBufferPool:Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->release()V

    return-void
.end method

.method public processRawData([BIII)V
    .locals 0

    .line 51
    iput p4, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->supposedSize:I

    .line 52
    iget p4, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->status:I

    packed-switch p4, :pswitch_data_0

    goto :goto_0

    .line 57
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->searchTail([BII)V

    goto :goto_0

    .line 54
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->searchHead([BII)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->size:I

    .line 47
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->status:I

    return-void
.end method

.method public setCallback(Lapp/panchip_weinikang/planecontroller/common/JPEGFactory$JPEGCallback;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->callback:Lapp/panchip_weinikang/planecontroller/common/JPEGFactory$JPEGCallback;

    return-void
.end method
