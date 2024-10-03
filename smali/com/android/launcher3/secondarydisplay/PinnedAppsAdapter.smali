.class public Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;
    }
.end annotation


# instance fields
.field private final mAllAppsList:Lcom/android/launcher3/allapps/AllAppsStore;

.field private final mAppNameComparator:Lcom/android/launcher3/allapps/AppInfoComparator;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLauncher:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mPinnedApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;Lcom/android/launcher3/allapps/AllAppsStore;Landroid/view/View$OnLongClickListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mPinnedApps:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mItems:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mLauncher:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    iput-object p2, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mAllAppsList:Lcom/android/launcher3/allapps/AllAppsStore;

    const-string p3, "pinned_apps"

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mPrefs:Landroid/content/SharedPreferences;

    new-instance p3, Lcom/android/launcher3/allapps/AppInfoComparator;

    invoke-direct {p3, p1}, Lcom/android/launcher3/allapps/AppInfoComparator;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mAppNameComparator:Lcom/android/launcher3/allapps/AppInfoComparator;

    new-instance p1, Lt/a;

    invoke-direct {p1, p0}, Lt/a;-><init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)V

    invoke-virtual {p2, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->lambda$update$2(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mPinnedApps:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mLauncher:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->createFilteredAppsList()V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Ljava/lang/String;)Lcom/android/launcher3/util/ComponentKey;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->parseComponentKey(Ljava/lang/String;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object p0

    return-object p0
.end method

.method private createFilteredAppsList()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mPinnedApps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mAllAppsList:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lt/g;

    invoke-direct {v2, v1}, Lt/g;-><init>(Lcom/android/launcher3/allapps/AllAppsStore;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lt/k;->a:Lt/k;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lt/f;

    invoke-direct {v2, v1}, Lt/f;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mAppNameComparator:Lcom/android/launcher3/allapps/AppInfoComparator;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->lambda$onSharedPreferenceChanged$0(Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->lambda$onSharedPreferenceChanged$1(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method private encode(Lcom/android/launcher3/util/ComponentKey;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mLauncher:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/pm/UserCache;

    iget-object p1, p1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Lcom/android/launcher3/util/ComponentKey;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->encode(Lcom/android/launcher3/util/ComponentKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onSharedPreferenceChanged$0(Ljava/util/Set;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mPinnedApps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mPinnedApps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->createFilteredAppsList()V

    return-void
.end method

.method private synthetic lambda$onSharedPreferenceChanged$1(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lt/i;

    invoke-direct {p2, p0}, Lt/i;-><init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lt/b;->a:Lt/b;

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    sget-object p2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lt/e;

    invoke-direct {v0, p0, p1}, Lt/e;-><init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Ljava/util/Set;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic lambda$update$2(Ljava/util/Set;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lt/h;

    invoke-direct {v1, p0}, Lt/h;-><init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    const-string p1, "pinned_apps"

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private parseComponentKey(Ljava/lang/String;)Lcom/android/launcher3/util/ComponentKey;
    .locals 2

    :try_start_0
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mLauncher:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/pm/UserCache;

    aget-object v0, p1, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/pm/UserCache;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addPinnedApp(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mPinnedApps:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lt/j;

    invoke-direct {v1, v0}, Lt/j;-><init>(Ljava/util/Set;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->update(Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/function/Function;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Lcom/android/launcher3/model/data/AppInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/AppInfo;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->getItem(I)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getSystemShortcut(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 7

    new-instance v6, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;

    iget-object v2, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mLauncher:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mPinnedApps:Ljava/util/Set;

    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v1, v3, v4}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$PinUnPinShortcut;-><init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Z)V

    return-object v6
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    instance-of v0, p2, Lcom/nothing/launcher/views/NTBubbleTextView;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/nothing/launcher/views/NTBubbleTextView;

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0038

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/nothing/launcher/views/NTBubbleTextView;

    iget-object p3, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p2, p3}, Lcom/nothing/launcher/views/NTBubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p2}, Lcom/nothing/launcher/views/NTBubbleTextView;->setDefaultLongPressTimeoutFactor()V

    iget-object p3, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mLauncher:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {p3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p3

    iget p3, p3, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    invoke-virtual {p2, p3, p3, p3, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p2, p0}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V

    return-object p2
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pinned_apps"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const-string v0, "pinned_apps"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lt/c;

    invoke-direct {v1, p0, p1, p2}, Lt/c;-><init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public update(Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/function/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/util/function/Function<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->createFilteredAppsList()V

    new-instance p1, Ljava/util/HashSet;

    iget-object p2, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->mPinnedApps:Ljava/util/Set;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object p2, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lt/d;

    invoke-direct {v0, p0, p1}, Lt/d;-><init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Ljava/util/Set;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method
