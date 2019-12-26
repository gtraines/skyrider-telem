.class Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "MediaListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGridViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;


# direct methods
.method private constructor <init>(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$1;)V
    .locals 0

    .line 205
    invoke-direct {p0, p1}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;-><init>(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 209
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$200(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 214
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$200(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p2, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-static {p2}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$700(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f090021

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 230
    :goto_0
    iget-object p3, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-static {p3}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$800(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)I

    move-result p3

    const v0, 0x7f07005e

    const/4 v1, 0x0

    if-nez p3, :cond_1

    .line 231
    iget-object p3, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-static {p3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p3

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    .line 232
    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$200(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p3

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    .line 233
    invoke-static {v2}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$900(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)I

    move-result v2

    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$900(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)I

    move-result v3

    invoke-virtual {p3, v2, v3}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object p3

    .line 234
    invoke-virtual {p3}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object p3

    .line 235
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_1
    const p3, 0x7f0700db

    .line 237
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$1000(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)[Landroid/graphics/Bitmap;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const p3, 0x7f0700dc

    .line 239
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$1100(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :goto_1
    iget-object p3, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-static {p3}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$1200(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)I

    move-result p3

    const/4 v0, 0x1

    const/4 v2, 0x4

    const v3, 0x7f0700ac

    if-ne p3, v0, :cond_3

    .line 243
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f070031

    .line 244
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$100(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    const p3, 0x7f0700b0

    .line 245
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyGridViewAdapter;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$100(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)[Z

    move-result-object v0

    aget-boolean p1, v0, p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 247
    :cond_3
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-object p2
.end method
