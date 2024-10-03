.class public Lcom/android/launcher3/folder/FolderGridOrganizer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCountX:I

.field private mCountY:I

.field private mDisplayingUpperLeftQuadrant:Z

.field private final mMaxCountX:I

.field private final mMaxCountY:I

.field private final mMaxItemsPerPage:I

.field private mNumItemsInFolder:I

.field private final mPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mPoint:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mDisplayingUpperLeftQuadrant:Z

    iget v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    iput v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountX:I

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    iput p1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountY:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxItemsPerPage:I

    return-void
.end method

.method private calculateGridSizeByNt(I)V
    .locals 5

    iget v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxItemsPerPage:I

    if-lt p1, v0, :cond_0

    iget p1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountX:I

    iput p1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountX:I

    iget p1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountY:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountX:I

    iput v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountX:I

    int-to-double v1, p1

    int-to-double v3, v0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    :goto_0
    iput p1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountY:I

    return-void
.end method


# virtual methods
.method public getCountX()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountX:I

    return p0
.end method

.method public getCountY()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountY:I

    return p0
.end method

.method public getMaxItemsPerPage()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxItemsPerPage:I

    return p0
.end method

.method public getPosForRank(I)Landroid/graphics/Point;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxItemsPerPage:I

    rem-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mPoint:Landroid/graphics/Point;

    iget p0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountX:I

    rem-int v1, p1, p0

    iput v1, v0, Landroid/graphics/Point;->x:I

    div-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method public isItemInPreview(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->isItemInPreview(II)Z

    move-result p0

    return p0
.end method

.method public isItemInPreview(II)Z
    .locals 0

    const/4 p0, 0x4

    if-ge p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public previewItemsForPage(ILjava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:TT;>(I",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountY:I

    mul-int/2addr v1, v2

    mul-int v2, v1, p1

    add-int/2addr v1, v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, p1, v3}, Lcom/android/launcher3/folder/FolderGridOrganizer;->isItemInPreview(II)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public setContentSize(I)Lcom/android/launcher3/folder/FolderGridOrganizer;
    .locals 1

    iget v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mNumItemsInFolder:I

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->calculateGridSizeByNt(I)V

    iput p1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mNumItemsInFolder:I

    :cond_0
    return-object p0
.end method

.method public setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;
    .locals 0

    iget-object p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setContentSize(I)Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object p0

    return-object p0
.end method

.method public updateRankAndPos(Lcom/android/launcher3/model/data/ItemInfo;I)Z
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/FolderGridOrganizer;->getPosForRank(I)Landroid/graphics/Point;

    move-result-object p0

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Point;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iput p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iget p2, p0, Landroid/graphics/Point;->x:I

    iput p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    iput p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 p0, 0x1

    return p0
.end method
