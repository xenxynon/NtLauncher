.class public final Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;
.super Lcom/android/launcher3/views/SpringRelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView$a;
    }
.end annotation


# static fields
.field public static final p:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView$a;

.field private static final q:Landroid/view/animation/PathInterpolator;


# instance fields
.field private g:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

.field private h:Lcom/android/launcher3/views/RecyclerViewFastScroller;

.field private i:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/b<",
            "Lo4/a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsActivity;

.field private final k:Lcom/android/launcher3/allapps/AllAppsStore;

.field private l:Ll3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/c<",
            "*>;"
        }
    .end annotation
.end field

.field private m:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<",
            "Lo4/a;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/android/launcher3/views/RecyclerViewFastScroller;

.field private final o:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->p:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView$a;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->q:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/SpringRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-direct {p2}, Lcom/android/launcher3/allapps/AllAppsStore;-><init>()V

    iput-object p2, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->k:Lcom/android/launcher3/allapps/AllAppsStore;

    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->o:Landroid/graphics/Point;

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const-string p3, "lookupContext(context)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsActivity;

    iput-object p1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->j:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsActivity;

    new-instance p3, Ll3/b;

    invoke-direct {p3, p1, p2}, Ll3/b;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;)V

    iput-object p3, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->i:Ll3/b;

    new-instance p1, Ll3/c;

    iget-object p2, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->j:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsActivity;

    invoke-direct {p1, p2, p3}, Ll3/c;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    iput-object p1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->l:Ll3/c;

    new-instance p1, Ll3/d;

    iget-object p2, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->j:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsActivity;

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    iget-object v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->i:Ll3/b;

    iget-object v1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->l:Ll3/c;

    invoke-direct {p1, p2, p3, v0, v1}, Ll3/d;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/android/launcher3/allapps/search/SearchAdapterProvider;)V

    iput-object p1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->m:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    iget-object p0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->i:Ll3/b;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setAdapter(Lcom/android/launcher3/allapps/BaseAllAppsAdapter;)V

    return-void
.end method

