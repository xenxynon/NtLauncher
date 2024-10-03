.class public final Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;
.super Lcom/android/launcher3/widget/LauncherWidgetHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;,
        Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;,
        Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;,
        Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepHolderFactory;
    }
.end annotation


# static fields
.field private static final KEY_PROVIDER_UPDATE:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_VIEWS_UPDATE:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_VIEW_DATA_CHANGED:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static final sListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sWidgetHost:Landroid/appwidget/AppWidgetHost;


# instance fields
.field private final mAppWidgetRemovedCallback:Ljava/util/function/IntConsumer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mPendingUpdateMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/widget/LauncherAppWidgetHostView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/uioverrides/x;->a:Lcom/android/launcher3/uioverrides/x;

    sput-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->KEY_PROVIDER_UPDATE:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;

    sget-object v0, Lcom/android/launcher3/uioverrides/e0;->a:Lcom/android/launcher3/uioverrides/e0;

    sput-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->KEY_VIEWS_UPDATE:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;

    sget-object v0, Lcom/android/launcher3/uioverrides/f0;->a:Lcom/android/launcher3/uioverrides/f0;

    sput-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->KEY_VIEW_DATA_CHANGED:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sHolders:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sListeners:Landroid/util/SparseArray;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/function/IntConsumer;Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/IntConsumer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/widget/RemoteViews$InteractionHandler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;-><init>(Landroid/content/Context;Ljava/util/function/IntConsumer;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mViews:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mProviderChangedListeners:Ljava/util/ArrayList;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mPendingUpdateMap:Landroid/util/SparseArray;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/launcher3/uioverrides/c0;->a:Lcom/android/launcher3/uioverrides/c0;

    :goto_0
    iput-object p2, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mAppWidgetRemovedCallback:Ljava/util/function/IntConsumer;

    iput-object p3, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p2, Lcom/android/launcher3/uioverrides/i0;

    invoke-direct {p2, p0}, Lcom/android/launcher3/uioverrides/i0;-><init>(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/util/function/IntConsumer;Landroid/widget/RemoteViews$InteractionHandler;Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;-><init>(Landroid/content/Context;Ljava/util/function/IntConsumer;Landroid/widget/RemoteViews$InteractionHandler;)V

    return-void
.end method

.method static synthetic access$200()Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;
    .locals 1

    sget-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->KEY_PROVIDER_UPDATE:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;

    return-object v0
.end method

.method static synthetic access$300()Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;
    .locals 1

    sget-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->KEY_VIEWS_UPDATE:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;
    .locals 1

    sget-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->KEY_VIEW_DATA_CHANGED:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;ILcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->onWidgetUpdate(ILcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->lambda$new$1()V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->lambda$createHost$5(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->lambda$destroy$9()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(I)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->lambda$removeProviderChangeListener$11(Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V

    return-void
.end method

.method public static synthetic g()V
    .locals 0

    invoke-static {}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->lambda$createHost$6()V

    return-void
.end method

.method public static synthetic h(I)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->lambda$createHost$3(I)V

    return-void
.end method

.method public static synthetic i()V
    .locals 0

    invoke-static {}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->lambda$createHost$7()V

    return-void
.end method

.method public static synthetic j(I)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->lambda$createHost$4(I)V

    return-void
.end method

.method public static synthetic k(Landroid/appwidget/AppWidgetHostView;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->lambda$updateDeferredView$8(Landroid/appwidget/AppWidgetHostView;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic l(ILcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->lambda$createHost$2(ILcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)V

    return-void
.end method

.method private synthetic lambda$addProviderChangeListener$10(Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mProviderChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$createHost$2(ILcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)V
    .locals 0

    iget-object p1, p1, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mAppWidgetRemovedCallback:Ljava/util/function/IntConsumer;

    invoke-interface {p1, p0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method private static synthetic lambda$createHost$3(I)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sHolders:Ljava/util/List;

    new-instance v1, Lcom/android/launcher3/uioverrides/y;

    invoke-direct {v1, p0}, Lcom/android/launcher3/uioverrides/y;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$createHost$4(I)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/uioverrides/h0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/uioverrides/h0;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$createHost$5(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mProviderChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p0, Lcom/android/launcher3/uioverrides/b0;->g:Lcom/android/launcher3/uioverrides/b0;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$createHost$6()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sHolders:Ljava/util/List;

    sget-object v1, Lcom/android/launcher3/uioverrides/a0;->g:Lcom/android/launcher3/uioverrides/a0;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$createHost$7()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object v1, Lcom/android/launcher3/uioverrides/l0;->g:Lcom/android/launcher3/uioverrides/l0;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$destroy$9()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sHolders:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0(I)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sHolders:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$removeProviderChangeListener$11(Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mProviderChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$updateDeferredView$8(Landroid/appwidget/AppWidgetHostView;Ljava/lang/Integer;)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->KEY_VIEW_DATA_CHANGED:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;

    invoke-interface {v0, p0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->lambda$addProviderChangeListener$10(Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V

    return-void
.end method

.method private onWidgetUpdate(ILcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->isListening()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/appwidget/AppWidgetHostView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, p0, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mPendingUpdateMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;

    invoke-direct {v0, v1}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;-><init>(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$1;)V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mPendingUpdateMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    sget-object p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->KEY_PROVIDER_UPDATE:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    check-cast p3, Landroid/appwidget/AppWidgetProviderInfo;

    iput-object p3, v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v1, v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;->remoteViews:Landroid/widget/RemoteViews;

    iget-object p0, v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;->changedViews:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntSet;->clear()V

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->KEY_VIEWS_UPDATE:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    check-cast p3, Landroid/widget/RemoteViews;

    iput-object p3, v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;->remoteViews:Landroid/widget/RemoteViews;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->KEY_VIEW_DATA_CHANGED:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;->changedViews:Lcom/android/launcher3/util/IntSet;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public addProviderChangeListener(Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V
    .locals 2
    .param p1    # Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/uioverrides/k0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/uioverrides/k0;-><init>(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearViews()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    sget-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sListeners:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    sget-object v1, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;

    invoke-static {v1}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;->access$100(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected createHost(Landroid/content/Context;Ljava/util/function/IntConsumer;)Landroid/appwidget/AppWidgetHost;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/IntConsumer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/launcher3/uioverrides/QuickstepAppWidgetHost;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/uioverrides/d0;->a:Lcom/android/launcher3/uioverrides/d0;

    sget-object v0, Lcom/android/launcher3/uioverrides/g0;->g:Lcom/android/launcher3/uioverrides/g0;

    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/launcher3/uioverrides/QuickstepAppWidgetHost;-><init>(Landroid/content/Context;Ljava/util/function/IntConsumer;Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;Landroid/os/Looper;)V

    sput-object p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHost;->startListening()V

    :cond_0
    sget-object p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object p0
.end method

.method public bridge synthetic createView(Landroid/content/Context;ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->createView(Landroid/content/Context;ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-result-object p0

    return-object p0
.end method

.method public createView(Landroid/content/Context;ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->getPendingView(I)Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->removePendingView(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-direct {v0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHostView;->setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object p1, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sListeners:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;

    if-nez p3, :cond_1

    new-instance p3, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;

    invoke-direct {p3, p2}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;-><init>(I)V

    sget-object v1, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v1, p2, p3}, Landroid/appwidget/AppWidgetHost;->setListener(ILandroid/appwidget/AppWidgetHost$AppWidgetHostListener;)V

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {p3, p0}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;->addHolder(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)Landroid/widget/RemoteViews;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-object v0
.end method

.method public deleteAppWidgetId(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->deleteAppWidgetId(I)V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    sget-object p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public destroy()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/uioverrides/m0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/uioverrides/m0;-><init>(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "QuickstepWidgetHolder"

    const-string v1, "Failed to remove self from holder list"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onScrollableChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->updateWidgetColor()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeProviderChangeListener(Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/uioverrides/j0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/uioverrides/j0;-><init>(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected shouldListen(I)Z
    .locals 0

    const/4 p0, 0x6

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public stopListening()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->sWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->setAppWidgetHidden()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->setListeningFlag(Z)V

    return-void
.end method

.method protected updateDeferredView()V
    .locals 6

    invoke-super {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->updateDeferredView()V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mPendingUpdateMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mPendingUpdateMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetHostView;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mPendingUpdateMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v3, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v4, :cond_2

    sget-object v5, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->KEY_PROVIDER_UPDATE:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;

    invoke-interface {v5, v2, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    iget-object v4, v3, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;->remoteViews:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_3

    sget-object v5, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->KEY_VIEWS_UPDATE:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;

    invoke-interface {v5, v2, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    iget-object v3, v3, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;->changedViews:Lcom/android/launcher3/util/IntSet;

    new-instance v4, Lcom/android/launcher3/uioverrides/z;

    invoke-direct {v4, v2}, Lcom/android/launcher3/uioverrides/z;-><init>(Landroid/appwidget/AppWidgetHostView;)V

    invoke-interface {v3, v4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->mPendingUpdateMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
