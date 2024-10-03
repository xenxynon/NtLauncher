.class public Landroidx/slice/widget/GridContent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/GridContent$CellContent;
    }
.end annotation


# instance fields
.field private mAllImages:Z

.field private mAllImagesHeight:I

.field private mBigPicMaxHeight:I

.field private mBigPicMinHeight:I

.field private mColorItem:Landroidx/slice/SliceItem;

.field private mContentDescr:Landroidx/slice/SliceItem;

.field private mGridContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/widget/GridContent$CellContent;",
            ">;"
        }
    .end annotation
.end field

.field private mHasImage:Z

.field private mImageTextHeight:I

.field private mLargestImageMode:I

.field private mLayoutDirItem:Landroidx/slice/SliceItem;

.field private mMaxCellLineCount:I

.field private mMaxHeight:I

.field private mMinHeight:I

.field private mPrimaryAction:Landroidx/slice/SliceItem;

.field private mSeeMoreItem:Landroidx/slice/SliceItem;

.field private mTitleItem:Landroidx/slice/SliceItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/slice/SliceItem;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    const/4 v0, 0x3

    iput v0, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    invoke-direct {p0, p2}, Landroidx/slice/widget/GridContent;->populate(Landroidx/slice/SliceItem;)Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_big_pic_min_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/GridContent;->mBigPicMinHeight:I

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_big_pic_max_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/GridContent;->mBigPicMaxHeight:I

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_grid_image_only_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/GridContent;->mAllImagesHeight:I

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_grid_image_text_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/GridContent;->mImageTextHeight:I

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_grid_min_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/GridContent;->mMinHeight:I

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_grid_max_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/GridContent;->mMaxHeight:I

    :cond_0
    return-void
.end method

.method private filterAndProcessItems(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    const/4 v4, 0x0

    const-string v5, "see_more"

    invoke-static {v3, v4, v5, v4}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-nez v4, :cond_2

    const-string v4, "shortcut"

    const-string v7, "keywords"

    const-string v8, "ttl"

    const-string v9, "last_updated"

    filled-new-array {v4, v5, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    move v6, v1

    :cond_2
    :goto_2
    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content_description"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-object v3, p0, Landroidx/slice/widget/GridContent;->mContentDescr:Landroidx/slice/SliceItem;

    goto :goto_3

    :cond_3
    if-nez v6, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private getHeight(Z)I
    .locals 6

    invoke-virtual {p0}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    if-eqz p1, :cond_1

    iget p0, p0, Landroidx/slice/widget/GridContent;->mBigPicMinHeight:I

    goto :goto_0

    :cond_1
    iget p0, p0, Landroidx/slice/widget/GridContent;->mBigPicMaxHeight:I

    goto :goto_0

    :cond_2
    iget p1, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    if-nez p1, :cond_3

    iget p0, p0, Landroidx/slice/widget/GridContent;->mMinHeight:I

    goto :goto_0

    :cond_3
    iget p0, p0, Landroidx/slice/widget/GridContent;->mAllImagesHeight:I

    :goto_0
    return p0

    :cond_4
    invoke-virtual {p0}, Landroidx/slice/widget/GridContent;->getMaxCellLineCount()I

    move-result v0

    if-le v0, v2, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Landroidx/slice/widget/GridContent;->hasImage()Z

    move-result v3

    iget v4, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    if-eqz v4, :cond_6

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    if-eqz v0, :cond_8

    if-nez p1, :cond_8

    if-eqz v3, :cond_9

    iget p0, p0, Landroidx/slice/widget/GridContent;->mMaxHeight:I

    goto :goto_2

    :cond_8
    if-eqz v1, :cond_a

    :cond_9
    iget p0, p0, Landroidx/slice/widget/GridContent;->mMinHeight:I

    goto :goto_2

    :cond_a
    iget p0, p0, Landroidx/slice/widget/GridContent;->mImageTextHeight:I

    :goto_2
    return p0
.end method

.method private populate(Landroidx/slice/SliceItem;)Z
    .locals 5

    const-string v0, "int"

    const-string v1, "color"

    invoke-static {p1, v0, v1}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/GridContent;->mColorItem:Landroidx/slice/SliceItem;

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "slice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v4, "action"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    const-string v4, "layout_direction"

    invoke-static {v1, v0, v4, v3, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getInt()I

    move-result v0

    invoke-static {v0}, Landroidx/slice/widget/SliceViewUtil;->resolveLayoutDirection(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    :cond_2
    const-string v0, "see_more"

    invoke-static {p1, v3, v0, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    :cond_3
    const-string v0, "shortcut"

    const-string v3, "title"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const-string v3, "actions"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v0, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/slice/widget/GridContent;->filterAndProcessItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content_description"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mContentDescr:Landroidx/slice/SliceItem;

    goto :goto_2

    :cond_4
    new-instance v2, Landroidx/slice/widget/GridContent$CellContent;

    invoke-direct {v2, v0}, Landroidx/slice/widget/GridContent$CellContent;-><init>(Landroidx/slice/SliceItem;)V

    invoke-direct {p0, v2}, Landroidx/slice/widget/GridContent;->processContent(Landroidx/slice/widget/GridContent$CellContent;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    new-instance v0, Landroidx/slice/widget/GridContent$CellContent;

    invoke-direct {v0, p1}, Landroidx/slice/widget/GridContent$CellContent;-><init>(Landroidx/slice/SliceItem;)V

    invoke-direct {p0, v0}, Landroidx/slice/widget/GridContent;->processContent(Landroidx/slice/widget/GridContent$CellContent;)V

    :cond_6
    invoke-virtual {p0}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result p0

    return p0
.end method

.method private processContent(Landroidx/slice/widget/GridContent$CellContent;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mTitleItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mTitleItem:Landroidx/slice/SliceItem;

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->isImageOnly()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    :cond_1
    iget v0, p0, Landroidx/slice/widget/GridContent;->mMaxCellLineCount:I

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->getTextCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridContent;->mMaxCellLineCount:I

    iget-boolean v0, p0, Landroidx/slice/widget/GridContent;->mHasImage:Z

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->hasImage()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/slice/widget/GridContent;->mHasImage:Z

    iget v0, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->getImageMode()I

    move-result p1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    iput p1, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    :cond_3
    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/slice/widget/GridContent;->getHeight(Z)I

    move-result p0

    return p0
.end method

.method public getColorItem()Landroidx/slice/SliceItem;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/GridContent;->mColorItem:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/GridContent;->mContentDescr:Landroidx/slice/SliceItem;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getContentIntent()Landroidx/slice/SliceItem;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/GridContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getGridContent()Ljava/util/ArrayList;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/widget/GridContent$CellContent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getLargestImageMode()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    return p0
.end method

.method public getLayoutDirItem()Landroidx/slice/SliceItem;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/GridContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getMaxCellLineCount()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/GridContent;->mMaxCellLineCount:I

    return p0
.end method

.method public getSeeMoreItem()Landroidx/slice/SliceItem;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getSmallHeight()I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/slice/widget/GridContent;->getHeight(Z)I

    move-result p0

    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/slice/widget/GridContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    if-eqz p0, :cond_1

    new-instance v0, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v0, p0}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasImage()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/slice/widget/GridContent;->mHasImage:Z

    return p0
.end method

.method public isAllImages()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    return p0
.end method

.method public isValid()Z
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
