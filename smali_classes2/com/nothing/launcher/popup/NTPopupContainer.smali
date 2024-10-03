.class public final Lcom/nothing/launcher/popup/NTPopupContainer;
.super Lcom/android/launcher3/popup/PopupContainerWithArrow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/popup/NTPopupContainer$b;,
        Lcom/nothing/launcher/popup/NTPopupContainer$c;,
        Lcom/nothing/launcher/popup/NTPopupContainer$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/popup/PopupContainerWithArrow<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final j:Lcom/nothing/launcher/popup/NTPopupContainer$a;


# instance fields
.field private g:Lcom/nothing/launcher/popup/NTPopupContainer$b;

.field private h:Landroid/view/View;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nothing/launcher/shortcuts/NTDeepShortcutView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/popup/NTPopupContainer$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/popup/NTPopupContainer$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/popup/NTPopupContainer;->j:Lcom/nothing/launcher/popup/NTPopupContainer$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/nothing/launcher/popup/NTPopupContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lcom/nothing/launcher/popup/NTPopupContainer$b;->g:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    iput-object p1, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->g:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->i:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/nothing/launcher/popup/NTPopupContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final A()Z
    .locals 1

    iget-object p0, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->g:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    sget-object v0, Lcom/nothing/launcher/popup/NTPopupContainer$b;->g:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/nothing/launcher/popup/NTPopupContainer$b;->h:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    if-ne p0, v0, :cond_0

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

.method private final B()Z
    .locals 1

    iget-object p0, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->g:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    sget-object v0, Lcom/nothing/launcher/popup/NTPopupContainer$b;->i:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/nothing/launcher/popup/NTPopupContainer$b;->j:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    if-ne p0, v0, :cond_0

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

