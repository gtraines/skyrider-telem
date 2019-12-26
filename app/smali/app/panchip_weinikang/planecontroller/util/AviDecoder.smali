.class public Lapp/panchip_weinikang/planecontroller/util/AviDecoder;
.super Ljava/lang/Thread;
.source "AviDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/panchip_weinikang/planecontroller/util/AviDecoder$FrameIndex;,
        Lapp/panchip_weinikang/planecontroller/util/AviDecoder$AviDecoderListener;
    }
.end annotation


# static fields
.field private static final IDX_SIZE_OFFSET:I = 0x146

.field private static final MOVI_START:I = 0x14a


# instance fields
.field private dstRect:Landroid/graphics/Rect;

.field private frameBuffer:[B

.field private frameIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lapp/panchip_weinikang/planecontroller/util/AviDecoder$FrameIndex;",
            ">;"
        }
    .end annotation
.end field

.field private frameInterval:I

.field private frameNum:I

.field private frameRate:I

.field private holder:Landroid/view/SurfaceHolder;

.field private lastFramePlayTime:J

.field private listener:Lapp/panchip_weinikang/planecontroller/util/AviDecoder$AviDecoderListener;

.field private maxFrameSize:I

.field private nextFrame:I

.field private paint:Landroid/graphics/Paint;

.field private playing:Z

.field private prepared:Z

.field private raf:Ljava/io/RandomAccessFile;

.field private running:Z

.field private sourceFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->maxFrameSize:I

    .line 59
    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/util/UIUtil;->getScreenRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->dstRect:Landroid/graphics/Rect;

    .line 60
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic access$000(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->sourceFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)Ljava/io/RandomAccessFile;
    .locals 0

    .line 19
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->raf:Ljava/io/RandomAccessFile;

    return-object p0
.end method

