.class public Lapp/panchip_weinikang/planecontroller/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field public static PHOTO_PATH:Ljava/lang/String;

.field public static VIDEO_PATH:Ljava/lang/String;

.field private static dateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SKYRIDER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "photo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/panchip_weinikang/planecontroller/util/FileUtil;->PHOTO_PATH:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SKYRIDER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/panchip_weinikang/planecontroller/util/FileUtil;->VIDEO_PATH:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_HH-mm-ss"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lapp/panchip_weinikang/planecontroller/util/FileUtil;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndCreateFolder()V
    .locals 4

    .line 34
    new-instance v0, Ljava/io/File;

    sget-object v1, Lapp/panchip_weinikang/planecontroller/util/FileUtil;->PHOTO_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v1, Ljava/io/File;

    sget-object v2, Lapp/panchip_weinikang/planecontroller/util/FileUtil;->VIDEO_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "photo folder"

    const-string v3, "not exist"

    .line 38
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_0
    const-string v0, "photo folder"

    const-string v2, "already exist"

    .line 41
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "video folder"

    const-string v2, "not exist"

    .line 44
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    :cond_1
    const-string v0, "video folder"

    const-string v1, "already exist"

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static generateFilename(I)Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "REC_"

    .line 106
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    sget-object p0, Lapp/panchip_weinikang/planecontroller/util/FileUtil;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".avi"

    .line 108
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string p0, "PIC_"

    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    sget-object p0, Lapp/panchip_weinikang/planecontroller/util/FileUtil;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".jpg"

    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFilesInFolder(I)[Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    .line 52
    sget-object v0, Lapp/panchip_weinikang/planecontroller/util/FileUtil;->PHOTO_PATH:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lapp/panchip_weinikang/planecontroller/util/FileUtil;->VIDEO_PATH:Ljava/lang/String;

    .line 53
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    .line 58
    new-instance p0, Lapp/panchip_weinikang/planecontroller/util/FileUtil$1;

    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/util/FileUtil$1;-><init>()V

    goto :goto_1

    .line 67
    :cond_2
    new-instance p0, Lapp/panchip_weinikang/planecontroller/util/FileUtil$2;

    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/util/FileUtil$2;-><init>()V

    .line 76
    :goto_1
    invoke-virtual {v1, p0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 78
    new-instance v1, Lapp/panchip_weinikang/planecontroller/util/FileUtil$3;

    invoke-direct {v1}, Lapp/panchip_weinikang/planecontroller/util/FileUtil$3;-><init>()V

    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 84
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 85
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/String;

    .line 87
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_2
    if-ltz v2, :cond_3

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    aget-object v5, p0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method public static savePhoto(Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;ZLandroid/os/Handler;)V
    .locals 2

    const/4 v0, 0x0

    .line 115
    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/util/FileUtil;->generateFilename(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;->use()V

    .line 117
    new-instance v1, Lapp/panchip_weinikang/planecontroller/util/FileUtil$4;

    invoke-direct {v1, v0, p0, p1, p2}, Lapp/panchip_weinikang/planecontroller/util/FileUtil$4;-><init>(Ljava/lang/String;Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;ZLandroid/os/Handler;)V

    .line 147
    invoke-virtual {v1}, Lapp/panchip_weinikang/planecontroller/util/FileUtil$4;->start()V

    return-void
.end method
