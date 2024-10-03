.class public abstract Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/navbutton/NavButtonLayoutFactory$NavButtonLayoutter;


# instance fields
.field private final backButton:Landroid/widget/ImageView;

.field private final endContextualContainer:Landroid/view/ViewGroup;

.field private final homeButton:Landroid/widget/ImageView;

.field private final navButtonContainer:Landroid/widget/LinearLayout;

.field private final recentsButton:Landroid/widget/ImageView;

.field private final resources:Landroid/content/res/Resources;

.field private final startContextualContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navButtonContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endContextualContainer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startContextualContainer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;->resources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;->navButtonContainer:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;->endContextualContainer:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;->startContextualContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0b01d7

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "navButtonContainer.findViewById(R.id.home)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;->homeButton:Landroid/widget/ImageView;

    const p1, 0x7f0b02f1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "navButtonContainer.findViewById(R.id.recent_apps)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;->recentsButton:Landroid/widget/ImageView;

    const p1, 0x7f0b00a0

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "navButtonContainer.findViewById(R.id.back)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;->backButton:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method protected final getBackButton()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;->backButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method protected final getEndContextualContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;->endContextualContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method protected final getHomeButton()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;->homeButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getNavButtonContainer()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;->navButtonContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method protected final getRecentsButton()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;->recentsButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/navbutton/AbstractNavButtonLayoutter;->resources:Landroid/content/res/Resources;

    return-object p0
.end method
