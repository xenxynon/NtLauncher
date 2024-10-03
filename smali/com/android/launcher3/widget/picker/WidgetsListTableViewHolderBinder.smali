.class public Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/recyclerview/ViewHolderBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/recyclerview/ViewHolderBinder<",
        "Lcom/android/launcher3/widget/model/WidgetsListContentEntry;",
        "Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivityContext:Lcom/android/launcher3/views/ActivityContext;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mCellPadding:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mIconClickListener:Landroid/view/View$OnClickListener;

.field private final mIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/views/ActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070589

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mCellPadding:I

    iput-object p3, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mIconClickListener:Landroid/view/View$OnClickListener;

    iput-object p4, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/model/WidgetItem;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->lambda$bindViewHolder$0(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/model/WidgetItem;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static synthetic lambda$bindViewHolder$0(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/model/WidgetItem;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->onPreviewLoaded(Landroid/util/Pair;)V

    return-void
.end method

.method private recycleTableBeforeBinding(Landroid/widget/TableLayout;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TableLayout;",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v1

    const/16 v2, 0x8

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {p1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableRow;

    goto :goto_2

    :cond_1
    new-instance v4, Landroid/widget/TableRow;

    invoke-virtual {p1}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->setGravity(I)V

    invoke-virtual {p1, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    :goto_2
    invoke-virtual {v4}, Landroid/widget/TableRow;->getChildCount()I

    move-result v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-le v5, v6, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_3
    invoke-virtual {v4}, Landroid/widget/TableRow;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {v4, v3}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v4}, Landroid/widget/TableRow;->getChildCount()I

    move-result v5

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0e0103

    invoke-virtual {v6, v7, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/widget/WidgetCell;

    const v7, 0x7f0b0431

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v6, v0}, Lcom/android/launcher3/widget/WidgetCell;->setAnimatePreview(Z)V

    invoke-virtual {v4, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public bridge synthetic bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;ILjava/util/List;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    check-cast p2, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->bindViewHolder(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/widget/model/WidgetsListContentEntry;ILjava/util/List;)V

    return-void
.end method

.method public bindViewHolder(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/widget/model/WidgetsListContentEntry;ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;",
            "Lcom/android/launcher3/widget/model/WidgetsListContentEntry;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, p1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->previewCache:Ljava/util/Map;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/model/WidgetItem;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p4, p1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->tableContainer:Lcom/android/launcher3/widget/picker/WidgetsListTableView;

    invoke-virtual {p0, p4, p3, p2}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->setWidgetsListTableView(Lcom/android/launcher3/widget/picker/WidgetsListTableView;ILcom/android/launcher3/widget/model/WidgetsListContentEntry;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p4, p2}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->recycleTableBeforeBinding(Landroid/widget/TableLayout;Ljava/util/List;)V

    const/4 p0, 0x0

    move p3, p0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_4

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move v1, p0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p4, p3}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    invoke-virtual {v2, p0}, Landroid/widget/TableRow;->setVisibility(I)V

    invoke-virtual {v2, v1}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/WidgetCell;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/WidgetItem;

    iget-object v4, v2, Lcom/android/launcher3/widget/WidgetCell;->mItem:Lcom/android/launcher3/model/WidgetItem;

    instance-of v5, v4, Lg4/a;

    if-eqz v5, :cond_1

    if-eq v4, v3, :cond_2

    :cond_1
    invoke-virtual {v2}, Lcom/android/launcher3/widget/WidgetCell;->clear()V

    :cond_2
    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/high16 v4, 0x3f800000    # 1.0f

    new-instance v5, Lcom/android/launcher3/widget/picker/v;

    invoke-direct {v5, p1, v3}, Lcom/android/launcher3/widget/picker/v;-><init>(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/model/WidgetItem;)V

    iget-object v6, p1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->previewCache:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/launcher3/widget/WidgetCell;->applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;FLjava/util/function/Consumer;Landroid/graphics/Bitmap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public bridge synthetic newViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->newViewHolder(Landroid/view/ViewGroup;)Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public newViewHolder(Landroid/view/ViewGroup;)Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;
    .locals 3

    new-instance v0, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0e0184

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected setWidgetsListTableView(Lcom/android/launcher3/widget/picker/WidgetsListTableView;ILcom/android/launcher3/widget/model/WidgetsListContentEntry;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/widget/picker/WidgetsListTableView;",
            "I",
            "Lcom/android/launcher3/widget/model/WidgetsListContentEntry;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;"
        }
    .end annotation

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->obtain(ZZ)Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/widget/picker/WidgetsListTableView;->setListDrawableState(Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;)V

    iget-object p1, p3, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    iget-object p2, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->getMaxSpanSize()I

    move-result p3

    iget p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mCellPadding:I

    invoke-static {p1, p2, v0, p3, p0}, Lcom/android/launcher3/widget/util/WidgetsTableUtils;->groupWidgetItemsUsingRowPxWithReordering(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic unbindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->unbindViewHolder(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;)V

    return-void
.end method

.method public unbindViewHolder(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;)V
    .locals 6

    iget-object p0, p1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->tableContainer:Lcom/android/launcher3/widget/picker/WidgetsListTableView;

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result p0

    iget-object v0, p1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->previewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    iget-object v2, p1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->tableContainer:Lcom/android/launcher3/widget/picker/WidgetsListTableView;

    invoke-virtual {v2, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    invoke-virtual {v2}, Landroid/widget/TableRow;->getChildCount()I

    move-result v3

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_0

    invoke-virtual {v2, v4}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {v5}, Lcom/android/launcher3/widget/WidgetCell;->clear()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
