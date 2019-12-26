.class public Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;
.super Landroid/app/Activity;
.source "ReplayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lapp/panchip_weinikang/planecontroller/util/AviDecoder$AviDecoderListener;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$ProgressUpdateTask;
    }
.end annotation


# instance fields
.field private controlBar:Landroid/view/View;

.field private decoder:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

.field private duration:Landroid/widget/TextView;

.field private filename:Ljava/lang/String;

.field private isPlayingBeforePause:Z

.field private navigationBar:Landroid/view/View;

.field private playPause:Landroid/widget/ImageView;

.field private progress:Landroid/widget/TextView;

.field private progressUpdateTask:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$ProgressUpdateTask;

.field private ready:Z

.field private seekBar:Landroid/widget/SeekBar;

.field private stop:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->ready:Z

    return p0
.end method

.method static synthetic access$100(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)Lapp/panchip_weinikang/planecontroller/util/AviDecoder;
    .locals 0

    .line 17
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->decoder:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    return-object p0
.end method

.method static synthetic access$200(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 17
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->playPause:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)Landroid/widget/SeekBar;
    .locals 0

    .line 17
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->seekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$400(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)Landroid/widget/TextView;
    .locals 0

    .line 17
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->duration:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)Landroid/widget/TextView;
    .locals 0

    .line 17
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->progress:Landroid/widget/TextView;

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->filename:Ljava/lang/String;

    const v0, 0x7f070025

    .line 44
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07004f

    .line 45
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f070072

    .line 47
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->navigationBar:Landroid/view/View;

    const v0, 0x7f070036

    .line 48
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->controlBar:Landroid/view/View;

    const v0, 0x7f070047

    .line 49
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->duration:Landroid/widget/TextView;

    const v0, 0x7f0700ca

    .line 50
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->progress:Landroid/widget/TextView;

    const v0, 0x7f070083

    .line 51
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->playPause:Landroid/widget/ImageView;

    .line 52
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->playPause:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0700bd

    .line 53
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->stop:Landroid/widget/ImageView;

    .line 54
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->stop:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0700a9

    .line 55
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->seekBar:Landroid/widget/SeekBar;

    .line 56
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$1;

    invoke-direct {v1, p0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$1;-><init>(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f07009a

    .line 84
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 85
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f070025

    if-eq p1, v0, :cond_5

    const v0, 0x7f070083

    const v1, 0x7f0600a6

    if-eq p1, v0, :cond_3

    const v0, 0x7f07009a

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const v0, 0x7f0700bd

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iget-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->ready:Z

    if-eqz p1, :cond_6

    .line 126
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->decoder:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->reset()V

    .line 127
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->decoder:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->showFirstFrame()V

    .line 128
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 129
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->playPause:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->navigationBar:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 134
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->navigationBar:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->controlBar:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->navigationBar:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->controlBar:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 116
    :cond_3
    iget-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->ready:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->decoder:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_4

    .line 117
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->decoder:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->play()V

    .line 118
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->playPause:Landroid/widget/ImageView;

    const v0, 0x7f0600a5

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 119
    :cond_4
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->decoder:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 120
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->decoder:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->pause()V

    .line 121
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->playPause:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 113
    :cond_5
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->finish()V

    :cond_6
    :goto_0
    return-void
.end method

.method public onCompletion(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)V
    .locals 1

    const-string p1, "replay"

    const-string v0, "complete"

    .line 146
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance p1, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$2;

    invoke-direct {p1, p0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$2;-><init>(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)V

    invoke-virtual {p0, p1}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090035

    .line 35
    invoke-virtual {p0, p1}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->setContentView(I)V

    .line 37
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 105
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->decoder:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->release()V

    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 97
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->decoder:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->isPlayingBeforePause:Z

    .line 98
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->isPlayingBeforePause:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->decoder:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->pause()V

    .line 100
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepared(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)V
    .locals 2

    const-string v0, "AviDecoder"

    const-string v1, "onPrepared"

    .line 157
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$3;

    invoke-direct {v0, p0, p1}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$3;-><init>(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)V

    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 168
    iput-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->ready:Z

    .line 169
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->decoder:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->start()V

    return-void
.end method

.method public onProgress(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;II)V
    .locals 0

    .line 175
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->progressUpdateTask:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$ProgressUpdateTask;

    iput p3, p1, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$ProgressUpdateTask;->progressFrame:I

    .line 176
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->progressUpdateTask:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$ProgressUpdateTask;

    invoke-static {p2}, Lapp/panchip_weinikang/planecontroller/util/TransformUtil;->ms2sec(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$ProgressUpdateTask;->progressTime:Ljava/lang/String;

    .line 177
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->progressUpdateTask:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$ProgressUpdateTask;

    invoke-virtual {p0, p1}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 90
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->isPlayingBeforePause:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->decoder:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->play()V

    .line 92
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 182
    new-instance v0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-direct {v0, p0}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->decoder:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    .line 183
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->decoder:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-virtual {v0, p0}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->setAviDecoderListener(Lapp/panchip_weinikang/planecontroller/util/AviDecoder$AviDecoderListener;)V

    .line 184
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->decoder:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->setDataSource(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->decoder:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-virtual {v0, p1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 186
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->decoder:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->prepareAsync()V

    .line 188
    new-instance p1, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$ProgressUpdateTask;

    invoke-direct {p1, p0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$ProgressUpdateTask;-><init>(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)V

    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->progressUpdateTask:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$ProgressUpdateTask;

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
