.class public Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;
.super Lcom/android/launcher3/util/ScrollableLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AllAppsGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppsGridLayoutManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-direct {p0, p2}, Lcom/android/launcher3/util/ScrollableLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getRowsNotForAccessibility(I)I
    .locals 4

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-gt v0, p1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget v2, v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->isViewType(II)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object p2, p2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-direct {p0, p2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getRowsNotForAccessibility(I)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method protected incrementTotalHeight(Landroidx/recyclerview/widget/RecyclerView$Adapter;II)I
    .locals 0

    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object p1, p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget p2, p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    invoke-static {p2}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->isIconViewType(I)Z

    move-result p2

    if-nez p2, :cond_1

    iget p2, p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    invoke-static {p2}, Ll3/d;->a(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_2

    iget p2, p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->rowAppIndex:I

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mCachedSizes:Landroid/util/SparseIntArray;

    iget p1, p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    add-int/2addr p3, p0

    :goto_2
    return p3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getNumFilteredApps()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->getFromIndex()I

    move-result v0

    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->getFromIndex()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getRowsNotForAccessibility(I)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->getToIndex()I

    move-result v0

    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->getToIndex()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getRowsNotForAccessibility(I)I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getCollectionItemInfo()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p2

    instance-of p3, p1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->getRowIndex()I

    move-result p3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getRowsNotForAccessibility(I)I

    move-result p0

    sub-int v0, p3, p0

    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->getRowSpan()I

    move-result v1

    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->getColumnIndex()I

    move-result v2

    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->getColumnSpan()I

    move-result v3

    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->isHeading()Z

    move-result v4

    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->isSelected()Z

    move-result v5

    invoke-static/range {v0 .. v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->access$000(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$OnLayoutCompletedListener;

    invoke-interface {p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$OnLayoutCompletedListener;->onLayoutCompleted()V

    goto :goto_0

    :cond_0
    return-void
.end method
