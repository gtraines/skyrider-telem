.class public Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;
.super Ljava/lang/Object;
.source "FrameBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;
    }
.end annotation


# instance fields
.field private bufferList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private bufferQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private capacity:I

.field private size:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p2, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->capacity:I

    .line 20
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->bufferList:Ljava/util/List;

    .line 21
    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->bufferQueue:Ljava/util/Queue;

    .line 23
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->size:I

    const/4 p1, 0x0

    .line 24
    :goto_0
    iget p2, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->size:I

    if-eq p1, p2, :cond_0

    .line 25
    new-instance p2, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;-><init>(Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$1;)V

    .line 26
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->bufferList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->bufferQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized fetch()Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;
    .locals 3

    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->bufferQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->bufferQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;

    :goto_0
    move-object v0, v1

    goto :goto_2

    .line 37
    :cond_0
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->size:I

    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->capacity:I

    if-ge v0, v2, :cond_1

    .line 38
    new-instance v0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;

    invoke-direct {v0, p0, v1}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;-><init>(Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$1;)V

    .line 39
    iget v1, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->size:I

    .line 40
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->bufferList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 43
    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->bufferQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 46
    :cond_2
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->bufferQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 48
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :goto_2
    if-eqz v0, :cond_3

    .line 53
    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->use()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 32
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recycle(Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;)V
    .locals 1

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->bufferQueue:Ljava/util/Queue;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->bufferQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 57
    monitor-exit p0

    throw p1
.end method

.method public release()V
    .locals 2

    .line 65
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->bufferList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->bufferList:Ljava/util/List;

    .line 67
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->bufferQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 68
    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;->bufferQueue:Ljava/util/Queue;

    return-void
.end method
