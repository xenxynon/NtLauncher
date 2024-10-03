.class public final Lcom/android/launcher3/taskbar/navbutton/NavButtonLayoutFactory$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/navbutton/NavButtonLayoutFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/navbutton/NavButtonLayoutFactory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getUiLayoutter(Lcom/android/launcher3/DeviceProfile;Landroid/widget/FrameLayout;Landroid/content/res/Resources;ZZZZ)Lcom/android/launcher3/taskbar/navbutton/NavButtonLayoutFactory$NavButtonLayoutter;
    .locals 3

    const-string p0, "deviceProfile"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "navButtonsView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "resources"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const p0, 0x7f0b0172

    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const v0, 0x7f0b0171

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0b037c

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    if-eqz p7, :cond_0

    if-eqz p6, :cond_0

    const/4 p6, 0x1

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    const-string p7, "startContextualContainer"

    const-string v1, "endContextualContainer"

    const-string v2, "navButtonContainer"

    if-eqz p6, :cond_2

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez p1, :cond_1

    new-instance p1, Lcom/android/launcher3/taskbar/navbutton/PhonePortraitNavLayoutter;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p7}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p3, p0, v0, p2}, Lcom/android/launcher3/taskbar/navbutton/PhonePortraitNavLayoutter;-><init>(Landroid/content/res/Resources;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/android/launcher3/taskbar/navbutton/PhoneLandscapeNavLayoutter;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p7}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p3, p0, v0, p2}, Lcom/android/launcher3/taskbar/navbutton/PhoneLandscapeNavLayoutter;-><init>(Landroid/content/res/Resources;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    :goto_1
    return-object p1

    :cond_2
    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz p1, :cond_5

    if-eqz p5, :cond_3

    new-instance p1, Lcom/android/launcher3/taskbar/navbutton/SetupNavLayoutter;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p7}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p3, p0, v0, p2}, Lcom/android/launcher3/taskbar/navbutton/SetupNavLayoutter;-><init>(Landroid/content/res/Resources;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    goto :goto_2

    :cond_3
    if-eqz p4, :cond_4

    new-instance p1, Lcom/android/launcher3/taskbar/navbutton/KidsNavLayoutter;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p7}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p3, p0, v0, p2}, Lcom/android/launcher3/taskbar/navbutton/KidsNavLayoutter;-><init>(Landroid/content/res/Resources;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/android/launcher3/taskbar/navbutton/TaskbarNavLayoutter;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p7}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p3, p0, v0, p2}, Lcom/android/launcher3/taskbar/navbutton/TaskbarNavLayoutter;-><init>(Landroid/content/res/Resources;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    :goto_2
    return-object p1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No layoutter found"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