.method private final C(Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 1

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f070515

    if-nez p3, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const p0, 0x800013

    :goto_0
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    if-ne p3, p2, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const p0, 0x800015

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private final F(Landroid/view/View;)Lcom/android/launcher3/BubbleTextView;
    .locals 0

    const-string p0, "null cannot be cast to non-null type com.android.launcher3.BubbleTextView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    return-object p1
.end method

.method private final G(Landroid/view/View;)Lcom/android/launcher3/folder/BaseFolderIcon;
    .locals 0

    const-string p0, "null cannot be cast to non-null type com.android.launcher3.folder.BaseFolderIcon"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/folder/BaseFolderIcon;

    return-object p1
.end method

.method public static synthetic h(Lcom/nothing/launcher/popup/NTPopupContainer;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/launcher/popup/NTPopupContainer;->x(Lcom/nothing/launcher/popup/NTPopupContainer;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic i(Lcom/nothing/launcher/popup/NTPopupContainer;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mStartDragThreshold:I

    return p0
.end method

.method public static final synthetic j(Lcom/nothing/launcher/popup/NTPopupContainer;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->h:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic k(Lcom/nothing/launcher/popup/NTPopupContainer;)Lcom/nothing/launcher/popup/NTPopupContainer$b;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->g:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    return-object p0
.end method

.method public static final synthetic l(Lcom/nothing/launcher/popup/NTPopupContainer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/launcher/popup/NTPopupContainer;->y(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic m(Lcom/nothing/launcher/popup/NTPopupContainer;)Z
    .locals 0

    invoke-direct {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->A()Z

    move-result p0

    return p0
.end method

.method public static final synthetic n(Lcom/nothing/launcher/popup/NTPopupContainer;Landroid/view/View;)Lcom/android/launcher3/BubbleTextView;
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/launcher/popup/NTPopupContainer;->F(Landroid/view/View;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o(Lcom/nothing/launcher/popup/NTPopupContainer;Landroid/view/View;)Lcom/android/launcher3/folder/BaseFolderIcon;
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/launcher/popup/NTPopupContainer;->G(Landroid/view/View;)Lcom/android/launcher3/folder/BaseFolderIcon;

    move-result-object p0

    return-object p0
.end method

.method private final p()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

    if-nez v0, :cond_0

    const v0, 0x7f0b029e

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationContainer;

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/notification/NotificationContainer;->setPopupView(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->updateNotificationHeader()V

    return-void
.end method

.method private final q(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "*>;>;I)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/popup/SystemShortcut;

    const v1, 0x7f0e00ff

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p0, v0, v2}, Lcom/nothing/launcher/popup/NTPopupContainer;->initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final r(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "*>;>;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/popup/SystemShortcut;

    instance-of v1, v0, Lcom/android/launcher3/popup/SystemShortcut$Widgets;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mWidgetContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    const v1, 0x7f0e0104

    invoke-virtual {p0, v1, p0}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mWidgetContainer:Landroid/view/ViewGroup;

    :cond_1
    const v1, 0x7f0e00ff

    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mWidgetContainer:Landroid/view/ViewGroup;

    const-string v3, "mWidgetContainer"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/nothing/launcher/popup/NTPopupContainer;->initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final s(II)V
    .locals 12

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcutContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const v0, 0x7f0b0134

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcutContainer:Landroid/view/ViewGroup;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-le p2, v1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcutContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    move v5, v0

    goto :goto_2

    :cond_3
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz v2, :cond_c

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcutContainer:Landroid/view/ViewGroup;

    instance-of v4, v2, Landroid/widget/GridLayout;

    if-eqz v4, :cond_4

    const-string v4, "null cannot be cast to non-null type android.widget.GridLayout"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/GridLayout;

    invoke-virtual {v2}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v2

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0704a2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    const/4 v5, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v4

    int-to-float p1, p1

    sub-float/2addr p1, v5

    add-int/lit8 v5, v2, -0x1

    int-to-float v5, v5

    mul-float/2addr v5, v4

    sub-float v5, p1, v5

    if-eqz v3, :cond_5

    move v6, v2

    goto :goto_4

    :cond_5
    move v6, v1

    :goto_4
    int-to-float v6, v6

    div-float/2addr v5, v6

    move v6, v0

    :goto_5
    if-ge v6, p2, :cond_b

    if-eqz v3, :cond_6

    const v7, 0x7f0e00e7

    goto :goto_6

    :cond_6
    const v7, 0x7f0e00fa

    :goto_6
    iget-object v8, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcutContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v7, v8}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const-string v8, "inflateAndAdd(\n         \u2026ntainer\n                )"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/nothing/launcher/shortcuts/NTDeepShortcutView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type android.widget.GridLayout.LayoutParams"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/widget/GridLayout$LayoutParams;

    div-int v9, v6, v2

    add-int/2addr v9, v1

    if-ne v9, v1, :cond_7

    move v9, v1

    goto :goto_7

    :cond_7
    move v9, v0

    :goto_7
    add-int/lit8 v6, v6, 0x1

    rem-int v10, v6, v2

    if-nez v10, :cond_8

    move v10, v1

    goto :goto_8

    :cond_8
    move v10, v0

    :goto_8
    float-to-int v11, v5

    iput v11, v8, Landroid/widget/GridLayout$LayoutParams;->width:I

    if-eqz v3, :cond_a

    if-nez v9, :cond_9

    float-to-int v9, v4

    iput v9, v8, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    :cond_9
    if-nez v10, :cond_a

    float-to-int v9, v4

    invoke-virtual {v8, v9}, Landroid/widget/GridLayout$LayoutParams;->setMarginEnd(I)V

    :cond_a
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    float-to-int v8, p1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcuts:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->updateHiddenShortcuts()V

    sget-object p0, Ly4/f;->h:Ly4/f;

    invoke-virtual {p0}, Ly4/f;->a()V

    :cond_c
    return-void
.end method

.method private final t(ILjava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "*>;>;Z)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/nothing/launcher/popup/NTPopupContainer;->r(ILjava/util/List;)V

    :cond_0
    const p3, 0x7f0e0101

    invoke-virtual {p0, p3, p0}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p1, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const p3, 0x7f0e0100

    invoke-direct {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->w()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/popup/SystemShortcut;

    const-string v5, "view.layoutParams"

    const-string v6, "mSystemShortcutContainer"

    if-nez v2, :cond_1

    :goto_1
    iget-object v7, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, v7, v4}, Lcom/nothing/launcher/popup/NTPopupContainer;->z(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v6, p1, v2}, Lcom/nothing/launcher/popup/NTPopupContainer;->C(Landroid/view/ViewGroup$LayoutParams;II)V

    goto :goto_2

    :cond_1
    add-int/lit8 v7, p1, -0x1

    if-ne v2, v7, :cond_2

    iget-object v7, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->v()Landroid/widget/Space;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    invoke-direct {p0, p3, v0, v4}, Lcom/nothing/launcher/popup/NTPopupContainer;->z(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->v()Landroid/widget/Space;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_2
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mWidgetContainer:Landroid/view/ViewGroup;

    if-nez v2, :cond_4

    instance-of v2, v4, Lcom/android/launcher3/popup/SystemShortcut$Widgets;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mWidgetContainer:Landroid/view/ViewGroup;

    :cond_4
    move v2, v3

    goto :goto_0

    :cond_5
    return-void
.end method

.method private final u(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "*>;>;Z)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    const/4 v2, 0x2

    if-gt v0, v2, :cond_2

    :cond_1
    const/4 v2, 0x3

    if-le v0, v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    xor-int/2addr p3, v1

    invoke-direct {p0, p1, p2, p3}, Lcom/nothing/launcher/popup/NTPopupContainer;->t(ILjava/util/List;Z)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p2, p1}, Lcom/nothing/launcher/popup/NTPopupContainer;->q(Ljava/util/List;I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/popup/SystemShortcut;

    instance-of p1, p1, Lcom/android/launcher3/popup/SystemShortcut$Widgets;

    if-eqz p1, :cond_5

    sget-object p0, Ly4/f;->h:Ly4/f;

    invoke-virtual {p0}, Ly4/f;->e()V

    :cond_6
    return-void
.end method

.method private final v()Landroid/widget/Space;
    .locals 3

    new-instance v0, Landroid/widget/Space;

    iget-object p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, p0}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private final w()Landroid/widget/LinearLayout;
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x11

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static final x(Lcom/nothing/launcher/popup/NTPopupContainer;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/nothing/launcher/popup/b;->restoreOriginalView()V

    return-void
.end method

.method private final y(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_0

    sget-object p1, Lcom/nothing/launcher/popup/NTPopupContainer$b;->i:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/folder/BigFolderIcon;

    if-eqz v0, :cond_1

    sget-object p1, Lcom/nothing/launcher/popup/NTPopupContainer$b;->j:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lcom/nothing/launcher/views/NTBubbleTextView;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/nothing/launcher/views/NTBubbleTextView;

    invoke-virtual {p1}, Lcom/nothing/launcher/views/NTBubbleTextView;->getBigFolderIcon()Lcom/android/launcher3/folder/BigFolderIcon;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/nothing/launcher/popup/NTPopupContainer$b;->h:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    goto :goto_1

    :cond_3
    :goto_0
    sget-object p1, Lcom/nothing/launcher/popup/NTPopupContainer$b;->g:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    :goto_1
    iput-object p1, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->g:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    return-void
.end method

.method private final z(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/ViewGroup;",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "*>;)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nothing/launcher/popup/NTPopupContainer;->initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final D(Landroid/view/View;ILjava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/notification/NotificationKeyData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "originalIcon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationKeys"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "systemShortcuts"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNumNotifications:I

    invoke-direct {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    :cond_0
    iput-object p1, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->h:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07049e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mContainerWidth:I

    iget v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNumNotifications:I

    if-lez v3, :cond_2

    invoke-direct {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->A()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->p()V

    :cond_2
    invoke-direct {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->A()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mContainerWidth:I

    invoke-direct {p0, v3, p2}, Lcom/nothing/launcher/popup/NTPopupContainer;->s(II)V

    :cond_3
    iget p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNumNotifications:I

    if-gtz p2, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    iget p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mContainerWidth:I

    invoke-direct {p0, p2, p4, v0}, Lcom/nothing/launcher/popup/NTPopupContainer;->u(ILjava/util/List;Z)V

    invoke-virtual {p0, v1}, Lcom/nothing/launcher/popup/b;->reorderAndShow(I)V

    invoke-direct {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->A()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->h:Landroid/view/View;

    if-nez p2, :cond_6

    const-string p2, "popupOwnerView"

    invoke-static {p2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_6
    invoke-direct {p0, p2}, Lcom/nothing/launcher/popup/NTPopupContainer;->F(Landroid/view/View;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/android/launcher3/BubbleTextView;->setForceHideDot(Z)V

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, p1, p3}, Lcom/nothing/launcher/popup/NTPopupContainer;->loadAppShortcuts(Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)V

    iget p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->CLOSE_FADE_START_DELAY:I

    iput p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseFadeStartDelay:I

    iget p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->CLOSE_FADE_DURATION:I

    iput p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseFadeDuration:I

    sget-object p1, Ly4/f;->h:Ly4/f;

    invoke-direct {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->A()Z

    move-result p0

    invoke-virtual {p1, p0}, Ly4/f;->d(Z)V

    return-void
.end method

.method public final E()V
    .locals 3

    iget-object v0, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->g:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    sget-object v1, Lcom/nothing/launcher/popup/NTPopupContainer$b;->g:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const-string v1, "mOriginalIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nothing/launcher/popup/NTPopupContainer;->F(Landroid/view/View;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nothing/launcher/popup/b;->createHighlightView(Lcom/android/launcher3/BubbleTextView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nothing/launcher/popup/b;->setHighlightIconView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/nothing/launcher/popup/b;->addHighlightIconView()V

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nothing/launcher/popup/NTPopupContainer;->F(Landroid/view/View;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setIconVisible(Z)V

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nothing/launcher/popup/NTPopupContainer;->F(Landroid/view/View;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public applyNotificationInfos(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/notification/NotificationInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "notificationInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->g:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    sget-object v1, Lcom/nothing/launcher/popup/NTPopupContainer$c;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget-object p0, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->g:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/notification/NotificationInfo;

    iget-object v3, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/launcher/shortcuts/NTDeepShortcutView;

    invoke-virtual {v0, v2}, Lcom/nothing/launcher/shortcuts/NTDeepShortcutView;->b(Lcom/android/launcher3/notification/NotificationInfo;)V

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/notification/NotificationContainer;->applyNotificationInfos(Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public canInterceptEventsInSystemGestureRegion()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected closeComplete()V
    .locals 4

    invoke-super {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->closeComplete()V

    invoke-direct {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->h:Landroid/view/View;

    const/4 v1, 0x0

    const-string v2, "popupOwnerView"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/nothing/launcher/popup/NTPopupContainer;->G(Landroid/view/View;)Lcom/android/launcher3/folder/BaseFolderIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    const/16 v3, -0x65

    invoke-static {v0, v3}, Lb3/m;->h(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->h:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-direct {p0, v1}, Lcom/nothing/launcher/popup/NTPopupContainer;->G(Landroid/view/View;)Lcom/android/launcher3/folder/BaseFolderIcon;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/BaseFolderIcon;->setTextVisible(Z)V

    :cond_2
    return-void
.end method

.method protected configureForLauncher(Lcom/android/launcher3/Launcher;)V
    .locals 1

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->configureForLauncher(Lcom/android/launcher3/Launcher;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mPopupItemDragHandler:Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;

    new-instance v0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

    invoke-direct {v0, p1}, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :goto_0
    return-void
.end method

.method public createPreDragCondition(Z)Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
    .locals 1

    new-instance v0, Lcom/nothing/launcher/popup/NTPopupContainer$d;

    invoke-direct {v0, p0, p1}, Lcom/nothing/launcher/popup/NTPopupContainer$d;-><init>(Lcom/nothing/launcher/popup/NTPopupContainer;Z)V

    return-object v0
.end method

.method public getItemClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/nothing/launcher/popup/c;

    invoke-direct {v0, p0}, Lcom/nothing/launcher/popup/c;-><init>(Lcom/nothing/launcher/popup/NTPopupContainer;)V

    return-object v0
.end method

.method protected getTargetObjectLocation(Landroid/graphics/Rect;)V
    .locals 4

    const-string v0, "outPos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->h:Landroid/view/View;

    const/4 v2, 0x0

    const-string v3, "popupOwnerView"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->h:Landroid/view/View;

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->h:Landroid/view/View;

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->h:Landroid/view/View;

    if-nez v1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v2

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->A()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->h:Landroid/view/View;

    if-nez v1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v2

    :cond_4
    invoke-direct {p0, v1}, Lcom/nothing/launcher/popup/NTPopupContainer;->F(Landroid/view/View;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->h:Landroid/view/View;

    if-nez v1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v2, v1

    :goto_0
    invoke-direct {p0, v2}, Lcom/nothing/launcher/popup/NTPopupContainer;->F(Landroid/view/View;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->h:Landroid/view/View;

    if-nez p0, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v2, p0

    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result p0

    :goto_2
    add-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :cond_8
    invoke-direct {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->B()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->h:Landroid/view/View;

    if-nez v1, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move-object v2, v1

    :goto_3
    invoke-direct {p0, v2}, Lcom/nothing/launcher/popup/NTPopupContainer;->G(Landroid/view/View;)Lcom/android/launcher3/folder/BaseFolderIcon;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getIconBounds(Landroid/graphics/Rect;)V

    iget p0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0}, Lcom/android/launcher3/icons/IconNormalizer;->formatBigSize(I)I

    move-result v0

    add-int/2addr p0, v0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_a
    :goto_4
    return-void
.end method

.method protected initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;Z)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/ViewGroup;",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "*>;Z)",
            "Landroid/view/View;"
        }
    .end annotation

    const-string p4, "container"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "info"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p4, p3, Lcom/nothing/launcher/popup/l;

    if-eqz p4, :cond_1

    move-object p4, p3

    check-cast p4, Lcom/nothing/launcher/popup/l;

    invoke-virtual {p4, p0}, Lcom/nothing/launcher/popup/l;->F(Lcom/nothing/launcher/popup/NTPopupContainer;)V

    iget-object v0, p0, Lcom/nothing/launcher/popup/NTPopupContainer;->h:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "popupOwnerView"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p4, v0}, Lcom/nothing/launcher/popup/l;->E(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Lcom/nothing/launcher/shortcuts/NTDeepShortcutView;

    if-eqz p1, :cond_2

    move-object p1, p0

    check-cast p1, Lcom/nothing/launcher/shortcuts/NTDeepShortcutView;

    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lcom/android/launcher3/popup/SystemShortcut;->setIconAndLabelFor(Landroid/view/View;Landroid/widget/TextView;)V

    goto :goto_0

    :cond_2
    instance-of p1, p0, Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move-object p1, p0

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Lcom/android/launcher3/popup/SystemShortcut;->setIconAndContentDescriptionFor(Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    invoke-virtual {p0, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "view"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method protected initializeWidgetShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0e00ff

    invoke-direct {p0, v0, p1, p2}, Lcom/nothing/launcher/popup/NTPopupContainer;->z(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mContainerWidth:I

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method protected loadAppShortcuts(Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/notification/NotificationKeyData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->loadAppShortcuts(Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected onCreateCloseAnimation(Landroid/animation/AnimatorSet;)V
    .locals 1

    invoke-direct {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->onCreateCloseAnimation(Landroid/animation/AnimatorSet;)V

    :cond_0
    return-void
.end method

.method public populateAndShow(Lcom/android/launcher3/BubbleTextView;ILjava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/BubbleTextView;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/notification/NotificationKeyData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "originalIcon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationKeys"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "systemShortcuts"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nothing/launcher/popup/NTPopupContainer;->D(Landroid/view/View;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method protected updateNotificationHeader()V
    .locals 1

    invoke-direct {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->updateNotificationHeader()V

    :cond_0
    return-void
.end method
