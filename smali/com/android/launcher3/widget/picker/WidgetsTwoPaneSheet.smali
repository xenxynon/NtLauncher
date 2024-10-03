.class public Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;
.super Lcom/android/launcher3/widget/picker/WidgetsFullSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;
    }
.end annotation


# instance fields
.field private mActivePage:I

.field private mRightPane:Landroid/widget/LinearLayout;

.field private mRightPaneScrollView:Landroid/widget/ScrollView;

.field private mSuggestedWidgetsContainer:Landroid/widget/LinearLayout;

.field private mSuggestedWidgetsHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

.field private final mViewOutlineProviderRightPane:Landroid/view/ViewOutlineProvider;

.field private mWidgetsListTableViewHolderBinder:Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mActivePage:I

    new-instance p1, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$1;-><init>(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)V

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mViewOutlineProviderRightPane:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mRightPane:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Lcom/android/launcher3/widget/picker/WidgetsListHeader;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mWidgetsListTableViewHolderBinder:Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mRightPaneScrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method private getHeaderChangeListener()Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;
    .locals 1

    new-instance v0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;-><init>(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)V

    return-object v0
.end method

.method public static synthetic k(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->lambda$setupSuggestedWidgets$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$setupSuggestedWidgets$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setExpanded(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->resetExpandedHeaders()V

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mRightPane:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mRightPane:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mRecommendedWidgetsTable:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mRightPaneScrollView:Landroid/widget/ScrollView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setScrollY(I)V

    return-void
.end method

.method private setupSuggestedWidgets(Landroid/view/LayoutInflater;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollView:Lcom/android/launcher3/views/StickyHeaderLayout;

    const v1, 0x7f0b0388

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0181

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setExpanded(Z)V

    new-instance p1, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$2;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const-string v1, "widgets_list_suggestions_entry"

    invoke-direct {p1, p0, v1, v0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$2;-><init>(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120255

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/popup/PopupDataProvider;->getRecommendedWidgets()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->create(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->withWidgetListShown()Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->applyFromItemInfoWithIcon(Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)V

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0803ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    new-instance v0, Lcom/android/launcher3/widget/picker/w;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/picker/w;-><init>(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsContainer:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected getContentView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mRightPane:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method protected getMaxTableHeight(F)F
    .locals 0

    const p0, 0x7f7fffff    # Float.MAX_VALUE

    return p0
.end method

.method protected isTwoPane()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onActivePageChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onActivePageChanged(I)V

    iget v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mActivePage:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mActivePage:I

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->selectFirstHeaderEntry()V

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->scrollToTop()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-ne p1, p0, :cond_3

    :cond_2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->callOnClick()Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onRecommendedWidgetsBound()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onRecommendedWidgetsBound()V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasRecommendedWidgets:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->setupSuggestedWidgets(Landroid/view/LayoutInflater;)V

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->callOnClick()Z

    :cond_0
    return-void
.end method

.method public onSearchResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onSearchResults(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object p1, p1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->selectFirstHeaderEntry()V

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->scrollToTop()V

    return-void
.end method

.method protected setViewVisibilityBasedOnSearch(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setViewVisibilityBasedOnSearch(Z)V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mSuggestedWidgetsHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->callOnClick()Z

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mActivePage:I

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->selectFirstHeaderEntry()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected setupSheet()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->getHeaderChangeListener()Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setHeaderChangeListener(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->getHeaderChangeListener()Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setHeaderChangeListener(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->getHeaderChangeListener()Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setHeaderChangeListener(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v3, :cond_0

    const v3, 0x7f0e0186

    goto :goto_0

    :cond_0
    const v3, 0x7f0e0187

    :goto_0
    const v4, 0x7f0b02f5

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setupViews()V

    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;

    iget-object v3, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    invoke-direct {v1, v3, v0, p0, p0}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mWidgetsListTableViewHolderBinder:Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    const v1, 0x7f0b02f2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mRecommendedWidgetsTable:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->setWidgetCellLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mRecommendedWidgetsTable:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->setWidgetCellOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    const v1, 0x7f0b03da

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHeaderTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    const v1, 0x7f0b0304

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mRightPane:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mViewOutlineProviderRightPane:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    const v1, 0x7f0b0306

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mRightPaneScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->onRecommendedWidgetsBound()V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onWidgetsBound()V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setUpEducationViewsIfNeeded()V

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected shouldScroll(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mRightPaneScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mRightPaneScrollView:Landroid/widget/ScrollView;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->shouldScroll(Landroid/view/MotionEvent;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method protected updateRecyclerViewVisibility(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)V
    .locals 2

    iget-object v0, p1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->hasVisibleEntries()Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->mRightPane:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-super {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->updateRecyclerViewVisibility(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)V

    return-void
.end method