.method static synthetic access$1002(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->prepared:Z

    return p1
.end method

.method static synthetic access$102(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;
    .locals 0

    .line 19
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->raf:Ljava/io/RandomAccessFile;

    return-object p1
.end method

.method static synthetic access$1100(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)Lapp/panchip_weinikang/planecontroller/util/AviDecoder$AviDecoderListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->listener:Lapp/panchip_weinikang/planecontroller/util/AviDecoder$AviDecoderListener;

    return-object p0
.end method

.method static synthetic access$200(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)I
    .locals 0

    .line 19
    iget p0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->frameInterval:I

    return p0
.end method

.method static synthetic access$202(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;I)I
    .locals 0

    .line 19
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->frameInterval:I

    return p1
.end method

.method static synthetic access$302(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;I)I
    .locals 0

    .line 19
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->frameRate:I

    return p1
.end method

.method static synthetic access$400(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)I
    .locals 0

    .line 19
    iget p0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->frameNum:I

    return p0
.end method

.method static synthetic access$402(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;I)I
    .locals 0

    .line 19
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->frameNum:I

    return p1
.end method

.method static synthetic access$500(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)Ljava/util/ArrayList;
    .locals 0

    .line 19
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->frameIndices:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$502(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 19
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->frameIndices:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)I
    .locals 0

    .line 19
    iget p0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->maxFrameSize:I

    return p0
.end method

.method static synthetic access$702(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;I)I
    .locals 0

    .line 19
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->maxFrameSize:I

    return p1
.end method

.method static synthetic access$802(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;[B)[B
    .locals 0

    .line 19
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->frameBuffer:[B

    return-object p1
.end method

.method static synthetic access$902(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;I)I
    .locals 0

    .line 19
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->nextFrame:I

    return p1
.end method


# virtual methods
.method public getDuration()I
    .locals 2

    .line 105
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->frameNum:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->frameInterval:I

    mul-int v0, v0, v1

    return v0
.end method

.method public getFrameNum()I
    .locals 1

    .line 110
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->frameNum:I

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->playing:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .line 81
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->prepared:Z

    if-eqz v0, :cond_0

    .line 82
    monitor-enter p0

    const/4 v0, 0x0

    .line 83
    :try_start_0
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->playing:Z

    .line 84
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

.method public play()V
    .locals 1

    .line 72
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->prepared:Z

    if-eqz v0, :cond_0

    .line 73
    monitor-enter p0

    const/4 v0, 0x1

    .line 74
    :try_start_0
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->playing:Z

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 76
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

.method public prepareAsync()V
    .locals 1

    .line 118
    new-instance v0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;

    invoke-direct {v0, p0}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;-><init>(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)V

    .line 178
    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->start()V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->running:Z

    .line 250
    monitor-enter p0

    .line 251
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 252
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->frameIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->frameIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 252
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 262
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->playing:Z

    .line 263
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->nextFrame:I

    return-void
.end method

.method public run()V
    .locals 9

    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->running:Z

    const-wide/16 v1, 0x0

    .line 201
    iput-wide v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->lastFramePlayTime:J

    .line 202
    :catch_0
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->running:Z

    if-eqz v1, :cond_5

    .line 204
    :try_start_0
    iget-boolean v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->playing:Z

    if-nez v1, :cond_1

    .line 205
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 207
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 215
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->running:Z

    if-nez v1, :cond_2

    goto/16 :goto_2

    .line 217
    :cond_2
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->frameIndices:Ljava/util/ArrayList;

    iget v2, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->nextFrame:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$FrameIndex;

    .line 218
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->raf:Ljava/io/RandomAccessFile;

    iget v3, v1, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$FrameIndex;->offset:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 219
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->raf:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->frameBuffer:[B

    iget v4, v1, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$FrameIndex;->size:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 220
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->frameBuffer:[B

    iget v1, v1, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$FrameIndex;->size:I

    invoke-static {v2, v5, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 221
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    .line 222
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v3, v5, v5, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->dstRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 225
    iget-wide v5, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->lastFramePlayTime:J

    const/4 v1, 0x0

    sub-long v5, v3, v5

    iget v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->frameInterval:I

    int-to-long v7, v1

    cmp-long v1, v5, v7

    if-gez v1, :cond_3

    .line 226
    iget v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->frameInterval:I

    int-to-long v5, v1

    sub-long/2addr v5, v3

    iget-wide v3, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->lastFramePlayTime:J

    const/4 v1, 0x0

    add-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 227
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->lastFramePlayTime:J

    .line 229
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 231
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->listener:Lapp/panchip_weinikang/planecontroller/util/AviDecoder$AviDecoderListener;

    if-eqz v1, :cond_4

    .line 232
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->listener:Lapp/panchip_weinikang/planecontroller/util/AviDecoder$AviDecoderListener;

    iget v2, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->nextFrame:I

    iget v3, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->frameInterval:I

    mul-int v2, v2, v3

    iget v3, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->nextFrame:I

    invoke-interface {v1, p0, v2, v3}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$AviDecoderListener;->onProgress(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;II)V

    .line 234
    :cond_4
    iget v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->nextFrame:I

    add-int/2addr v1, v0

    iput v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->nextFrame:I

    .line 235
    iget v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->nextFrame:I

    iget v2, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->frameNum:I

    if-lt v1, v2, :cond_0

    .line 236
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->listener:Lapp/panchip_weinikang/planecontroller/util/AviDecoder$AviDecoderListener;

    invoke-interface {v1, p0}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$AviDecoderListener;->onCompletion(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)V

    .line 237
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->reset()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    .line 241
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 93
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->frameNum:I

    if-lt p1, v0, :cond_0

    .line 94
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->frameNum:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->nextFrame:I

    goto :goto_0

    .line 96
    :cond_0
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->nextFrame:I

    :goto_0
    return-void
.end method

.method public setAviDecoderListener(Lapp/panchip_weinikang/planecontroller/util/AviDecoder$AviDecoderListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->listener:Lapp/panchip_weinikang/planecontroller/util/AviDecoder$AviDecoderListener;

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->sourceFilePath:Ljava/lang/String;

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->holder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public showFirstFrame()V
    .locals 5

    .line 183
    :try_start_0
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->frameIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$FrameIndex;

    .line 184
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->raf:Ljava/io/RandomAccessFile;

    iget v3, v0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$FrameIndex;->offset:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 185
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->raf:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->frameBuffer:[B

    iget v4, v0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$FrameIndex;->size:I

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 186
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->frameBuffer:[B

    iget v0, v0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$FrameIndex;->size:I

    invoke-static {v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->dstRect:Landroid/graphics/Rect;

    invoke-static {v0, v2}, Lapp/panchip_weinikang/planecontroller/util/UIUtil;->getBitmapSrcRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->dstRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 190
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
