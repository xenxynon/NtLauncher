.class public Lcom/android/launcher3/widget/picker/WidgetsListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/widget/picker/OnHeaderClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/android/launcher3/widget/picker/OnHeaderClickListener;"
    }
.end annotation


# instance fields
.field private final mAllEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mFilter:Ljava/util/function/Predicate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderAndSelectedContentFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderChangeListener:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mIsPrimaryAdapter:Z

.field private mMaxHorizontalSpan:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field private mPendingClickHeader:Lcom/android/launcher3/util/PackageUserKey;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mPrimaryLastNtWidgetsItemPosition:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mRowComparator:Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;

.field private final mViewHolderBinders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/recyclerview/ViewHolderBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetsContentVisiblePackageUserKey:Lcom/android/launcher3/util/PackageUserKey;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/util/function/IntSupplier;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Z)V
    .locals 4

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mViewHolderBinders:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;

    invoke-direct {v1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mRowComparator:Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mAllEntries:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mWidgetsContentVisiblePackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    new-instance v2, Lcom/android/launcher3/widget/picker/q;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/picker/q;-><init>(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;)V

    iput-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mHeaderAndSelectedContentFilter:Ljava/util/function/Predicate;

    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mFilter:Ljava/util/function/Predicate;

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizePx(Lcom/android/launcher3/DeviceProfile;II)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mMaxHorizontalSpan:I

    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;

    invoke-direct {v1, p1, p2, p4, p5}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    const v2, 0x7f0b0422

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;

    invoke-direct {v1, p2, p0, p6}, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;-><init>(Landroid/view/LayoutInflater;Lcom/android/launcher3/widget/picker/OnHeaderClickListener;Z)V

    const p6, 0x7f0b0421

    invoke-virtual {v0, p6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p6, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder;

    invoke-direct {p6, p3}, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder;-><init>(Ljava/util/function/IntSupplier;)V

    const p3, 0x7f0b0423

    invoke-virtual {v0, p3, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p3, Lcom/nothing/launcher/widgets/j;

    invoke-direct {p3, p2, p0}, Lcom/nothing/launcher/widgets/j;-><init>(Landroid/view/LayoutInflater;Lcom/android/launcher3/widget/picker/OnHeaderClickListener;)V

    const p0, 0x7f0b0420

    invoke-virtual {v0, p0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p0, Lcom/nothing/launcher/widgets/g;

    invoke-direct {p0, p2}, Lcom/nothing/launcher/widgets/g;-><init>(Landroid/view/LayoutInflater;)V

    const p3, 0x7f0b041f

    invoke-virtual {v0, p3, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p0, Lcom/nothing/launcher/widgets/k;

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/nothing/launcher/widgets/k;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    const p1, 0x7f0b041e

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->lambda$updateVisibleEntries$3(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;Lcom/android/launcher3/util/PackageUserKey;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->lambda$getPositionForPackageUserKey$6(Lcom/android/launcher3/util/PackageUserKey;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->lambda$selectFirstHeaderEntry$5(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->lambda$new$0(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->lambda$selectFirstHeaderEntry$4(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->lambda$updateVisibleEntries$2(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->lambda$updateVisibleEntries$1(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z

    move-result p0

    return p0
.end method

.method private getOffsetForPosition(Ljava/util/OptionalInt;)Ljava/util/OptionalInt;
    .locals 1

    invoke-virtual {p1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p0

    invoke-static {p0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0
.end method

.method private getPositionForPackageUserKey(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/OptionalInt;
    .locals 2
    .param p1    # Lcom/android/launcher3/util/PackageUserKey;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/widget/picker/p;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/widget/picker/p;-><init>(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;Lcom/android/launcher3/util/PackageUserKey;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0
.end method

.method private static isHeaderForPackageUserKey(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/util/PackageUserKey;)Z
    .locals 1
    .param p0    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/android/launcher3/util/PackageUserKey;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->matchesKey(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/util/PackageUserKey;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$getPositionForPackageUserKey$6(Lcom/android/launcher3/util/PackageUserKey;I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    invoke-static {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->isHeaderForPackageUserKey(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/util/PackageUserKey;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/util/PackageUserKey;->fromPackageItemInfo(Lcom/android/launcher3/model/data/PackageItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mWidgetsContentVisiblePackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/PackageUserKey;->equals(Ljava/lang/Object;)Z

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

.method private static synthetic lambda$selectFirstHeaderEntry$4(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 0

    instance-of p0, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    return p0
.end method

.method private synthetic lambda$selectFirstHeaderEntry$5(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)V
    .locals 1

    iget-object p1, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/util/PackageUserKey;->fromPackageItemInfo(Lcom/android/launcher3/model/data/PackageItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->onHeaderClicked(ZLcom/android/launcher3/util/PackageUserKey;)V

    return-void
.end method

.method private synthetic lambda$updateVisibleEntries$1(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mFilter:Ljava/util/function/Predicate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mHeaderAndSelectedContentFilter:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    instance-of v0, p1, Lcom/android/launcher3/widget/model/WidgetListSpaceEntry;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/nothing/launcher/widgets/e;

    if-eqz v0, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mHeaderChangeListener:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;

    if-eqz p0, :cond_4

    instance-of p0, p1, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$updateVisibleEntries$2(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mWidgetsContentVisiblePackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    invoke-static {p1, v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->matchesKey(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/util/PackageUserKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->withWidgetListShown()Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    iget p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mMaxHorizontalSpan:I

    invoke-virtual {p1, p0}, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->withMaxSpanSize(I)Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method private static synthetic lambda$updateVisibleEntries$3(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    instance-of v0, p0, Lcom/nothing/launcher/widgets/b;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/nothing/launcher/widgets/b;

    invoke-virtual {p0}, Lcom/nothing/launcher/widgets/b;->i()Lcom/nothing/launcher/widgets/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nothing/launcher/widgets/a;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static matchesKey(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/util/PackageUserKey;)Z
    .locals 5
    .param p0    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/android/launcher3/util/PackageUserKey;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    instance-of v2, v1, Lcom/nothing/launcher/widgets/b;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    instance-of v2, p1, Lcom/nothing/launcher/widgets/c;

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget v2, v1, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    iget v4, p1, Lcom/android/launcher3/util/PackageUserKey;->mWidgetCategory:I

    if-ne v2, v4, :cond_1

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v2, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    check-cast p0, Lcom/nothing/launcher/widgets/b;

    invoke-virtual {p0}, Lcom/nothing/launcher/widgets/b;->i()Lcom/nothing/launcher/widgets/a;

    move-result-object p0

    check-cast p1, Lcom/nothing/launcher/widgets/c;

    invoke-virtual {p1}, Lcom/nothing/launcher/widgets/c;->a()Lcom/nothing/launcher/widgets/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/widgets/a;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v0, v3

    :cond_1
    return v0

    :cond_2
    iget-object v1, v1, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget v1, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    iget v2, p1, Lcom/android/launcher3/util/PackageUserKey;->mWidgetCategory:I

    if-ne v1, v2, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object p1, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v0, v3

    :cond_3
    return v0
.end method

.method private scrollToPositionAndMaintainOffset(Ljava/util/OptionalInt;Ljava/util/OptionalInt;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p2

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    sub-int/2addr p2, p0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateVisibleEntries()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mPendingClickHeader:Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getPositionForPackageUserKey(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/OptionalInt;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getOffsetForPosition(Ljava/util/OptionalInt;)Ljava/util/OptionalInt;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mAllEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/widget/picker/r;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/picker/r;-><init>(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/widget/picker/o;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/picker/o;-><init>(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Lcom/android/launcher3/widget/picker/WidgetsDiffCallback;

    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v1}, Lcom/android/launcher3/widget/picker/WidgetsDiffCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/widget/picker/s;->a:Lcom/android/launcher3/widget/picker/s;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->count()J

    move-result-wide v1

    long-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mPrimaryLastNtWidgetsItemPosition:I

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mPendingClickHeader:Lcom/android/launcher3/util/PackageUserKey;

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getPositionForPackageUserKey(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/OptionalInt;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->scrollToPositionAndMaintainOffset(Ljava/util/OptionalInt;Ljava/util/OptionalInt;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mPendingClickHeader:Lcom/android/launcher3/util/PackageUserKey;

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    iget-object v1, v1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/PackageItemInfo;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getItemViewType(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    instance-of p1, p0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    instance-of p1, p0, Lcom/nothing/launcher/widgets/b;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/nothing/launcher/widgets/b;

    invoke-virtual {p0}, Lcom/nothing/launcher/widgets/b;->i()Lcom/nothing/launcher/widgets/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nothing/launcher/widgets/a;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0b041e

    return p0

    :cond_0
    const p0, 0x7f0b0422

    return p0

    :cond_1
    instance-of p1, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    instance-of p1, p1, Lcom/nothing/launcher/widgets/b;

    if-eqz p1, :cond_2

    move-object p1, p0

    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->isSearchEntry()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    check-cast p0, Lcom/nothing/launcher/widgets/b;

    invoke-virtual {p0}, Lcom/nothing/launcher/widgets/b;->i()Lcom/nothing/launcher/widgets/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nothing/launcher/widgets/a;->e()Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f0b0420

    return p0

    :cond_2
    const p0, 0x7f0b0421

    return p0

    :cond_3
    instance-of p1, p0, Lcom/android/launcher3/widget/model/WidgetListSpaceEntry;

    if-eqz p1, :cond_4

    const p0, 0x7f0b0423

    return p0

    :cond_4
    instance-of p1, p0, Lcom/nothing/launcher/widgets/e;

    if-eqz p1, :cond_5

    const p0, 0x7f0b041f

    return p0

    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewHolderBinder not found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSectionName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    iget-object p0, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mTitleSectionName:Ljava/lang/String;

    return-object p0
.end method

.method public hasVisibleEntries()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getItemCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mViewHolderBinders:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getItemViewType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/recyclerview/ViewHolderBinder;

    const/4 v1, 0x1

    if-le p2, v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne p2, v3, :cond_1

    or-int/lit8 v2, v2, 0x2

    :cond_1
    iget-boolean v3, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mIsPrimaryAdapter:Z

    if-eqz v3, :cond_2

    iget v4, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mPrimaryLastNtWidgetsItemPosition:I

    if-ne p2, v4, :cond_2

    or-int/lit8 v2, v2, 0x4

    :cond_2
    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mPrimaryLastNtWidgetsItemPosition:I

    add-int/2addr v3, v1

    if-ne p2, v3, :cond_3

    or-int/lit8 v2, v2, 0x1

    :cond_3
    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p1, p0, v2, p3}, Lcom/android/launcher3/recyclerview/ViewHolderBinder;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;ILjava/util/List;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mViewHolderBinders:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/recyclerview/ViewHolderBinder;

    invoke-interface {p0, p1}, Lcom/android/launcher3/recyclerview/ViewHolderBinder;->newViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onHeaderClicked(ZLcom/android/launcher3/util/PackageUserKey;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mWidgetsContentVisiblePackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/PackageUserKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mHeaderChangeListener:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mWidgetsContentVisiblePackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/PackageUserKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iput-object p2, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mWidgetsContentVisiblePackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WIDGETSTRAY_APP_EXPANDED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mWidgetsContentVisiblePackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    :goto_0
    iput-object p2, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mPendingClickHeader:Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->updateVisibleEntries()V

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mHeaderChangeListener:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mWidgetsContentVisiblePackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    if-eqz p0, :cond_3

    invoke-interface {p1, p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;->onHeaderChanged(Lcom/android/launcher3/util/PackageUserKey;)V

    :cond_3
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mViewHolderBinders:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/recyclerview/ViewHolderBinder;

    invoke-interface {p0, p1}, Lcom/android/launcher3/recyclerview/ViewHolderBinder;->unbindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public resetExpandedHeader()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mWidgetsContentVisiblePackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mWidgetsContentVisiblePackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->updateVisibleEntries()V

    :cond_0
    return-void
.end method

.method selectFirstHeaderEntry()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mVisibleEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/widget/picker/t;->a:Lcom/android/launcher3/widget/picker/t;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/widget/picker/m;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/picker/m;-><init>(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setFilter(Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mFilter:Ljava/util/function/Predicate;

    return-void
.end method

.method public setHeaderChangeListener(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mHeaderChangeListener:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;

    return-void
.end method

.method public setMaxHorizontalSpansPxPerRow(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iput p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mMaxHorizontalSpan:I

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->updateVisibleEntries()V

    return-void
.end method

.method public setWidgets(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mAllEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mAllEntries:Ljava/util/List;

    new-instance v1, Lcom/android/launcher3/widget/model/WidgetListSpaceEntry;

    invoke-direct {v1}, Lcom/android/launcher3/widget/model/WidgetListSpaceEntry;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mIsPrimaryAdapter:Z

    if-eqz v0, :cond_0

    sget-object v0, Lg4/j;->b:Lg4/j$a;

    invoke-virtual {v0}, Lg4/j$a;->a()Lcom/nothing/launcher/widgets/e;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mAllEntries:Ljava/util/List;

    invoke-virtual {v0}, Lg4/j$a;->a()Lcom/nothing/launcher/widgets/e;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mRowComparator:Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mAllEntries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/widget/picker/n;

    invoke-direct {v1, v0}, Lcom/android/launcher3/widget/picker/n;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->updateVisibleEntries()V

    return-void
.end method

.method public setWidgetsOnSearch(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mWidgetsContentVisiblePackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setWidgets(Ljava/util/List;)V

    return-void
.end method
