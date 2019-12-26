.class public Lapp/panchip_weinikang/planecontroller/common/VideoController;
.super Ljava/lang/Object;
.source "VideoController.java"

# interfaces
.implements Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$JpegRecvListener;
.implements Lapp/panchip_weinikang/planecontroller/util/AviEncoder$AviEncoderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/panchip_weinikang/planecontroller/common/VideoController$RenderTask;,
        Lapp/panchip_weinikang/planecontroller/common/VideoController$VideoCtrlCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private active:Z

.field private alphaAnimation:Landroid/view/animation/Animation;

.field private aviEncoder:Lapp/panchip_weinikang/planecontroller/util/AviEncoder;

.field private bg:Landroid/widget/ImageView;

.field private bgBottom:Landroid/view/View;

.field private bgTop:Landroid/view/View;

.field private blur:Z

.field private cameraReversed:Z

.field private chronometer:Landroid/widget/Chronometer;

.field private context:Landroid/content/Context;

.field private ctrlEnable:Z

.field private currentFrame:Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;

.field private dstRect:Landroid/graphics/Rect;

.field private dstRectLeft:Landroid/graphics/Rect;

.field private dstRectRight:Landroid/graphics/Rect;

.field private fpsText:Landroid/widget/TextView;

.field private frameCnt:I

.field private frameCursor:I

