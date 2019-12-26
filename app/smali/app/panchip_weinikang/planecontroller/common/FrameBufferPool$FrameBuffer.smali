.class public Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;
.super Ljava/lang/Object;
.source "FrameBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameBuffer"
.end annotation


# static fields
.field public static final MAX_BUFFER_SIZE:I = 0xf000


# instance fields
.field buffer:[B

.field count:I

.field owner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;",
            ">;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method private constructor <init>(Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->owner:Ljava/lang/ref/WeakReference;

    const p1, 0xf000

    .line 84
    new-array p1, p1, [B

    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->buffer:[B

    const/4 p1, 0x0

    .line 85
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->size:I

    .line 86
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->count:I

    return-void
.end method

.method synthetic constructor <init>(Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$1;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;-><init>(Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;)V

    return-void
.end method


# virtual methods
.method public alloc([BII)V
    .locals 2

    .line 90
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->buffer:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iput p3, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->size:I

    return-void
.end method

.method public bytes()[B
    .locals 1

    .line 110
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->buffer:[B

    return-object v0
.end method

.method public free()V
    .locals 1

    .line 99
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->count:I

    .line 100
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->count:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->size:I

    .line 102
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p0}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->recycle(Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;)V

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 114
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->size:I

    return v0
.end method

.method public use()V
    .locals 1

    .line 95
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->count:I

    return-void
.end method
