.class public Landroidx/slice/widget/RowContent;
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


# static fields
.field private static final TAG:Ljava/lang/String; = "RowContent"


# instance fields
.field private mContentDescr:Landroidx/slice/SliceItem;

.field private mEndItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mEndItemsContainAction:Z

.field private mIsHeader:Z

.field private mLayoutDirItem:Landroidx/slice/SliceItem;

.field private mLineCount:I

.field private mMaxHeight:I

.field private mMinHeight:I

.field private mPrimaryAction:Landroidx/slice/SliceItem;

.field private mRange:Landroidx/slice/SliceItem;

.field private mRangeHeight:I

.field private mRowSlice:Landroidx/slice/SliceItem;

.field private mSingleTextWithRangeHeight:I

.field private mStartItem:Landroidx/slice/SliceItem;

.field private mSubtitleItem:Landroidx/slice/SliceItem;

.field private mSummaryItem:Landroidx/slice/SliceItem;

.field private mTextWithRangeHeight:I

.field private mTitleItem:Landroidx/slice/SliceItem;

.field private mToggleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowContent;->mToggleItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    invoke-direct {p0, p2, p3}, Landroidx/slice/widget/RowContent;->populate(Landroidx/slice/SliceItem;Z)Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Landroidx/slice/view/R$dimen;->abc_slice_row_max_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/RowContent;->mMaxHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Landroidx/slice/view/R$dimen;->abc_slice_row_range_multi_text_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/RowContent;->mTextWithRangeHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Landroidx/slice/view/R$dimen;->abc_slice_row_range_single_text_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/RowContent;->mSingleTextWithRangeHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Landroidx/slice/view/R$dimen;->abc_slice_row_min_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/RowContent;->mMinHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_row_range_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/RowContent;->mRangeHeight:I

    :cond_0
    return-void
.end method

.method private determineStartAndPrimaryAction(Landroidx/slice/SliceItem;)V
    .locals 9
    .param p1    # Landroidx/slice/SliceItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const-string v1, "title"

    invoke-static {p1, v0, v1, v0}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "slice"

    const-string v5, "action"

    const/4 v6, 0x0

    if-lez v3, :cond_2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "image"

    if-eqz v7, :cond_0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/slice/SliceItem;

    invoke-static {v7, v8}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "long"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    iput-object v2, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    :cond_2
    const-string v2, "shortcut"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v4, v1, v0}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v5, v1, v0}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz p1, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_4

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    if-ne p1, v0, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Landroidx/slice/SliceItem;

    :goto_1
    iput-object p1, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    :cond_5
    return-void
.end method