.field private frameTime:[J

.field private isShow3D:Z

.field private mediaHandler:Landroid/os/Handler;

.field private paint:Landroid/graphics/Paint;

.field private playing:Z

.field private playingBeforePause:Z

.field private recordFinished:Z

.field private recordSoundId:I

.field private recordStreamId:I

.field private recordTimeBar:Landroid/view/View;

.field private recording:Z

.field private redDot:Landroid/widget/ImageView;

.field private renderTask:Lapp/panchip_weinikang/planecontroller/common/VideoController$RenderTask;

.field private reverseMatrix:Landroid/graphics/Matrix;

.field private root:Landroid/widget/RelativeLayout;

.field private screenHolder:Landroid/view/SurfaceHolder;

.field private screenSurface:Landroid/view/SurfaceView;

.field private shootSoundId:I

.field private shootStreamId:I

.field private soundPool:Landroid/media/SoundPool;

.field private video:Landroid/widget/ImageView;

.field private videoCtrlCallback:Lapp/panchip_weinikang/planecontroller/common/VideoController$VideoCtrlCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lapp/panchip_weinikang/planecontroller/common/VideoController$1;

    invoke-direct {v0, p0}, Lapp/panchip_weinikang/planecontroller/common/VideoController$1;-><init>(Lapp/panchip_weinikang/planecontroller/common/VideoController;)V

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->mediaHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    .line 88
    new-array v0, v0, [J

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->frameTime:[J

    .line 109
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->context:Landroid/content/Context;

    .line 111
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f070099

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->root:Landroid/widget/RelativeLayout;

    const v1, 0x7f07009b

    .line 112
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->screenSurface:Landroid/view/SurfaceView;

    .line 113
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->screenSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->screenHolder:Landroid/view/SurfaceHolder;

    .line 114
    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/util/UIUtil;->getScreenRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->dstRect:Landroid/graphics/Rect;

    .line 115
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->dstRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->dstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    const/4 v4, 0x2

    div-int/2addr v3, v4

    iget-object v5, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->dstRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v5, v5, 0x4

    const/4 v6, 0x3

    mul-int/lit8 v5, v5, 0x3

    const/4 v7, 0x0

    invoke-direct {v1, v7, v2, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->dstRectLeft:Landroid/graphics/Rect;

    .line 116
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->dstRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    div-int/2addr v2, v4

    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->dstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v3, v3, 0x4

    iget-object v5, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->dstRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->dstRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v8, v8, 0x4

    mul-int/lit8 v8, v8, 0x3

    invoke-direct {v1, v2, v3, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->dstRectRight:Landroid/graphics/Rect;

    .line 117
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->paint:Landroid/graphics/Paint;

    const v1, 0x7f070028

    .line 119
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->bg:Landroid/widget/ImageView;

    const v1, 0x7f07002a

    .line 120
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->bgTop:Landroid/view/View;

    const v1, 0x7f070029

    .line 121
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->bgBottom:Landroid/view/View;

    const v1, 0x7f0700da

    .line 122
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->video:Landroid/widget/ImageView;

    const v1, 0x7f07008a

    .line 123
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->recordTimeBar:Landroid/view/View;

    const v1, 0x7f0700cb

    .line 124
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Chronometer;

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->chronometer:Landroid/widget/Chronometer;

    const v1, 0x7f07008b

    .line 125
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->redDot:Landroid/widget/ImageView;

    const v1, 0x7f070053

    .line 127
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->fpsText:Landroid/widget/TextView;

    const v1, 0x7f070034

    .line 150
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lapp/panchip_weinikang/planecontroller/common/VideoController$4;

    invoke-direct {v1, p0}, Lapp/panchip_weinikang/planecontroller/common/VideoController$4;-><init>(Lapp/panchip_weinikang/planecontroller/common/VideoController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iput-boolean v7, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->playing:Z

    .line 157
    iput-boolean v7, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->ctrlEnable:Z

    .line 159
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->reverseMatrix:Landroid/graphics/Matrix;

    .line 160
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->reverseMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 162
    new-instance v0, Lapp/panchip_weinikang/planecontroller/common/VideoController$RenderTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lapp/panchip_weinikang/planecontroller/common/VideoController$RenderTask;-><init>(Lapp/panchip_weinikang/planecontroller/common/VideoController;Lapp/panchip_weinikang/planecontroller/common/VideoController$1;)V

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->renderTask:Lapp/panchip_weinikang/planecontroller/common/VideoController$RenderTask;

    .line 164
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v4, v6, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->soundPool:Landroid/media/SoundPool;

    .line 165
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->soundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    const v2, 0x7f0b0001

    invoke-virtual {v0, p1, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->shootSoundId:I

    .line 166
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->soundPool:Landroid/media/SoundPool;

    const/high16 v2, 0x7f0b0000

    invoke-virtual {v0, p1, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->recordSoundId:I

    .line 168
    new-instance v0, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;

    invoke-direct {v0}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;-><init>()V

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->aviEncoder:Lapp/panchip_weinikang/planecontroller/util/AviEncoder;

    .line 169
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->aviEncoder:Lapp/panchip_weinikang/planecontroller/util/AviEncoder;

    invoke-virtual {v0, p0}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->setAviEncoderListener(Lapp/panchip_weinikang/planecontroller/util/AviEncoder$AviEncoderListener;)V

    .line 170
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->aviEncoder:Lapp/panchip_weinikang/planecontroller/util/AviEncoder;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->start()V

    .line 171
    iput-boolean v7, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->recording:Z

    .line 172
    iput-boolean v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->recordFinished:Z

    .line 175
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->alphaAnimation:Landroid/view/animation/Animation;

    .line 176
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->alphaAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 177
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->alphaAnimation:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 178
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->alphaAnimation:Landroid/view/animation/Animation;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 179
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->alphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 181
    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/util/ImageUtil;->init(Landroid/content/Context;)V

    .line 182
    iput-boolean v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->blur:Z

    return-void
.end method

.method static synthetic access$000(Lapp/panchip_weinikang/planecontroller/common/VideoController;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lapp/panchip_weinikang/planecontroller/common/VideoController;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->isShow3D:Z

    return p0
.end method

.method static synthetic access$102(Lapp/panchip_weinikang/planecontroller/common/VideoController;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->isShow3D:Z

    return p1
.end method

.method static synthetic access$300(Lapp/panchip_weinikang/planecontroller/common/VideoController;)Landroid/widget/ImageView;
    .locals 0

    .line 43
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->bg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lapp/panchip_weinikang/planecontroller/common/VideoController;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->bgBottom:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lapp/panchip_weinikang/planecontroller/common/VideoController;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->bgTop:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lapp/panchip_weinikang/planecontroller/common/VideoController;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->fpsText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lapp/panchip_weinikang/planecontroller/common/VideoController;)Landroid/widget/ImageView;
    .locals 0

    .line 43
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->video:Landroid/widget/ImageView;

    return-object p0
.end method

.method private fpsCount()V
    .locals 7

    .line 330
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->frameTime:[J

    iget v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->frameCursor:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 331
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->frameCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->frameCnt:I

    .line 332
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->frameCursor:I

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa

    rem-int/2addr v0, v1

    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->frameCursor:I

    .line 333
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->frameCnt:I

    const/high16 v2, 0x447a0000    # 1000.0f

    if-lt v0, v1, :cond_0

    .line 334
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->frameTime:[J

    iget v3, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->frameCursor:I

    aget-wide v3, v0, v3

    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->frameTime:[J

    iget v5, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->frameCursor:I

    add-int/lit8 v5, v5, 0x9

    rem-int/2addr v5, v1

    aget-wide v5, v0, v5

    const/high16 v0, 0x41100000    # 9.0f

    sub-long/2addr v5, v3

    long-to-float v1, v5

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 336
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->renderTask:Lapp/panchip_weinikang/planecontroller/common/VideoController$RenderTask;

    invoke-virtual {v1, v0}, Lapp/panchip_weinikang/planecontroller/common/VideoController$RenderTask;->setFps(F)V

    goto :goto_0

    .line 338
    :cond_0
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->frameCnt:I

    int-to-float v0, v0

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->frameTime:[J

    iget v3, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->frameCursor:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v3, v1, v3

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->frameTime:[J

    const/4 v5, 0x0

    aget-wide v5, v1, v5

    sub-long/2addr v3, v5

    long-to-float v1, v3

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 339
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->renderTask:Lapp/panchip_weinikang/planecontroller/common/VideoController$RenderTask;

    invoke-virtual {v1, v0}, Lapp/panchip_weinikang/planecontroller/common/VideoController$RenderTask;->setFps(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->active:Z

    .line 191
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->ctrlEnable:Z

    .line 193
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/common/VideoController;->start()V

    return-void
.end method

.method public onEncodingError(I)V
    .locals 0

    return-void
.end method

.method public onFinishEncoding()V
    .locals 2

    const/4 v0, 0x1

    .line 374
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->recordFinished:Z

    .line 375
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lapp/panchip_weinikang/planecontroller/common/VideoController$6;

    invoke-direct {v1, p0}, Lapp/panchip_weinikang/planecontroller/common/VideoController$6;-><init>(Lapp/panchip_weinikang/planecontroller/common/VideoController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFrameReceived(Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;)V
    .locals 9

    .line 270
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->playing:Z

    if-eqz v0, :cond_8

    .line 273
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->recording:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->aviEncoder:Lapp/panchip_weinikang/planecontroller/util/AviEncoder;

    invoke-virtual {v0, p1}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->feed(Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;)V

    .line 277
    :cond_0
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->currentFrame:Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->currentFrame:Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->free()V

    .line 282
    :cond_1
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->currentFrame:Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;

    .line 283
    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->bytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->size()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 286
    :cond_2
    iget-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->cameraReversed:Z

    if-eqz p1, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 287
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object v7, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->reverseMatrix:Landroid/graphics/Matrix;

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 288
    :cond_3
    iget-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->blur:Z

    if-eqz p1, :cond_4

    const/high16 p1, 0x3f800000    # 1.0f

    .line 289
    invoke-static {v2, p1}, Lapp/panchip_weinikang/planecontroller/util/ImageUtil;->smooth(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 292
    :cond_4
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/common/VideoController;->fpsCount()V

    .line 293
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->renderTask:Lapp/panchip_weinikang/planecontroller/common/VideoController$RenderTask;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 296
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->bg:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    .line 297
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lapp/panchip_weinikang/planecontroller/common/VideoController$5;

    invoke-direct {v0, p0}, Lapp/panchip_weinikang/planecontroller/common/VideoController$5;-><init>(Lapp/panchip_weinikang/planecontroller/common/VideoController;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 308
    :cond_5
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->screenHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p1, "canvas"

    const-string v0, "null"

    .line 310
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 313
    :cond_6
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->isShow3D:Z

    if-eqz v0, :cond_7

    .line 314
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 315
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->dstRectLeft:Landroid/graphics/Rect;

    invoke-static {v2, v0}, Lapp/panchip_weinikang/planecontroller/util/UIUtil;->getBitmapSrcRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->dstRectLeft:Landroid/graphics/Rect;

    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 316
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->dstRectRight:Landroid/graphics/Rect;

    invoke-static {v2, v0}, Lapp/panchip_weinikang/planecontroller/util/UIUtil;->getBitmapSrcRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->dstRectRight:Landroid/graphics/Rect;

    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 318
    :cond_7
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->dstRect:Landroid/graphics/Rect;

    invoke-static {v2, v0}, Lapp/panchip_weinikang/planecontroller/util/UIUtil;->getBitmapSrcRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->dstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 320
    :goto_0
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->screenHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_8
    return-void
.end method

.method public onPacketLoss(IIF)V
    .locals 0

    return-void
.end method

.method public onReadyToEncode()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 1

    .line 210
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->playing:Z

    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->playingBeforePause:Z

    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->playing:Z

    .line 212
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->playingBeforePause:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->videoCtrlCallback:Lapp/panchip_weinikang/planecontroller/common/VideoController$VideoCtrlCallback;

    invoke-interface {v0}, Lapp/panchip_weinikang/planecontroller/common/VideoController$VideoCtrlCallback;->videoPause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 201
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->playingBeforePause:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->playing:Z

    .line 203
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->videoCtrlCallback:Lapp/panchip_weinikang/planecontroller/common/VideoController$VideoCtrlCallback;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->videoCtrlCallback:Lapp/panchip_weinikang/planecontroller/common/VideoController$VideoCtrlCallback;

    invoke-interface {v0}, Lapp/panchip_weinikang/planecontroller/common/VideoController$VideoCtrlCallback;->videoResume()V

    :cond_0
    return-void
.end method

.method public reversedCamera(Z)V
    .locals 1

    .line 231
    iput-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->cameraReversed:Z

    .line 232
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->aviEncoder:Lapp/panchip_weinikang/planecontroller/util/AviEncoder;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->setReversed(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setVideoCtrlCallback(Lapp/panchip_weinikang/planecontroller/common/VideoController$VideoCtrlCallback;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->videoCtrlCallback:Lapp/panchip_weinikang/planecontroller/common/VideoController$VideoCtrlCallback;

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->playing:Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->playing:Z

    .line 219
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->videoCtrlCallback:Lapp/panchip_weinikang/planecontroller/common/VideoController$VideoCtrlCallback;

    invoke-interface {v0}, Lapp/panchip_weinikang/planecontroller/common/VideoController$VideoCtrlCallback;->videoPause()V

    .line 220
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->aviEncoder:Lapp/panchip_weinikang/planecontroller/util/AviEncoder;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->kill()V

    .line 222
    invoke-static {}, Lapp/panchip_weinikang/planecontroller/util/ImageUtil;->release()V

    .line 224
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->currentFrame:Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->currentFrame:Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->free()V

    :cond_0
    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->context:Landroid/content/Context;

    return-void
.end method

.method public takePhoto()Z
    .locals 3

    .line 236
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->playing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->currentFrame:Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->currentFrame:Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;

    iget-boolean v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->cameraReversed:Z

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->mediaHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lapp/panchip_weinikang/planecontroller/util/FileUtil;->savePhoto(Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;ZLandroid/os/Handler;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public takeVideo()Z
    .locals 5

    .line 244
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->playing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->recording:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->recordFinished:Z

    if-eqz v0, :cond_2

    .line 245
    :cond_0
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->recording:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 246
    iput-boolean v2, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->recording:Z

    .line 247
    iput-boolean v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->recordFinished:Z

    .line 249
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->aviEncoder:Lapp/panchip_weinikang/planecontroller/util/AviEncoder;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->openNewFile()V

    .line 250
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->video:Landroid/widget/ImageView;

    const v3, 0x7f0600cd

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->recordTimeBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->redDot:Landroid/widget/ImageView;

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->alphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 254
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->chronometer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/widget/Chronometer;->setBase(J)V

    .line 255
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->chronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    goto :goto_0

    .line 257
    :cond_1
    iput-boolean v1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->recording:Z

    .line 258
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->recordTimeBar:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->redDot:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 260
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->chronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 261
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController;->aviEncoder:Lapp/panchip_weinikang/planecontroller/util/AviEncoder;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->closeFile()V

    :goto_0
    return v2

    :cond_2
    return v1
.end method
