.class public final Lcom/nothing/launcher/widget/NTDockSearchBarLayout;
.super Lcom/android/launcher3/InsettableFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/widget/NTDockSearchBarLayout$a;
    }
.end annotation


# static fields
.field public static final k:Lcom/nothing/launcher/widget/NTDockSearchBarLayout$a;


# instance fields
.field private g:Landroid/view/View;

.field private final h:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

.field private final i:Landroid/appwidget/AppWidgetManager;

.field private final j:Lcom/android/launcher3/InvariantDeviceProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/widget/NTDockSearchBarLayout$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/widget/NTDockSearchBarLayout$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->k:Lcom/nothing/launcher/widget/NTDockSearchBarLayout$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    new-instance v0, Lcom/nothing/launcher/widget/c;

    invoke-direct {v0, p1}, Lcom/nothing/launcher/widget/c;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/nothing/launcher/widget/b;

    invoke-direct {v1, p0}, Lcom/nothing/launcher/widget/b;-><init>(Lcom/nothing/launcher/widget/NTDockSearchBarLayout;)V

    const/16 v2, 0x402

    invoke-direct {p2, p1, v2, v0, v1}, Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;-><init>(Landroid/content/Context;ILcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;Lcom/android/launcher3/qsb/QsbContainerView$WidgetProvidersUpdateCallback;)V

    invoke-virtual {p2}, Landroid/appwidget/AppWidgetHost;->startListening()V

    iput-object p2, p0, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->h:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p2

    iput-object p2, p0, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->i:Landroid/appwidget/AppWidgetManager;

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->j:Lcom/android/launcher3/InvariantDeviceProfile;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Landroid/content/Context;)Lcom/android/launcher3/qsb/QsbWidgetHostView;
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->d(Landroid/content/Context;Landroid/content/Context;)Lcom/android/launcher3/qsb/QsbWidgetHostView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/nothing/launcher/widget/NTDockSearchBarLayout;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->e(Lcom/nothing/launcher/widget/NTDockSearchBarLayout;)V

    return-void
.end method

.method private final c()Landroid/view/View;
    .locals 2

    invoke-direct {p0}, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->getGoogleSearchWidgetView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->getDefaultView()Landroid/view/View;

    move-result-object v0

    const-string p0, "NTDockSearchBarLayout"

    const-string v1, "createQsb: using default view"

    invoke-static {p0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private static final d(Landroid/content/Context;Landroid/content/Context;)Lcom/android/launcher3/qsb/QsbWidgetHostView;
    .locals 0

    const-string p1, "$context"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/nothing/launcher/widget/f;

    invoke-direct {p1, p0}, Lcom/nothing/launcher/widget/f;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method private static final e(Lcom/nothing/launcher/widget/NTDockSearchBarLayout;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "NTDockSearchBarLayout"

    const-string v1, "WidgetProvidersUpdateCallback.onProvidersUpdated"

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->f()V

    return-void
.end method

.method private final f()V
    .locals 3

    iget-object v0, p0, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->g:Landroid/view/View;

    invoke-direct {p0}, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iput-object v1, p0, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->g:Landroid/view/View;

    return-void
.end method

.method private final g(II)V
    .locals 1

    if-eq p1, p2, :cond_0

    sget-object p1, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/launcher3/LauncherPrefs$Companion;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "qsb_widget_id"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private final getDefaultView()Landroid/view/View;
    .locals 1

    sget-object v0, Lcom/nothing/launcher/widget/f;->g:Lcom/nothing/launcher/widget/f$a;

    invoke-virtual {v0, p0}, Lcom/nothing/launcher/widget/f$a;->c(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final getGoogleSearchWidgetView()Landroid/view/View;
    .locals 11

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lm4/a;->a(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v6

    const/4 v0, 0x0

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->getWidgetId()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->j:Lcom/android/launcher3/InvariantDeviceProfile;

    const-string v4, "idp"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v6, v3}, Lm4/a;->b(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Lcom/android/launcher3/InvariantDeviceProfile;)Landroid/os/Bundle;

    move-result-object v7

    iget-object v2, p0, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->i:Landroid/appwidget/AppWidgetManager;

    const-string v3, "widgetManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v8, v6}, Lb3/b;->a(Landroid/appwidget/AppWidgetManager;ILandroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v2

    const-string v9, "NTDockSearchBarLayout"

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->h:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->i:Landroid/appwidget/AppWidgetManager;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    move v5, v8

    invoke-static/range {v2 .. v7}, Lb3/p;->b(Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->g:Landroid/view/View;

    const-string v0, "getGoogleSearchWidgetView: widget id is valid and get the view from host successfully"

    invoke-static {v9, v0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->g:Landroid/view/View;

    move-object v0, p0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->h:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    invoke-static {v2, v8}, Lb3/p;->d(Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;I)I

    move-result v10

    iget-object v2, p0, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->i:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v6}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v4

    iget-object v5, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, v10, v4, v5, v7}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->h:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->i:Landroid/appwidget/AppWidgetManager;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    move v5, v10

    invoke-static/range {v2 .. v7}, Lb3/p;->b(Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->g:Landroid/view/View;

    const-string v0, "getGoogleSearchWidgetView: widget id is invalid and create new view from host successfully"

    invoke-static {v9, v0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->g:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->h:Lcom/android/launcher3/qsb/QsbContainerView$QsbWidgetHost;

    invoke-virtual {v1, v10}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    const/4 v10, -0x1

    const-string v1, "getGoogleSearchWidgetView: widget id is invalid and failed to create new view"

    invoke-static {v9, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v8, v10}, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->g(II)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method private final getWidgetId()I
    .locals 2

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherPrefs$Companion;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "qsb_widget_id"

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->f()V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 3

    iget-object p1, p0, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->j:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lj3/a;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->widgetPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    sget-object v2, Ln5/t;->a:Ln5/t;

    :cond_1
    if-nez v2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setInsets: there is something wrong, the layoutParams is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NTDockSearchBarLayout"

    invoke-static {p1, p0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
