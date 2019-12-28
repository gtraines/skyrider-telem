.class final Lapp/panchip_weinikang/planecontroller/util/FileUtil$4;
.super Ljava/lang/Thread;
.source "FileUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/panchip_weinikang/planecontroller/util/FileUtil;->savePhoto(Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;ZLandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$photo:Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;

.field final synthetic val$reverse:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;ZLandroid/os/Handler;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/util/FileUtil$4;->val$filename:Ljava/lang/String;

    iput-object p2, p0, Lapp/panchip_weinikang/planecontroller/util/FileUtil$4;->val$photo:Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;

    iput-boolean p3, p0, Lapp/panchip_weinikang/planecontroller/util/FileUtil$4;->val$reverse:Z

    iput-object p4, p0, Lapp/panchip_weinikang/planecontroller/util/FileUtil$4;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 120
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lapp/panchip_weinikang/planecontroller/util/FileUtil;->PHOTO_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/util/FileUtil$4;->val$filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 123
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 125
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 126
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/FileUtil$4;->val$photo:Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->bytes()[B

    move-result-object v0

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/util/FileUtil$4;->val$photo:Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;

    invoke-virtual {v2}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/FileUtil$4;->val$photo:Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->free()V

    return-void

    .line 129
    :cond_0
    :try_start_1
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 130
    sget v2, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->TARGET_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    sget v4, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->TARGET_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v9, v2, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 131
    iget-boolean v2, p0, Lapp/panchip_weinikang/planecontroller/util/FileUtil$4;->val$reverse:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x43340000    # 180.0f

    .line 132
    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 133
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 134
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 135
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 136
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 137
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 138
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 139
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/FileUtil$4;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 141
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    :goto_0
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/FileUtil$4;->val$photo:Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->free()V

    goto :goto_2

    :goto_1
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/FileUtil$4;->val$photo:Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;

    invoke-virtual {v1}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->free()V

    throw v0

    :cond_2
    :goto_2
    return-void
.end method
