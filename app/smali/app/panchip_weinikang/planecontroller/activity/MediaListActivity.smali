.class public Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;
.super Landroid/app/Activity;
.source "MediaListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyOnItemClickListener;,
        Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;
    }
.end annotation


# static fields
.field private static final BROWSE:I = 0x0

.field private static final EDIT:I = 0x1

.field private static final GRID_COLUMNS:I = 0x6


# instance fields
.field private adapter:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;

.field private deleteWarning:Landroid/app/AlertDialog;

.field private edit:Landroid/widget/ImageView;

.field private editBar:Landroid/view/View;

.field private files:[Ljava/lang/String;

.field private gridHolder:Landroid/widget/GridView;

.field private imageWidth:I

.field private inflater:Landroid/view/LayoutInflater;

.field private mediaType:I

.field private metadataRetriever:Lwseemann/media/FFmpegMediaMetadataRetriever;

.field private operationMode:I

.field private select:[Z

.field private selected:Landroid/widget/TextView;

.field private selectedNum:I

.field private thumbnail:[Landroid/graphics/Bitmap;

.field private videoLength:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->mediaType:I

    .line 51
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->operationMode:I

    return-void
.end method

.method static synthetic access$000(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)I
    .locals 0

    .line 30
    iget p0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->selectedNum:I

    return p0
.end method

.method static synthetic access$100(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)[Z
    .locals 0

    .line 30
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->select:[Z

    return-object p0
.end method

.method static synthetic access$1000(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)[Landroid/graphics/Bitmap;
    .locals 0

    .line 30
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->thumbnail:[Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1100(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)[Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->videoLength:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)I
    .locals 0

    .line 30
    iget p0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->operationMode:I

    return p0
.end method

.method static synthetic access$1300(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->countSelected()V

    return-void
.end method

.method static synthetic access$200(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)[Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->files:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->refreshFileList()V

    return-void
.end method

.method static synthetic access$400(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->switchOperationMode()V

    return-void
.end method

.method static synthetic access$700(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)Landroid/view/LayoutInflater;
    .locals 0

    .line 30
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->inflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$800(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)I
    .locals 0

    .line 30
    iget p0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->mediaType:I

    return p0
.end method

.method static synthetic access$900(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)I
    .locals 0

    .line 30
    iget p0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->imageWidth:I

    return p0
.end method

.method private countSelected()V
    .locals 3

    const/4 v0, 0x0

    .line 156
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->selectedNum:I

    .line 157
    :goto_0
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->select:[Z

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 158
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->select:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 159
    iget v1, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->selectedNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->selectedNum:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->selected:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->selectedNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->select:[Z

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private init()V
    .locals 3

    .line 66
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->mediaType:I

    .line 70
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->inflater:Landroid/view/LayoutInflater;

    .line 71
    invoke-static {p0}, Lapp/panchip_weinikang/planecontroller/util/UIUtil;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    aget v0, v0, v2

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->imageWidth:I

    const v0, 0x7f070049

    .line 73
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->editBar:Landroid/view/View;

    const v0, 0x7f0700ad

    .line 74
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->selected:Landroid/widget/TextView;

    const v0, 0x7f070048

    .line 75
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->edit:Landroid/widget/ImageView;

    const v1, 0x7f070025

    .line 76
    invoke-virtual {p0, v1}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070040

    .line 78
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0700aa

    .line 79
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance v0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$1;

    invoke-direct {v0, p0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$1;-><init>(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)V

    .line 105
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c002c

    .line 106
    invoke-virtual {p0, v2}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c0023

    .line 107
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c0021

    .line 108
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 109
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->deleteWarning:Landroid/app/AlertDialog;

    .line 111
    new-instance v0, Lwseemann/media/FFmpegMediaMetadataRetriever;

    invoke-direct {v0}, Lwseemann/media/FFmpegMediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->metadataRetriever:Lwseemann/media/FFmpegMediaMetadataRetriever;

    .line 112
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->refreshFileList()V

    .line 114
    new-instance v0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;-><init>(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$1;)V

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->adapter:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;

    const v0, 0x7f070069

    .line 115
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->gridHolder:Landroid/widget/GridView;

    const v0, 0x7f0700d1

    .line 116
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->gridHolder:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->gridHolder:Landroid/widget/GridView;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->adapter:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->gridHolder:Landroid/widget/GridView;

    new-instance v2, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyOnItemClickListener;

    invoke-direct {v2, p0, v1}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyOnItemClickListener;-><init>(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private refreshFileList()V
    .locals 3

    .line 165
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->mediaType:I

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/util/FileUtil;->getFilesInFolder(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->files:[Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->files:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->select:[Z

    .line 167
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->countSelected()V

    .line 169
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->mediaType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->files:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->thumbnail:[Landroid/graphics/Bitmap;

    .line 171
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->files:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->videoLength:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 172
    :goto_0
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->files:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 173
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->metadataRetriever:Lwseemann/media/FFmpegMediaMetadataRetriever;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->files:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lwseemann/media/FFmpegMediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->thumbnail:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->metadataRetriever:Lwseemann/media/FFmpegMediaMetadataRetriever;

    invoke-virtual {v2}, Lwseemann/media/FFmpegMediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    .line 175
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->metadataRetriever:Lwseemann/media/FFmpegMediaMetadataRetriever;

    const-string v2, "duration"

    invoke-virtual {v1, v2}, Lwseemann/media/FFmpegMediaMetadataRetriever;->extractMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->videoLength:[Ljava/lang/String;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/util/TransformUtil;->ms2sec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private selectAll()V
    .locals 3

    .line 148
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->select:[Z

    array-length v0, v0

    iput v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->selectedNum:I

    const/4 v0, 0x0

    .line 149
    :goto_0
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->select:[Z

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 150
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->select:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->selected:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->selectedNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->select:[Z

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private switchOperationMode()V
    .locals 4

    .line 123
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->operationMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 124
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->operationMode:I

    .line 125
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->unselectAll()V

    .line 126
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->selected:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->selected:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->selectedNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->files:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->editBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->edit:Landroid/widget/ImageView;

    const v1, 0x7f060064

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 131
    :cond_0
    iput v1, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->operationMode:I

    .line 132
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->editBar:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->selected:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->edit:Landroid/widget/ImageView;

    const v1, 0x7f06006e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    :goto_0
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->adapter:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private unselectAll()V
    .locals 3

    const/4 v0, 0x0

    .line 140
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->selectedNum:I

    const/4 v1, 0x0

    .line 141
    :goto_0
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->select:[Z

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 142
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->select:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->selected:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->selectedNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->select:[Z

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f070025

    if-eq p1, v0, :cond_4

    const v0, 0x7f070040

    if-eq p1, v0, :cond_3

    const v0, 0x7f070048

    if-eq p1, v0, :cond_2

    const v0, 0x7f0700aa

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->selectedNum:I

    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->files:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 192
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->selectAll()V

    .line 193
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->adapter:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 195
    :cond_1
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->unselectAll()V

    .line 196
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->adapter:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 188
    :cond_2
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->switchOperationMode()V

    goto :goto_0

    .line 200
    :cond_3
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->deleteWarning:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 185
    :cond_4
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090023

    .line 60
    invoke-virtual {p0, p1}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->setContentView(I)V

    .line 62
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->init()V

    return-void
.end method
