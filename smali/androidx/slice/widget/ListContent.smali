.class public Landroidx/slice/widget/ListContent;
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


# instance fields
.field private mColorItem:Landroidx/slice/SliceItem;

.field private mContext:Landroid/content/Context;

.field private mGridBottomPadding:I

.field private mGridTopPadding:I

.field private mHeaderItem:Landroidx/slice/SliceItem;

.field private mLargeHeight:I

.field private mLayoutDirItem:Landroidx/slice/SliceItem;

.field private mMaxSmallHeight:I

.field private mMinScrollHeight:I

.field private mRowItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSeeMoreItem:Landroidx/slice/SliceItem;

.field private mSlice:Landroidx/slice/Slice;

.field private mSliceActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/slice/Slice;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/slice/widget/ListContent;-><init>(Landroid/content/Context;Landroidx/slice/Slice;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/slice/Slice;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/slice/widget/ListContent;->init(Landroid/content/Context;Landroidx/slice/Slice;Landroidx/slice/widget/SliceStyle;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Landroidx/slice/view/R$styleable;->SliceView:[I

    invoke-virtual {p1, p3, v0, p4, p5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_gridTopPadding:I

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p5

    float-to-int p5, p5

    iput p5, p0, Landroidx/slice/widget/ListContent;->mGridTopPadding:I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/ListContent;->mGridBottomPadding:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0

    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Landroidx/slice/widget/ListContent;->populate(Landroidx/slice/Slice;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/slice/Slice;Landroidx/slice/widget/SliceStyle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, p3}, Landroidx/slice/widget/ListContent;->init(Landroid/content/Context;Landroidx/slice/Slice;Landroidx/slice/widget/SliceStyle;)V

    invoke-direct {p0, p2}, Landroidx/slice/widget/ListContent;->populate(Landroidx/slice/Slice;)Z

    return-void
.end method

.method private static findHeaderItem(Landroidx/slice/Slice;)Landroidx/slice/SliceItem;
    .locals 7
    .param p0    # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "list_item"

    const-string v1, "shortcut"

    const-string v2, "actions"

    const-string v3, "keywords"

    const-string v4, "ttl"

    const-string v5, "last_updated"

    const-string v6, "horizontal"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "slice"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroidx/slice/widget/ListContent;->isValidHeader(Landroidx/slice/SliceItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    return-object v2
.end method

.method private getHeight(Landroidx/slice/SliceItem;ZIII)I
    .locals 3

    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    const-string v0, "horizontal"

    invoke-virtual {p1, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    new-instance p2, Landroidx/slice/widget/GridContent;

    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Landroidx/slice/widget/GridContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;)V

    invoke-virtual {p2}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    iget p1, p0, Landroidx/slice/widget/ListContent;->mGridTopPadding:I

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    invoke-virtual {p2}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v0

    if-eqz v0, :cond_2

    sub-int/2addr p4, v2

    if-ne p3, p4, :cond_2

    iget v1, p0, Landroidx/slice/widget/ListContent;->mGridBottomPadding:I

    :cond_2
    if-ne p5, v2, :cond_3

    invoke-virtual {p2}, Landroidx/slice/widget/GridContent;->getSmallHeight()I

    move-result p0

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroidx/slice/widget/GridContent;->getActualHeight()I

    move-result p0

    :goto_1
    add-int/2addr p0, p1

    add-int/2addr p0, v1

    return p0

    :cond_4
    new-instance p3, Landroidx/slice/widget/RowContent;

    iget-object p4, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    invoke-direct {p3, p4, p1, p2}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    iget p0, p0, Landroidx/slice/widget/ListContent;->mMaxSmallHeight:I

    if-ne p5, v2, :cond_5

    invoke-virtual {p3, p0}, Landroidx/slice/widget/RowContent;->getSmallHeight(I)I

    move-result p0

    goto :goto_2

    :cond_5
    invoke-virtual {p3, p0}, Landroidx/slice/widget/RowContent;->getActualHeight(I)I

    move-result p0

    :goto_2
    return p0

    :cond_6
    :goto_3
    return v1
.end method

.method public static getRowType(Landroid/content/Context;Landroidx/slice/SliceItem;ZLjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/slice/SliceItem;",
            "Z",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    const-string v1, "horizontal"

    invoke-virtual {p1, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance v1, Landroidx/slice/widget/RowContent;

    invoke-direct {v1, p0, p1, p2}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    new-instance p1, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {p1, p0}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    :cond_1
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object p0

    const-string p1, "action"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    goto :goto_0

    :cond_2
    const/4 p0, 0x5

    :goto_0
    return p0

    :cond_3
    const/4 p0, 0x3

    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroidx/slice/core/SliceAction;->isToggle()Z

    move-result p1

    if-eqz p1, :cond_4

    return p0

    :cond_4
    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    move p1, v0

    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_6

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/slice/core/SliceAction;

    invoke-interface {p2}, Landroidx/slice/core/SliceAction;->isToggle()Z

    move-result p2

    if-eqz p2, :cond_5

    return p0

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getToggleItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_8

    move v0, p0

    :cond_8
    return v0
.end method

.method private static getSeeMoreItem(Landroidx/slice/Slice;)Landroidx/slice/SliceItem;
    .locals 4
    .param p0    # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "see_more"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, v0, v1}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v2, "slice"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/slice/SliceItem;

    :cond_0
    return-object p0

    :cond_1
    return-object v1
.end method

.method private init(Landroid/content/Context;Landroidx/slice/Slice;Landroidx/slice/widget/SliceStyle;)V
    .locals 1

    iput-object p2, p0, Landroidx/slice/widget/ListContent;->mSlice:Landroidx/slice/Slice;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroidx/slice/widget/SliceStyle;->getGridTopPadding()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    iput v0, p0, Landroidx/slice/widget/ListContent;->mGridTopPadding:I

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroidx/slice/widget/SliceStyle;->getGridBottomPadding()I

    move-result p2

    :cond_2
    iput p2, p0, Landroidx/slice/widget/ListContent;->mGridBottomPadding:I

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Landroidx/slice/view/R$dimen;->abc_slice_row_min_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/ListContent;->mMinScrollHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_large_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/ListContent;->mLargeHeight:I

    :cond_3
    return-void
.end method

.method public static isValidHeader(Landroidx/slice/SliceItem;)Z
    .locals 5

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "slice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "list_item"

    const-string v2, "actions"

    const-string v3, "keywords"

    const-string v4, "see_more"

    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private populate(Landroidx/slice/Slice;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "int"

    const-string v2, "color"

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    iput-object v2, p0, Landroidx/slice/widget/ListContent;->mColorItem:Landroidx/slice/SliceItem;

    const-string v2, "layout_direction"

    invoke-static {p1, v1, v2, v3, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ListContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getInt()I

    move-result v1

    invoke-static {v1}, Landroidx/slice/widget/SliceViewUtil;->resolveLayoutDirection(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v3, p0, Landroidx/slice/widget/ListContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    :cond_1
    iput-object v3, p0, Landroidx/slice/widget/ListContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    :cond_2
    invoke-static {p1}, Landroidx/slice/SliceMetadata;->getSliceActions(Landroidx/slice/Slice;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    invoke-static {p1}, Landroidx/slice/widget/ListContent;->findHeaderItem(Landroidx/slice/Slice;)Landroidx/slice/SliceItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {p1}, Landroidx/slice/widget/ListContent;->getSeeMoreItem(Landroidx/slice/Slice;)Landroidx/slice/SliceItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ListContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    invoke-virtual {p1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object p1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v3

    const-string v4, "actions"

    const-string v5, "see_more"

    const-string v6, "keywords"

    const-string v7, "ttl"

    const-string v8, "last_updated"

    filled-new-array {v4, v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "action"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "slice"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    iget-object v3, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    const-string v4, "list_item"

    if-nez v3, :cond_5

    invoke-virtual {v2, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iput-object v2, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    iget-object v3, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    iget-object p1, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    if-nez p1, :cond_8

    iget-object p1, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-lt p1, v1, :cond_8

    iget-object p1, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/slice/SliceItem;

    iput-object p1, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    :cond_8
    invoke-virtual {p0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getColorItem()Landroidx/slice/SliceItem;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mColorItem:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getHeaderItem()Landroidx/slice/SliceItem;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getHeaderTemplateType()I
    .locals 3

    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p0}, Landroidx/slice/widget/ListContent;->getRowType(Landroid/content/Context;Landroidx/slice/SliceItem;ZLjava/util/List;)I

    move-result p0

    return p0
.end method

.method public getItemsForNonScrollingList(I)Ljava/util/ArrayList;
    .locals 13
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/ListContent;->hasHeader()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v3, p0, Landroidx/slice/widget/ListContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    new-instance v5, Landroidx/slice/widget/RowContent;

    iget-object v6, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v3, v4}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    iget v3, p0, Landroidx/slice/widget/ListContent;->mMaxSmallHeight:I

    invoke-virtual {v5, v3}, Landroidx/slice/widget/RowContent;->getActualHeight(I)I

    move-result v3

    add-int/2addr v3, v4

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    iget-object v5, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v12, v4

    :goto_2
    if-ge v12, v5, :cond_6

    if-nez v12, :cond_3

    iget-object v6, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/SliceItem;

    const-string v7, "list_item"

    const-string v8, "horizontal"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v6

    xor-int/2addr v6, v2

    goto :goto_3

    :cond_3
    move v6, v4

    :goto_3
    iget-object v7, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/slice/SliceItem;

    if-nez v12, :cond_4

    if-eqz v6, :cond_4

    move v8, v2

    goto :goto_4

    :cond_4
    move v8, v4

    :goto_4
    const/4 v11, 0x2

    move-object v6, p0

    move v9, v12

    move v10, v5

    invoke-direct/range {v6 .. v11}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/SliceItem;ZIII)I

    move-result v6

    if-lez p1, :cond_5

    add-int v7, v3, v6

    if-le v7, p1, :cond_5

    goto :goto_5

    :cond_5
    add-int/2addr v3, v6

    iget-object v6, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_6
    :goto_5
    iget-object p1, p0, Landroidx/slice/widget/ListContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p1, v1, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq p1, v5, :cond_7

    iget-object p1, p0, Landroidx/slice/widget/ListContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_8

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_6
    return-object v0
.end method

.method public getLargeHeight(IZ)I
    .locals 4

    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/slice/widget/ListContent;->getListHeight(Ljava/util/List;)I

    move-result v0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroidx/slice/widget/ListContent;->getSmallHeight()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_0
    if-lez p1, :cond_1

    move v1, p1

    goto :goto_0

    :cond_1
    iget v1, p0, Landroidx/slice/widget/ListContent;->mLargeHeight:I

    :goto_0
    sub-int v2, v0, v1

    iget v3, p0, Landroidx/slice/widget/ListContent;->mMinScrollHeight:I

    if-lt v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    if-gtz p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_2
    if-nez p2, :cond_5

    invoke-virtual {p0, v0}, Landroidx/slice/widget/ListContent;->getItemsForNonScrollingList(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slice/widget/ListContent;->getListHeight(Ljava/util/List;)I

    move-result v0

    :cond_5
    return v0
.end method

.method public getLayoutDirItem()Landroidx/slice/SliceItem;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getListHeight(Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v3, "horizontal"

    const/4 v4, 0x1

    if-nez v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    const-string v2, "list_item"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v4

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    move-object v6, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-virtual {v6, v3}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/SliceItem;ZIII)I

    move-result p0

    return p0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v3, v0

    move v11, v3

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/slice/SliceItem;

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    move v7, v4

    goto :goto_2

    :cond_3
    move v7, v0

    :goto_2
    const/4 v10, 0x2

    move-object v5, p0

    move v8, v3

    move v9, v1

    invoke-direct/range {v5 .. v10}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/SliceItem;ZIII)I

    move-result v5

    add-int/2addr v11, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return v11

    :cond_5
    :goto_3
    return v0
.end method

.method public getPrimaryAction()Landroidx/slice/SliceItem;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "horizontal"

    invoke-virtual {v0, v2}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/slice/widget/GridContent;

    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    invoke-direct {v0, v2, v3}, Landroidx/slice/widget/GridContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;)V

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getContentIntent()Landroidx/slice/SliceItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/slice/widget/RowContent;

    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const-string v2, "action"

    if-nez v0, :cond_2

    const-string v0, "shortcut"

    const-string v3, "title"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Landroidx/slice/widget/ListContent;->mSlice:Landroidx/slice/Slice;

    invoke-static {v3, v2, v0, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mSlice:Landroidx/slice/Slice;

    invoke-static {p0, v2, v1, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public getRowItems()Ljava/util/ArrayList;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getSeeMoreItem()Landroidx/slice/SliceItem;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mSlice:Landroidx/slice/Slice;

    return-object p0
.end method

.method public getSliceActions()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    return-object p0
.end method

.method public getSmallHeight()I
    .locals 6

    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/SliceItem;ZIII)I

    move-result p0

    return p0
.end method

.method public hasHeader()Z
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroidx/slice/widget/ListContent;->isValidHeader(Landroidx/slice/SliceItem;)Z

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

    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mSlice:Landroidx/slice/Slice;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

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

.method public setMaxSmallHeight(I)V
    .locals 0

    iput p1, p0, Landroidx/slice/widget/ListContent;->mMaxSmallHeight:I

    return-void
.end method
