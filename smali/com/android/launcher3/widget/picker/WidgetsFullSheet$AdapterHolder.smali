.class final Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/picker/WidgetsFullSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AdapterHolder"
.end annotation


# instance fields
.field private final mAdapterType:I

.field final mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

.field private final mWidgetsListItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

.field final synthetic this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;I)V
    .locals 8

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mAdapterType:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v7, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/widget/picker/l;

    invoke-direct {v3, p0}, Lcom/android/launcher3/widget/picker/l;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)V

    invoke-virtual {p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->isTwoPane()Z

    move-result v6

    move-object v0, v7

    move-object v4, p1

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/util/function/IntSupplier;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Z)V

    iput-object v7, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->access$600(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setFilter(Ljava/util/function/Predicate;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->access$500(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setFilter(Ljava/util/function/Predicate;)V

    iput-boolean v0, v7, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->mIsPrimaryAdapter:Z

    :goto_0
    new-instance p1, Lcom/nothing/launcher/widgets/d;

    invoke-direct {p1}, Lcom/nothing/launcher/widgets/d;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->getEmptySpaceHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mAdapterType:I

    return p0
.end method

.method private getEmptySpaceHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollView:Lcom/android/launcher3/views/StickyHeaderLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->getHeaderHeight()I

    move-result p0

    return p0
.end method


# virtual methods
.method setup(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V
    .locals 3

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->access$700(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Landroid/view/ViewOutlineProvider;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    iget-object v1, v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/FastScrollRecyclerView;->bindFastScrollbar(Lcom/android/launcher3/views/RecyclerViewFastScroller;)V

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    const-wide/16 v1, 0xb4

    invoke-virtual {p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->setHeaderViewDimensionsProvider(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;)V

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->isTwoPane()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    invoke-static {v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->access$800(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/SpringRelativeLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/views/SpringRelativeLayout;->createEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    :cond_0
    iget p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mAdapterType:I

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->access$900(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    invoke-static {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->access$1000(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setMaxHorizontalSpansPxPerRow(I)V

    return-void
.end method
