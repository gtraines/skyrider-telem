.class Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;
.super Ljava/lang/Thread;
.source "AviDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->prepareAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;


# direct methods
.method constructor <init>(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 121
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$000(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    :try_start_0
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$102(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;

    const/4 v0, 0x4

    .line 127
    new-array v0, v0, [B

    .line 129
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$100(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)Ljava/io/RandomAccessFile;

    move-result-object v1

    const-wide/16 v2, 0x20

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 130
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$100(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)Ljava/io/RandomAccessFile;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 131
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    const/4 v2, 0x3

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x2

    aget-byte v5, v0, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x10

    shl-int/2addr v5, v6

    or-int/2addr v3, v5

    const/4 v5, 0x1

    aget-byte v7, v0, v5

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x8

    shl-int/2addr v7, v8

    or-int/2addr v3, v7

    const/4 v7, 0x0

    aget-byte v9, v0, v7

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v3, v9

    invoke-static {v1, v3}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$202(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;I)I

    .line 132
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$200(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)I

    move-result v3

    const/16 v9, 0x3e8

    div-int/2addr v3, v9

    invoke-static {v1, v3}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$202(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;I)I

    .line 133
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$200(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)I

    move-result v3

    div-int/2addr v9, v3

    invoke-static {v1, v9}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$302(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;I)I

    const-string v1, "frame interval"

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-static {v9}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$200(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$100(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)Ljava/io/RandomAccessFile;

    move-result-object v1

    const-wide/16 v9, 0x30

    invoke-virtual {v1, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 139
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$100(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)Ljava/io/RandomAccessFile;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 140
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    aget-byte v9, v0, v4

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v6

    or-int/2addr v3, v9

    aget-byte v9, v0, v5

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v8

    or-int/2addr v3, v9

    aget-byte v9, v0, v7

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v3, v9

    invoke-static {v1, v3}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$402(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;I)I

    const-string v1, "frame num"

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-static {v9}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$400(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v3}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$502(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 145
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$100(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)Ljava/io/RandomAccessFile;

    move-result-object v1

    const-wide/16 v9, 0x13e

    invoke-virtual {v1, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 146
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$100(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)Ljava/io/RandomAccessFile;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 147
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    or-int/2addr v1, v2

    aget-byte v2, v0, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v8

    or-int/2addr v1, v2

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    const-string v1, "movi size"

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit16 v0, v0, 0x14a

    .line 153
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$100(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)Ljava/io/RandomAccessFile;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 154
    new-array v0, v6, [B

    const/4 v1, 0x0

    .line 155
    :goto_0
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-static {v2}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$400(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 156
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-static {v2}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$100(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)Ljava/io/RandomAccessFile;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 157
    new-instance v2, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$FrameIndex;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$FrameIndex;-><init>(Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;)V

    const/16 v3, 0xb

    .line 158
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/16 v4, 0xa

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v6

    or-int/2addr v3, v4

    const/16 v4, 0x9

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v8

    or-int/2addr v3, v4

    aget-byte v4, v0, v8

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    add-int/lit16 v3, v3, 0x14a

    iput v3, v2, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$FrameIndex;->offset:I

    const/16 v3, 0xf

    .line 159
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/16 v4, 0xe

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v6

    or-int/2addr v3, v4

    const/16 v4, 0xd

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v8

    or-int/2addr v3, v4

    const/16 v4, 0xc

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    iput v3, v2, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$FrameIndex;->size:I

    .line 160
    iget v3, v2, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$FrameIndex;->size:I

    iget-object v4, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-static {v4}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$700(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)I

    move-result v4

    if-le v3, v4, :cond_0

    .line 161
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    iget v4, v2, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$FrameIndex;->size:I

    invoke-static {v3, v4}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$702(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;I)I

    .line 162
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "idx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v2, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$FrameIndex;->offset:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$FrameIndex;->size:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$500(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$700(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)I

    move-result v1

    new-array v1, v1, [B

    invoke-static {v0, v1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$802(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;[B)[B

    .line 166
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->showFirstFrame()V

    .line 167
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-static {v0, v7}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$902(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;I)I

    .line 170
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-static {v0, v5}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$1002(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;Z)Z

    .line 171
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$1100(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)Lapp/panchip_weinikang/planecontroller/util/AviDecoder$AviDecoderListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->access$1100(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)Lapp/panchip_weinikang/planecontroller/util/AviDecoder$AviDecoderListener;

    move-result-object v0

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$1;->this$0:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-interface {v0, v1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder$AviDecoderListener;->onPrepared(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
