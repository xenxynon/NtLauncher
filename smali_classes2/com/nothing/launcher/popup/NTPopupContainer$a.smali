.class public final Lcom/nothing/launcher/popup/NTPopupContainer$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/launcher/popup/NTPopupContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/launcher/popup/NTPopupContainer$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Ly5/l;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/launcher/popup/NTPopupContainer$a;->e(Ly5/l;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ly5/l;Ljava/lang/Object;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/launcher/popup/NTPopupContainer$a;->d(Ly5/l;Ljava/lang/Object;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method

.method private final c(Landroid/view/View;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/nothing/launcher/popup/NTPopupContainer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/launcher3/Launcher;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ")",
            "Lcom/nothing/launcher/popup/NTPopupContainer<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object p0

    const-string v0, "launcher.popupDataProvider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/launcher3/popup/PopupDataProvider;->getShortcutCountForItem(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result v0

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getSupportedShortcuts()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/nothing/launcher/popup/NTPopupContainer$a$a;

    invoke-direct {v2, p2, p3, p1}, Lcom/nothing/launcher/popup/NTPopupContainer$a$a;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    new-instance v3, Lcom/nothing/launcher/popup/d;

    invoke-direct {v3, v2}, Lcom/nothing/launcher/popup/d;-><init>(Ly5/l;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/nothing/launcher/popup/NTPopupContainer$a$b;->g:Lcom/nothing/launcher/popup/NTPopupContainer$a$b;

    new-instance v3, Lcom/nothing/launcher/popup/e;

    invoke-direct {v3, v2}, Lcom/nothing/launcher/popup/e;-><init>(Ly5/l;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v3

    const v4, 0x7f0e00fc

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/nothing/launcher/popup/NTPopupContainer;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Lcom/nothing/launcher/popup/NTPopupContainer;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_2

    invoke-static {v2, p1}, Lcom/nothing/launcher/popup/NTPopupContainer;->l(Lcom/nothing/launcher/popup/NTPopupContainer;Landroid/view/View;)V

    invoke-virtual {v2, p2}, Lcom/nothing/launcher/popup/NTPopupContainer;->configureForLauncher(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p0, p3}, Lcom/android/launcher3/popup/PopupDataProvider;->getNotificationKeysForItem(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/util/List;

    move-result-object p0

    const-string v3, "popupDataProvider.getNotificationKeysForItem(item)"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "systemShortcuts"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v0, p0, v1}, Lcom/nothing/launcher/popup/NTPopupContainer;->D(Landroid/view/View;ILjava/util/List;Ljava/util/List;)V

    invoke-static {v2}, Lcom/nothing/launcher/popup/NTPopupContainer;->m(Lcom/nothing/launcher/popup/NTPopupContainer;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p3}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/launcher3/Launcher;->refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V

    :cond_1
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestFocus()Z

    move-object v4, v2

    :cond_2
    return-object v4
.end method

.method private static final d(Ly5/l;Ljava/lang/Object;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/popup/SystemShortcut;

    return-object p0
.end method

.method private static final e(Ly5/l;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final f(Lcom/android/launcher3/folder/BigFolderIcon;)Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/BigFolderIcon;",
            ")",
            "Lcom/android/launcher3/popup/PopupContainerWithArrow<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/BigFolderIcon;->getRealLongClickItem()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/popup/NTPopupContainer$a;->h(Landroid/view/View;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lcom/android/launcher3/folder/FolderIcon;)Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/FolderIcon;",
            ")",
            "Lcom/android/launcher3/popup/PopupContainerWithArrow<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/popup/NTPopupContainer$a;->h(Landroid/view/View;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object p0

    return-object p0
.end method

.method public final h(Landroid/view/View;)Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/android/launcher3/popup/PopupContainerWithArrow<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    const-string v1, "getLauncher(view.context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Landroid/content/Context;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    return-object v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v3, :cond_2

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v1}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/nothing/launcher/popup/NTPopupContainer$a;->c(Landroid/view/View;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/nothing/launcher/popup/NTPopupContainer;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v2
.end method