.method private static filterInvalidItems(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/SliceItem;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    invoke-static {p0, v2}, Landroidx/slice/widget/RowContent;->isValidRowContent(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static hasText(Landroidx/slice/SliceItem;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "partial"

    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isValidRow(Landroidx/slice/SliceItem;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "slice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    const-string v2, "see_more"

    invoke-virtual {p0, v2}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    invoke-static {p0, v4}, Landroidx/slice/widget/RowContent;->isValidRowContent(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private static isValidRowContent(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)Z
    .locals 4

    const-string v0, "keywords"

    const-string v1, "ttl"

    const-string v2, "last_updated"

    const-string v3, "horizontal"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content_description"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object p1

    const-string v0, "image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "long"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "action"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "input"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "slice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "int"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "range"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private populate(Landroidx/slice/SliceItem;Z)Z
    .locals 9

    iput-boolean p2, p0, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    iput-object p1, p0, Landroidx/slice/widget/RowContent;->mRowSlice:Landroidx/slice/SliceItem;

    invoke-static {p1}, Landroidx/slice/widget/RowContent;->isValidRow(Landroidx/slice/SliceItem;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p0, "RowContent"

    const-string p1, "Provided SliceItem is invalid for RowContent"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/slice/widget/RowContent;->determineStartAndPrimaryAction(Landroidx/slice/SliceItem;)V

    const-string p2, "text"

    const-string v1, "content_description"

    invoke-static {p1, p2, v1}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/RowContent;->mContentDescr:Landroidx/slice/SliceItem;

    invoke-static {p1}, Landroidx/slice/widget/RowContent;->filterInvalidItems(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "action"

    const-string v4, "title"

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    const-string v6, "slice"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    const-string v6, "shortcut"

    filled-new-array {v6, v4}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    invoke-static {v2}, Landroidx/slice/widget/RowContent;->isValidRow(Landroidx/slice/SliceItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/slice/SliceItem;

    invoke-static {p1}, Landroidx/slice/widget/RowContent;->filterInvalidItems(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_2
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v2

    const-string v6, "int"

    const-string v7, "layout_direction"

    const/4 v8, 0x0

    invoke-static {v2, v6, v7, v8, v8}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    iput-object v2, p0, Landroidx/slice/widget/RowContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getInt()I

    move-result v2

    invoke-static {v2}, Landroidx/slice/widget/SliceViewUtil;->resolveLayoutDirection(I)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_3

    iget-object v8, p0, Landroidx/slice/widget/RowContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    :cond_3
    iput-object v8, p0, Landroidx/slice/widget/RowContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    :cond_4
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v2

    const-string v6, "range"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iput-object p1, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_14

    iget-object p1, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz p1, :cond_6

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_6
    iget-object p1, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    if-eqz p1, :cond_7

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_d

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/SliceItem;

    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    const-string v8, "summary"

    if-eqz v7, :cond_8

    invoke-virtual {v7, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_8
    invoke-virtual {v6, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v6, v8}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    iput-object v6, p0, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    goto :goto_1

    :cond_9
    iget-object v7, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    if-nez v7, :cond_a

    invoke-virtual {v6, v8}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    iput-object v6, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    goto :goto_1

    :cond_a
    iget-object v7, p0, Landroidx/slice/widget/RowContent;->mSummaryItem:Landroidx/slice/SliceItem;

    if-nez v7, :cond_c

    invoke-virtual {v6, v8}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    iput-object v6, p0, Landroidx/slice/widget/RowContent;->mSummaryItem:Landroidx/slice/SliceItem;

    goto :goto_1

    :cond_b
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_d
    iget-object p2, p0, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    invoke-static {p2}, Landroidx/slice/widget/RowContent;->hasText(Landroidx/slice/SliceItem;)Z

    move-result p2

    if-eqz p2, :cond_e

    iget p2, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    add-int/2addr p2, v5

    iput p2, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    :cond_e
    iget-object p2, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    invoke-static {p2}, Landroidx/slice/widget/RowContent;->hasText(Landroidx/slice/SliceItem;)Z

    move-result p2

    if-eqz p2, :cond_f

    iget p2, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    add-int/2addr p2, v5

    iput p2, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    :cond_f
    iget-object p2, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    const-string v1, "long"

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    move p2, v5

    goto :goto_2

    :cond_10
    move p2, v0

    :goto_2
    move v2, v0

    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_14

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    invoke-static {v4, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    if-eqz v6, :cond_11

    move v6, v5

    goto :goto_4

    :cond_11
    move v6, v0

    :goto_4
    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    if-nez p2, :cond_13

    iget-object p2, p0, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p2, v5

    goto :goto_5

    :cond_12
    invoke-direct {p0, v4, v6}, Landroidx/slice/widget/RowContent;->processContent(Landroidx/slice/SliceItem;Z)V

    :cond_13
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_14
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->isValid()Z

    move-result p0

    return p0
.end method

.method private processContent(Landroidx/slice/SliceItem;Z)V
    .locals 2
    .param p1    # Landroidx/slice/SliceItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    new-instance v0, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v0, p1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    invoke-interface {v0}, Landroidx/slice/core/SliceAction;->isToggle()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/RowContent;->mToggleItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Landroidx/slice/widget/RowContent;->mEndItemsContainAction:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Landroidx/slice/widget/RowContent;->mEndItemsContainAction:Z

    return-void
.end method


# virtual methods
.method public endItemsContainAction()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/slice/widget/RowContent;->mEndItemsContainAction:Z

    return p0
.end method

.method public getActualHeight(I)I
    .locals 2

    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/slice/widget/RowContent;->mMaxHeight:I

    :goto_0
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getLineCount()I

    move-result p1

    if-le p1, v1, :cond_2

    iget p1, p0, Landroidx/slice/widget/RowContent;->mTextWithRangeHeight:I

    goto :goto_1

    :cond_2
    iget p1, p0, Landroidx/slice/widget/RowContent;->mSingleTextWithRangeHeight:I

    :goto_1
    iget p0, p0, Landroidx/slice/widget/RowContent;->mRangeHeight:I

    add-int/2addr p1, p0

    return p1

    :cond_3
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getLineCount()I

    move-result v0

    if-gt v0, v1, :cond_5

    iget-boolean v0, p0, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    iget p1, p0, Landroidx/slice/widget/RowContent;->mMinHeight:I

    :cond_5
    :goto_2
    return p1
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mContentDescr:Landroidx/slice/SliceItem;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getEndItems()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getInputRangeThumb()Landroidx/slice/SliceItem;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/slice/SliceItem;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLayoutDirItem()Landroidx/slice/SliceItem;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getLineCount()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    return p0
.end method

.method public getPrimaryAction()Landroidx/slice/SliceItem;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getRange()Landroidx/slice/SliceItem;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getSlice()Landroidx/slice/SliceItem;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mRowSlice:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getSmallHeight(I)I
    .locals 1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/slice/widget/RowContent;->mMaxHeight:I

    :goto_0
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/slice/widget/RowContent;->getActualHeight(I)I

    move-result p1

    :cond_1
    return p1
.end method

.method public getStartItem()Landroidx/slice/SliceItem;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    :goto_0
    return-object p0
.end method

.method public getSubtitleItem()Landroidx/slice/SliceItem;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getSummaryItem()Landroidx/slice/SliceItem;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mSummaryItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    :cond_0
    return-object v0
.end method

.method public getTitleItem()Landroidx/slice/SliceItem;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getToggleItems()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mToggleItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public isDefaultSeeMore()Z
    .locals 2

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mRowSlice:Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mRowSlice:Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    const-string v1, "see_more"

    invoke-virtual {v0, v1}, Landroidx/slice/Slice;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mRowSlice:Landroidx/slice/SliceItem;

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->isDefaultSeeMore()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