.method public static synthetic b(Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/internal/z;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->g(Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/internal/z;)V

    return-void
.end method

.method public static synthetic c(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->i(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;Landroid/view/View;)V

    return-void
.end method

.method private final d()V
    .locals 4

    iget-object v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->k:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->g:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    const/4 v2, 0x0

    const-string v3, "rv"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->unregisterIconContainer(Landroid/view/ViewGroup;)V

    invoke-direct {p0}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->h()V

    iget-object v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->k:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object p0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->g:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez p0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/AllAppsStore;->registerIconContainer(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private final e(Landroid/view/View;Ll3/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ll3/b<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0b01e9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    instance-of v3, v1, Lcom/android/launcher3/model/data/AppInfo;

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget-object v3, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->g:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    const-string v4, "rv"

    if-nez v3, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v3, v2

    :cond_3
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge p1, v3, :cond_4

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_6

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :cond_6
    :goto_1
    invoke-virtual {p2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/16 v3, 0x1000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p2}, Ll3/b;->d()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {p2}, Ll3/b;->updateAdapterItems()V

    goto :goto_3

    :cond_7
    const v3, 0x8000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Ll3/b;->d()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p2}, Ll3/b;->d()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    :goto_3
    sget-object p2, Lg4/g;->n:Lg4/g$a;

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->getHiddenApps()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {p2, v0}, Lg4/g$a;->b(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    iget-object p2, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->g:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez p2, :cond_9

    invoke-static {v4}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    move-object v2, p2

    :goto_4
    const-string p2, "nextFocusItem"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, p1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->f(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)V

    return-void
.end method

.method private final f(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)V
    .locals 8

    new-instance v0, Lkotlin/jvm/internal/z;

    invoke-direct {v0}, Lkotlin/jvm/internal/z;-><init>()V

    iget-object p0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->i:Ll3/b;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p0

    const-string v1, "appsList.adapterItems"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget v5, v3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    iget v6, p2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    if-ne v5, v6, :cond_4

    iget-object v5, v3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iget-object v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    goto :goto_1

    :cond_0
    move-object v5, v6

    :goto_1
    iget-object v7, p2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v7, :cond_1

    iget-object v7, v7, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    goto :goto_2

    :cond_1
    move-object v7, v6

    :goto_2
    invoke-static {v5, v7}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v3, v3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    goto :goto_3

    :cond_2
    move-object v3, v6

    :goto_3
    iget-object v5, p2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v5, :cond_3

    iget-object v6, v5, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    :cond_3
    invoke-static {v3, v6}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    move v2, v4

    :goto_5
    iput v2, v0, Lkotlin/jvm/internal/z;->g:I

    if-ne v2, v4, :cond_7

    iput v1, v0, Lkotlin/jvm/internal/z;->g:I

    :cond_7
    new-instance p0, Lo4/c;

    invoke-direct {p0, p1, v0}, Lo4/c;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/internal/z;)V

    const-wide/16 v0, 0x78

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final g(Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/internal/z;)V
    .locals 1

    const-string v0, "$rv"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$nextFocusPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget p1, p1, Lkotlin/jvm/internal/z;->g:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    if-eqz p0, :cond_2

    const/16 p1, 0x40

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_2
    return-void
.end method

.method private final h()V
    .locals 6

    iget-object v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->g:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    const-string v1, "rv"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v3, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->h:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-nez v3, :cond_1

    const-string v3, "mFastScroller"

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/launcher3/FastScrollRecyclerView;->bindFastScrollbar(Lcom/android/launcher3/views/RecyclerViewFastScroller;)V

    iget-object v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->g:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/views/SpringRelativeLayout;->createEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    iget-object v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->g:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object v3, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->i:Ll3/b;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setApps(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    iget-object v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->g:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    iget-object v3, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->m:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->g:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    iget-object v3, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->m:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->g:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->g:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_8

    const-wide/16 v3, 0x78

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    instance-of v3, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    if-eqz v3, :cond_8

    move-object v3, v0

    check-cast v3, Landroidx/recyclerview/widget/DefaultItemAnimator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    sget-object v3, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->q:Landroid/view/animation/PathInterpolator;

    const-class v4, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-static {v4}, Lkotlin/jvm/internal/b0;->b(Ljava/lang/Class;)Lf6/c;

    move-result-object v4

    invoke-static {v4}, Ly2/g;->b(Ljava/lang/Object;)Ly2/g$f;

    move-result-object v4

    const-string v5, "sDefaultInterpolator"

    invoke-interface {v4, v5}, Ly2/g$f;->b(Ljava/lang/String;)Ly2/g$g;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Ly2/g$g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    new-instance v0, Lcom/android/launcher3/keyboard/FocusedItemDecorator;

    iget-object v3, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->g:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v3, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v3, v2

    :cond_9
    invoke-direct {v0, v3}, Lcom/android/launcher3/keyboard/FocusedItemDecorator;-><init>(Landroid/view/View;)V

    iget-object v3, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->g:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v3, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    move-object v2, v3

    :goto_0
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->l:Ll3/c;

    invoke-virtual {v0}, Lcom/android/launcher3/keyboard/FocusedItemDecorator;->getFocusListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    const-string v2, "focusedItemDecorator.focusListener"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ll3/c;->a(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->l:Ll3/c;

    new-instance v1, Lo4/b;

    invoke-direct {v1, p0}, Lo4/b;-><init>(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;)V

    invoke-virtual {v0, v1}, Ll3/c;->b(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final i(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->i:Ll3/b;

    invoke-direct {p0, p1, v0}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->e(Landroid/view/View;Ll3/b;)V

    return-void
.end method


# virtual methods
.method public final getAppsList()Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "Lo4/a;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->i:Ll3/b;

    return-object p0
.end method

.method public final getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->k:Lcom/android/launcher3/allapps/AllAppsStore;

    return-object p0
.end method

.method public final getHiddenApps()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->i:Ll3/b;

    invoke-virtual {p0}, Ll3/b;->d()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const-string v0, "from(context)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getRecyclerView()Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->g:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez p0, :cond_0

    const-string p0, "rv"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.apps_list_view)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    iput-object v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->g:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    const v0, 0x7f0b017f

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.fast_scroller)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/views/RecyclerViewFastScroller;

    iput-object v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->h:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-nez v0, :cond_0

    const-string v0, "mFastScroller"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const v1, 0x7f0b0180

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setPopupView(Landroid/widget/TextView;)V

    invoke-direct {p0}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->d()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->g:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    const-string v2, "rv"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v3

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->o:Landroid/graphics/Point;

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isHitInParent(FFLandroid/graphics/Point;)Z

    move-result v0

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->g:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_1
    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v3

    :cond_3
    iput-object v3, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->n:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    :cond_4
    iget-object v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->n:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->o:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    move-result v1

    :cond_5
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->g:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    const-string v3, "rv"

    const/4 v4, 0x0

    if-nez v0, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v4

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->o:Landroid/graphics/Point;

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isHitInParent(FFLandroid/graphics/Point;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->g:Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v4, v0

    :goto_1
    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v4

    :cond_3
    iput-object v4, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->n:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    :cond_4
    iget-object v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->n:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->o:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    return v1

    :cond_5
    return v2
.end method
