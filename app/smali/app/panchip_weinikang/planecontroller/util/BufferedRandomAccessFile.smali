.class public Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;
.super Ljava/io/RandomAccessFile;
.source "BufferedRandomAccessFile.java"


# static fields
.field private static final DEFAULT_BUFFER_BIT_LEN:I = 0xa

.field private static final DEFAULT_BUFFER_SIZE:I = 0x400

.field static res:Ljava/util/ResourceBundle;


# instance fields
.field protected append:Z

.field protected buf:[B

.field protected bufbitlen:I

.field protected bufdirty:Z

.field protected bufendpos:J

.field protected bufmask:J

.field protected bufsize:I

.field protected bufstartpos:J

.field protected bufusedsize:I

.field protected curpos:J

.field protected fileendpos:J

.field protected filename:Ljava/lang/String;

.field protected initfilelen:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "app.panchip.planecontroller.util.Res"

    .line 20
    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->res:Ljava/util/ResourceBundle;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->res:Ljava/util/ResourceBundle;

    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 53
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->res:Ljava/util/ResourceBundle;

    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 61
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, v0}, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    sget-object v0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->res:Ljava/util/ResourceBundle;

    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    sget-object v0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->res:Ljava/util/ResourceBundle;

    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->init(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private fillbuf()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-wide v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufstartpos:J

    invoke-super {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufdirty:Z

    .line 112
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->buf:[B

    invoke-super {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    return v0
.end method

.method private flushbuf()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufdirty:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 101
    invoke-super {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    iget-wide v2, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufstartpos:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 102
    iget-wide v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufstartpos:J

    invoke-super {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 104
    :cond_0
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->buf:[B

    iget v1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufusedsize:I

    const/4 v2, 0x0

    invoke-super {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 105
    iput-boolean v2, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufdirty:Z

    :cond_1
    return-void
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    sget-object v0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->res:Ljava/util/ResourceBundle;

    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 75
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->append:Z

    goto :goto_0

    .line 77
    :cond_0
    iput-boolean v1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->append:Z

    .line 80
    :goto_0
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->filename:Ljava/lang/String;

    .line 81
    invoke-super {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->initfilelen:J

    .line 82
    iget-wide p1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->initfilelen:J

    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->fileendpos:J

    .line 83
    invoke-super {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide p1

    iput-wide p1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->curpos:J

    if-ltz p3, :cond_1

    .line 89
    iput p3, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufbitlen:I

    shl-int p1, v1, p3

    .line 90
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufsize:I

    .line 91
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufsize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->buf:[B

    .line 92
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufsize:I

    int-to-long p1, p1

    sub-long/2addr p1, v2

    const-wide/16 v1, -0x1

    xor-long/2addr p1, v1

    iput-wide p1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufmask:J

    .line 93
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufdirty:Z

    .line 94
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufusedsize:I

    .line 95
    iput-wide v1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufstartpos:J

    .line 96
    iput-wide v1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufendpos:J

    return-void

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->res:Ljava/util/ResourceBundle;

    const-string p3, "bufbitlen_size_must_0"

    invoke-virtual {p2, p3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private max(JJ)J
    .locals 1

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    return-wide p1

    :cond_0
    return-wide p3
.end method


# virtual methods
.method public append(B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-wide v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->fileendpos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->write(BJ)Z

    move-result p1

    return p1
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->flushbuf()V

    .line 255
    invoke-super {p0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public getFilePointer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    iget-wide v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->curpos:J

    return-wide v0
.end method

.method public length()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget-wide v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->fileendpos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->initfilelen:J

    invoke-direct {p0, v0, v1, v2, v3}, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public read(J)B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-wide v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufstartpos:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-wide v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufendpos:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 117
    :cond_0
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->flushbuf()V

    .line 118
    invoke-virtual {p0, p1, p2}, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->seek(J)V

    .line 120
    iget-wide v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufstartpos:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    iget-wide v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufendpos:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_2

    .line 124
    :cond_1
    iput-wide p1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->curpos:J

    .line 125
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->buf:[B

    iget-wide v1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufstartpos:J

    sub-long/2addr p1, v1

    long-to-int p1, p1

    aget-byte p1, v0, p1

    return p1

    .line 121
    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-wide v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->curpos:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 189
    iget-wide v4, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufendpos:J

    cmp-long v6, v0, v4

    if-gtz v6, :cond_0

    iget-wide v4, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->fileendpos:J

    cmp-long v6, v0, v4

    if-gtz v6, :cond_0

    .line 190
    iget-object v4, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->buf:[B

    iget-wide v5, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->curpos:J

    iget-wide v7, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufstartpos:J

    sub-long/2addr v5, v7

    long-to-int v5, v5

    invoke-static {v4, v5, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 193
    :cond_0
    iget-wide v4, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->fileendpos:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    .line 194
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->length()J

    move-result-wide v0

    iget-wide v4, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->curpos:J

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    long-to-int p3, v0

    .line 197
    :cond_1
    iget-wide v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->curpos:J

    invoke-super {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 198
    invoke-super {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p3

    .line 199
    iget-wide p1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->curpos:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    sub-long v0, p1, v2

    :goto_0
    const/4 p1, 0x0

    add-long/2addr v0, v2

    .line 201
    invoke-virtual {p0, v0, v1}, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->seek(J)V

    return p3
.end method

.method public seek(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    iget-wide v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufstartpos:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-wide v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufendpos:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_5

    .line 216
    :cond_0
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->flushbuf()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x1

    if-ltz v2, :cond_1

    .line 218
    iget-wide v5, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->fileendpos:J

    cmp-long v2, p1, v5

    if-gtz v2, :cond_1

    iget-wide v5, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->fileendpos:J

    cmp-long v2, v5, v0

    if-eqz v2, :cond_1

    .line 219
    iget-wide v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufmask:J

    and-long/2addr v0, p1

    iput-wide v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufstartpos:J

    .line 220
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->fillbuf()I

    move-result v0

    iput v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufusedsize:I

    goto :goto_0

    :cond_1
    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    .line 222
    iget-wide v5, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->fileendpos:J

    cmp-long v2, v5, v0

    if-eqz v2, :cond_3

    :cond_2
    iget-wide v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->fileendpos:J

    add-long/2addr v0, v3

    cmp-long v2, p1, v0

    if-nez v2, :cond_4

    .line 224
    :cond_3
    iput-wide p1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufstartpos:J

    const/4 v0, 0x0

    .line 225
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufusedsize:I

    .line 227
    :cond_4
    :goto_0
    iget-wide v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufstartpos:J

    iget v2, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufsize:I

    int-to-long v5, v2

    add-long/2addr v0, v5

    sub-long/2addr v0, v3

    iput-wide v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufendpos:J

    .line 229
    :cond_5
    iput-wide p1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->curpos:J

    return-void
.end method

.method public setLength(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    .line 238
    iput-wide v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->fileendpos:J

    goto :goto_0

    .line 240
    :cond_0
    iput-wide v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->fileendpos:J

    .line 242
    :goto_0
    invoke-super {p0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-wide v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->curpos:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 169
    iget-wide v4, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufendpos:J

    cmp-long v6, v0, v4

    if-gtz v6, :cond_0

    .line 170
    iget-object v4, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->buf:[B

    iget-wide v5, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->curpos:J

    iget-wide v7, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufstartpos:J

    sub-long/2addr v5, v7

    long-to-int v5, v5

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    .line 171
    iput-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufdirty:Z

    .line 172
    iget-wide p1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufstartpos:J

    sub-long p1, v0, p1

    add-long/2addr p1, v2

    long-to-int p1, p1

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufusedsize:I

    goto :goto_0

    .line 175
    :cond_0
    iget-wide v4, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->curpos:J

    invoke-super {p0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 176
    invoke-super {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 179
    :goto_0
    iget-wide p1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->fileendpos:J

    cmp-long p3, v0, p1

    if-lez p3, :cond_1

    .line 180
    iput-wide v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->fileendpos:J

    :cond_1
    const/4 p1, 0x0

    add-long/2addr v0, v2

    .line 182
    invoke-virtual {p0, v0, v1}, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->seek(J)V

    return-void
.end method

.method public write(B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-wide v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->curpos:J

    invoke-virtual {p0, p1, v0, v1}, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->write(BJ)Z

    move-result p1

    return p1
.end method

.method public write(BJ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-wide v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufstartpos:J

    cmp-long v2, p2, v0

    const-wide/16 v0, 0x1

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    iget-wide v4, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufendpos:J

    cmp-long v2, p2, v4

    if-gtz v2, :cond_0

    .line 139
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->buf:[B

    iget-wide v4, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufstartpos:J

    sub-long v4, p2, v4

    long-to-int v4, v4

    aput-byte p1, v2, v4

    .line 140
    iput-boolean v3, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufdirty:Z

    .line 142
    iget-wide v4, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->fileendpos:J

    add-long/2addr v4, v0

    cmp-long p1, p2, v4

    if-nez p1, :cond_4

    .line 143
    iget-wide v4, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->fileendpos:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->fileendpos:J

    .line 144
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufusedsize:I

    add-int/2addr p1, v3

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufusedsize:I

    goto :goto_1

    .line 147
    :cond_0
    invoke-virtual {p0, p2, p3}, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->seek(J)V

    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-ltz v2, :cond_1

    .line 149
    iget-wide v6, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->fileendpos:J

    cmp-long v2, p2, v6

    if-gtz v2, :cond_1

    iget-wide v6, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->fileendpos:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_1

    .line 150
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->buf:[B

    iget-wide v1, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufstartpos:J

    sub-long v1, p2, v1

    long-to-int v1, v1

    aput-byte p1, v0, v1

    goto :goto_0

    :cond_1
    cmp-long v2, p2, v4

    if-nez v2, :cond_2

    .line 152
    iget-wide v6, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->fileendpos:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_3

    :cond_2
    iget-wide v4, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->fileendpos:J

    add-long/2addr v4, v0

    cmp-long v2, p2, v4

    if-nez v2, :cond_5

    .line 153
    :cond_3
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->buf:[B

    const/4 v4, 0x0

    aput-byte p1, v2, v4

    .line 154
    iget-wide v4, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->fileendpos:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->fileendpos:J

    .line 155
    iput v3, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufusedsize:I

    .line 159
    :goto_0
    iput-boolean v3, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->bufdirty:Z

    .line 161
    :cond_4
    :goto_1
    iput-wide p2, p0, Lapp/panchip_weinikang/planecontroller/util/BufferedRandomAccessFile;->curpos:J

    return v3

    .line 157
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
