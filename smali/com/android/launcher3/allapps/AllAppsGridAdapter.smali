.class public Lcom/android/launcher3/allapps/AllAppsGridAdapter;
.super Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;,
        Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;,
        Lcom/android/launcher3/allapps/AllAppsGridAdapter$OnLayoutCompletedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mGridLayoutMgr:Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/AllAppsGridAdapter<",
            "TT;>.AppsGrid",
            "LayoutManager;"
        }
    .end annotation
.end field

.field private final mOnLayoutCompletedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/launcher3/allapps/AllAppsGridAdapter$OnLayoutCompletedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/android/launcher3/allapps/search/SearchAdapterProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/LayoutInflater;",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList;",
            "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/android/launcher3/allapps/search/SearchAdapterProvider;)V

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mOnLayoutCompletedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p2, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    iget-object p3, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    invoke-direct {p2, p0, p3}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;-><init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    new-instance p3, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;

    invoke-direct {p3, p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;-><init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->setAppsPerRow(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mOnLayoutCompletedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->getLayoutManager()Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutManager()Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/AllAppsGridAdapter<",
            "TT;>.AppsGrid",
            "LayoutManager;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    return-object p0
.end method

.method public getSpanIndex(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->getLayoutManager()Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result p0

    return p0
.end method

.method public setAppsPerRow(I)V
    .locals 5

    iput p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mAppsPerRow:I

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->getSupportedItemsPerRowArray()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    rem-int v4, p1, v3

    if-eqz v4, :cond_0

    mul-int/2addr p1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method
