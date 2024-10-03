.class public Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;
.super Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    iget-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    const v1, 0x7f0b0041

    const v2, 0x7f12004e

    const/16 v3, 0x34

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic j(Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;Lcom/android/launcher3/model/data/WorkspaceItemInfo;I[I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->lambda$performAction$0(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I[I)V

    return-void
.end method

.method private synthetic lambda$performAction$0(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I[I)V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    const/4 v0, 0x0

    aget v5, p3, v0

    const/4 v0, 0x1

    aget v6, p3, v0

    const/16 v3, -0x64

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    iget-object p2, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast p2, Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    iget-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    const p1, 0x7f12013b

    invoke-virtual {p0, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(I)V

    return-void
.end method


# virtual methods
.method protected getSupportedActions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<",
            "Lcom/android/launcher3/Launcher;",
            ">.",
            "LauncherAction;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const p1, 0x7f0b0034

    :goto_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    instance-of p2, p1, Lcom/android/launcher3/notification/NotificationMainView;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {p1}, Lcom/android/launcher3/notification/NotificationMainView;->canChildBeDismissed()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const p1, 0x7f0b0041

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected performAction(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;IZ)Z
    .locals 3

    const/4 p4, 0x1

    const/4 v0, 0x0

    const v1, 0x7f0b0034

    if-ne p3, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    instance-of p3, p3, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-nez p3, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getFinalInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p1

    const/4 p3, 0x2

    new-array p3, p3, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->findSpaceOnWorkspace(Lcom/android/launcher3/model/data/ItemInfo;[I)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    new-instance v2, Le/j;

    invoke-direct {v2, p0, p1, p2, p3}, Le/j;-><init>(Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;Lcom/android/launcher3/model/data/WorkspaceItemInfo;I[I)V

    invoke-static {v2}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    invoke-virtual {v0, v1, p4, p0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    return p4

    :cond_2
    const p2, 0x7f0b0041

    if-ne p3, p2, :cond_4

    instance-of p2, p1, Lcom/android/launcher3/notification/NotificationMainView;

    if-nez p2, :cond_3

    return v0

    :cond_3
    check-cast p1, Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {p1}, Lcom/android/launcher3/notification/NotificationMainView;->onChildDismissed()V

    const p1, 0x7f1201bb

    invoke-virtual {p0, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(I)V

    return p4

    :cond_4
    return v0
.end method
